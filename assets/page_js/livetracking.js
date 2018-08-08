
<script type='text/javascript'>

// jQuery
$(document).ready( function () {
  // call functions
  initMap();
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
}


</script>

