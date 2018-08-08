<html>
    <head>
        <title>Google Map</title>
        <meta name="viewport" content="initial-scale=1.0">
        <meta charset="utf-8">
        <style>
          #map {
            height: 80%;
            width:100%;
          }
          table,th,td{
            border: 1px solid black;
            border-collapse: collapse;

          }


          #div1,#div2,#div3,#div4,#div5{position:relative;}

        </style>
    </head>
    <body>
      <script>var lastplacename="";</script>
      <div><p>Last co-ordinates updated:</p>
        <div id="latclicked"></div>
        <div id="longclicked"></div> </div>


      <div><p>Present co-ordinates:</p>
        <div id="latmoved"></div>
        <div id="longmoved"></div>

        <div style="padding:10px">
            <div id="map"></div>
        </div>
      </div>

<div id="div1">

  Enter the name of the next bus stop you are planning to update:<br><br>
  <input type="text" name="place_name" id="placename" >

<button  onclick="updatebustopname()">Confirm<button>
</div>
        <script type="text/javascript">
        var map;
        var markers=[];
        var i=1;

        function initMap() {
            var latitude = 22.525312; // YOUR LATITUDE VALUE
            var longitude = 88.395806; // YOUR LONGITUDE VALUE

            var myLatLng = {lat: latitude, lng: longitude};

            map = new google.maps.Map(document.getElementById('map'), {
              center: myLatLng,
              zoom: 11,
              disableDoubleClickZoom: true, // disable the default map zoom on double click
            });

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
                i=i+1;
                var table = document.getElementById("UPTable");
                var row = table.insertRow(i);
                var cell0 = row.insertCell(0);
                var cell1 = row.insertCell(1);
                var cell2=row.insertCell(2);
                var cell3=row.insertCell(3);
              //  document.getElementById('askplace').innerHTML=writeaskplace();
                cell0.innerHTML =i;
                cell1.innerHTML = event.latLng.lat();
                cell2.innerHTML=event.latLng.lng();
                cell3.innerHTML=lastplacename;


                var marker = new google.maps.Marker({
                  position: event.latLng,
                  map: map,
                  title: event.latLng.lat()+', '+event.latLng.lng()
                });

                 markers.push(marker);


            });

            // Update lat/long value of div when you move the mouse over the map
            google.maps.event.addListener(map,'mousemove',function(event) {
                document.getElementById('latmoved').innerHTML = event.latLng.lat();
                document.getElementById('longmoved').innerHTML = event.latLng.lng();
            });
  //document.getElementById('UPcell1').innerHTML=event.latLng.lat();
  //document.getElementById('UPcell2').innerHTML=event.latLng.lat();


            // Update lat/long value of div when the marker is clicked
            marker.addListener('click', function(event) {
              document.getElementById('latclicked').innerHTML = event.latLng.lat();
              document.getElementById('longclicked').innerHTML =  event.latLng.lng();
            });

            // Create new marker on double click event on the map
        /*    google.maps.event.addListener('dblclick',function(event) {
                var marker = new google.maps.Marker({
                  position: event.latLng,
                  map: map,
                  title: event.latLng.lat()+', '+event.latLng.lng()
                });

                // Update lat/long value of div when the marker is clicked
                marker.addListener('click', function() {
                  i=i+1;
                  document.getElementById('latclicked').innerHTML = event.latLng.lat();
                  document.getElementById('longclicked').innerHTML =  event.latLng.lng();

                });
            }); */

            // Create new marker on single click event on the map
            /*google.maps.event.addListener(map,'click',function(event) {
                var marker = new google.maps.Marker({
                  position: event.latLng,
                  map: map,
                  title: event.latLng.lat()+', '+event.latLng.lng()
                });
            });*/
        }
        </script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBAVIYfvwZwVpVBZpNwdgk2atWMSj8quKY&callback=initMap"
        async defer></script>



        <div id="div2">
        <table id="UPTable" >
          <p> Table for the UP Route:</p>
          <tr>
            <th>Stop ID</th>
            <th>Latitue</th>
            <th>Longitude</th>
            <th>Bus Stop Name</th></tr>
            <tr>
            <td id="UPcell0">1</td>
            <td id="UPcell1">22.453853</td>
            <td id="UPcell2">88.394704</td>
            <td id="UPcell3">Kamalgazi</td></tr>
          </table>

        </div>
        <div id="div3">
          <br>
          <button onclick="DeleteupFunction()">Delete row</button>
           <button onclick="DeleteallupFunction()">Delete all rows</button>


        <button  onclick="finalcalling()">Save Details</button>
<div>

  <div id="div4"></div>

  <div class="container" id="div5">
        <table id="DNTable" >
          <p> Table for the DOWN Route:</p>
          <tr>
            <th>Stop ID</th>
            <th>Latitue</th>
            <th>Longitude</th>
            <th>Bus Stop Name</th>

        </tr>
      </table>
      </div>



      <script>

      function setMapOnAll(map) {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(map);
        }
      }

        function DeleteupFunction()
          {
            document.getElementById("UPTable").deleteRow(i);
            markers[i-2].setMap(null);
            i=i-1;
          }

        function DeleteallupFunction()
          {
            while(i>1)
              {
                document.getElementById("UPTable").deleteRow(i);
                i=i-1;
              }
              setMapOnAll(null);
              markers=[];
          }

      /*    function writeaskplace()
          {
            document.write("Enter the name of the bus-stop-");
            var element = document.createElement("input");

	           //Assign different attributes to the element.
	            element.setAttribute("type", Textbox);
              element.setAttribute("value", "Enter the place name :" );
	            element.setAttribute("name", hi);

          }*/
          function updatebustopname()
            {
              lastplacename=document.getElementById("placename").value;
              //document.write(lastplacename);
            }

            function finalcalling()
            {
              var date=new Date();
              document.getElementById('div4').innerHTML='Table got updated in the backend at ' +date;

            }


      </script>

    </body>
</html>
