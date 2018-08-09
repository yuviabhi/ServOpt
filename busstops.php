<!DOCTYPE html>
<html lang="en">
<!-- All Header Includes Section  -->
<?php include 'menu/header.php';?>



<body>


<!-- Top Navigation Section  -->
<?php include 'menu/topmenu.php';?>

  
<div class="container-fluid text-center">    
  <div class="row content">

    <!-- Left Section -->
    <?php include 'menu/leftmenu.php';?>

    <!-- Main Content Section *-->
    <div id="section-main" class="col-sm-7 text-left"> 
      <h1>Bus Stops Informations</h1>
      <div id="map"></div>
      <div>
        <span>Present co-ordinates :</span>
        <span id="latmoved"></span>
        <span id="longmoved"></span>
      </div>


    </div>

    <!--  Right Section -->
    <div id="section-right" class="col-sm-3 sidenav">
      
      <div class="well">
        <p>Select Bus Route :</p>
        <select class="form-control" name="bus_route">
          <option value="">Select...</option>
          <option value="">S37A</option>
          <option value="">S24</option>
          <option value="">AC37A</option>
        </select>
        <button id="showBusStops" class="btn btn-default">Show</button>  
        
      </div>

      <div class="well">
        <p>Latitude</p>
        <div id="latclicked"></div>
        <!-- <input type="text" class="form-control" id="latclicked" disabled> -->
        <p>Longitude</p>
        <div id="longclicked"></div>
        <div class="form-group">
          <label for="busstopname">Bus Stop Name</label>
          <input type="text" class="form-control" id="busstopname">
        </div>
        <div >
          <button id="addBusStops" class="btn btn-default">Add</button>        
        </div>        
      </div>

      <div id="div_busstops" class="well"  style="visibility: hidden; overflow:scroll;height:250px;">
        <table id="table_busstops" class="table" border="1">
          <tr>
            <th>ID</th>
            <th>Lat</th>
            <th>Lon</th>
            <th>Name</th>
          </tr>
        </table>

      </div>


      

      <div >

      </div>
    </div>
  </div>
</div>


<!-- Footer Section -->

  <?php include 'menu/footer.php';?>


<?php include 'assets/page_js/busstops.js';?>



</body>
</html>
