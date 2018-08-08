
<script type='text/javascript'>

// jQuery
$(document).ready( function () {
  // call functions
  var gmap = initMap();

  showBusStops(gmap);
});


function initMap() {

    var latitude = 22.525312; // YOUR LATITUDE VALUE
    var longitude = 88.395806; // YOUR LONGITUDE VALUE
    var myLatLng = {lat: latitude, lng: longitude};

    var mapOptions = {
        center: myLatLng,
        zoom: 11,
        
    }
    var map = new google.maps.Map(document.getElementById("map"), mapOptions);

    var terminal1 = new google.maps.Marker({
              position:  {lat: 22.453853, lng: 88.394704},
              map: map,
              title: 'Terminal : Kamalgazi'
            });

    var terminal2 = new google.maps.Marker({
              position:  {lat: 22.590639, lng: 88.393139},
              map: map,
              title: 'Terminal : Ultadanga/Hudco II'
            });


    // Update lat/long value of div when anywhere in the map is clicked
    google.maps.event.addListener(map,'click',function(event) {
        document.getElementById('latclicked').innerHTML = event.latLng.lat();
        document.getElementById('longclicked').innerHTML =  event.latLng.lng();

        var marker = new google.maps.Marker({
          position: event.latLng,
          map: map,
          title: event.latLng.lat()+', '+event.latLng.lng()
        });
         //markers.push(marker);

    });

    // Update lat/long value of div when you move the mouse over the map
    google.maps.event.addListener(map,'mousemove',function(event) {
        document.getElementById('latmoved').innerHTML = event.latLng.lat();
        document.getElementById('longmoved').innerHTML = event.latLng.lng();
    });

    return map;
  
}


//Load all bus stops on map at page load
function showBusStops(map){
    //alert(map);
    $.ajax({
      url: 'controller/GetBusStopsController.php',
      type: 'POST',
      dataType: 'json',
      success: function(data){
           //alert(data);
           var arr = JSON.parse(data);
           //alert(arr);
           var infowindow=[];
           var marker=[];
           for(var i = 0; i < arr.length; i++) {
                  
                  //alert(arr[i].stop_name);
                  
                  // infowindow[i] = new google.maps.InfoWindow({
                  //      content: arr[i].stop_id + arr[i].stop_name
                  //  });

                  marker[i] = new google.maps.Marker({
                          title: arr[i].stop_id + arr[i].stop_name,
                          animation: google.maps.Animation.DROP,
                          //animation: google.maps.Animation.BOUNCE,  
                          map: map,                      
                          position: new google.maps.LatLng(arr[i].lat, arr[i].lon)
                      });

                   // google.maps.event.addListener(marker[i], 'click', function() {
                   //    infowindow[i].open(map,this);
                   // });
                  
                  
          }

           // var json = data;
           // for (var key in json) {
           //    alert(json[key].value);
           //    if (json.hasOwnProperty(key)) {
           //      alert(json[key].stop_id);
           //      alert(json[key].stop_name);
           //    }
           //  }
      }
     });


}



// Insert bus stop information into database
$("#addBusStops").click(function() {
  //alert('a');
  var lat = document.getElementById('latclicked').innerHTML;
  var lon = document.getElementById('longclicked').innerHTML;
  var stopname = document.getElementById('busstop').value;
  //alert(lat + ' '+ lon + ' ' + stopname);
  $.ajax({
      url: 'controller/AddBusStopsController.php',
      data: ({lat:lat,
              lon:lon,
              stopname:stopname}),
      type: 'POST',
      dataType: 'text',
      success: function(data1){
           alert(data1);
      }
     });
});

</script>

