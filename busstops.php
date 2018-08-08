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
    <div id="section-main" class="col-sm-8 text-left"> 
      <h1>Bus Stops Informations</h1>
      <div id="map"></div>


    </div>

    <!--  Right Section -->
    <div id="section-right" class="col-sm-2 sidenav">
      
      <div class="well">
        <p>Present co-ordinates :</p>
        <div id="latmoved"></div>
        <div id="longmoved"></div> 
      </div>

      <div class="well">
        <p>Latitude</p>
        <div id="latclicked"></div>        
      </div>

      <div class="well">
        <p>Longitude</p>
        <div id="longclicked"></div>
      </div>

      <div class="well">
        <div class="form-group">
          <label for="busstop">Bus Stop Name</label>
          <input type="text" class="form-control" id="busstop">
        </div>
      </div>

      <div >
        <button id="addBusStops" class="btn btn-default">Add</button>        
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
