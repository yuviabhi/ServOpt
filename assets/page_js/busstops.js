
<script type='text/javascript'>

// jQuery
$(document).ready( function () {
  // call functions
  var gmap = initMap();

  getBusRoutes();

  //showBusStops(gmap);
      $("#showBusStops").click(function() {
          var ele = document.getElementById("bus_route");
          var drp_slc_value = ele.options[ele.selectedIndex].value; // return the value
          //var strUser = e.options[e.selectedIndex].text;  //return the text
          var route_no = drp_slc_value.substr(0, drp_slc_value.indexOf('-')); 
          var direction = drp_slc_value.substr(drp_slc_value.indexOf('-')+1); 
          showBusStops(gmap, route_no, direction);
      
    });
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

    // var terminal1 = new google.maps.Marker({
    //           position:  {lat: 22.453853, lng: 88.394704},
    //           map: map,
    //           title: 'Terminal : Kamalgazi'
    //         });

    // var terminal2 = new google.maps.Marker({
    //           position:  {lat: 22.590639, lng: 88.393139},
    //           map: map,
    //           title: 'Terminal : Ultadanga/Hudco II'
    //         });


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

// Fill dropdown of bus routes
 function getBusRoutes(){
      //alert('getBusRoute');
      $.ajax({
                  type: "POST",
                  url: "controller/GetBusRoutesController.php",
                  success: function(data)
                  {
                      //alert(data);
                      helpers.buildDropdown(
                          jQuery.parseJSON(data),
                          $('#bus_route'),
                          '--- Select an option ---'
                      );
                  }
              });

      var helpers =
        {
            buildDropdown: function(result, dropdown, emptyMessage)
            {
                // Remove current options
                dropdown.html('');
                // Add the empty option with the empty message
                dropdown.append('<option value="">' + emptyMessage + '</option>');
                // Check result isnt empty
                if(result != '')
                {
                    // Loop through each of the results and append the option to the dropdown
                    $.each(result, function(k, v) {
                        //alert(k + ":"+v);
                        
                        $.each(jQuery.parseJSON(v), function(m, n){
                            //alert(m + ":"+n.route_no);
                            dropdown.append('<option value="' + n.route_no + '-'+n.direction + '">' + n.route_no + ' '+n.direction + '</option>');
                        });
                        
                    });
                }
            }
        }
 }


//Load all bus stops on map and table at page load
function showBusStops(map, route_no, direction){
    //alert(map);
    $.ajax({
      url: 'controller/GetBusStopsController.php',
      type: 'POST',
      dataType: 'json',
      data: ({route_no: route_no, direction:direction}),
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

                  //i=i+1;
                  var table = document.getElementById("table_busstops");
                  var row = table.insertRow(i+1);
                  var cell0 = row.insertCell(0);
                  var cell1 = row.insertCell(1);
                  var cell2=row.insertCell(2);
                  var cell3=row.insertCell(3);
                
                  cell0.innerHTML =arr[i].stop_id;
                  cell1.innerHTML = arr[i].lat;
                  cell2.innerHTML=arr[i].lon;
                  cell3.innerHTML=arr[i].stop_name;
                  
                  
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

      // make all hidden divs -> visible
      document.getElementById("div_busstops").style.display = "block";
      document.getElementById("div_busstops").style.visibility = "visible";
      document.getElementById("div_addbusstops").style.display = "block";
}



// Insert bus stops information into database
$("#addBusStops").click(function() {
  //alert('a');
  var ele = document.getElementById("bus_route");
  var drp_slc_value = ele.options[ele.selectedIndex].value; // return the value
  var route_no = drp_slc_value.substr(0, drp_slc_value.indexOf('-')); 
  var direction = drp_slc_value.substr(drp_slc_value.indexOf('-')+1);
  var lat = document.getElementById('latclicked').innerHTML;
  var lon = document.getElementById('longclicked').innerHTML;
  var stopname = document.getElementById('busstopname').value;
  var radius = 120;

  

  //alert(lat + ' '+ lon + ' ' + stopname);
  $.ajax({
      url: 'controller/AddBusStopsController.php',
      data: ({lat:lat,
              lon:lon,
              stopname:stopname, 
              route_no: route_no, 
              direction:direction, 
              radius:radius,              
            }),
      type: 'POST',
      dataType: 'text',
      success: function(status){
           alert(status);
      }
      
     });
});

</script>

