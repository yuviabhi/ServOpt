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
      <h1>Vehicle Live Tracking</h1>
      <div id="map"></div>


    </div>

    <!--  Right Section -->
    <div id="section-right" class="col-sm-2 sidenav">
      <div class="well">
        <p>Depot Name</p>
        <select name="formDepot">
          <option value="">Select...</option>
          <option value="M">Garia Depot</option>
          <option value="F">Maniktala Depot</option>
        </select>
      </div>
      <div class="well">
        <p>Route No.</p>
        <select name="formRoute">
          <option value="">Select...</option>
          
        </select>
      </div>
      <div class="well">
        <p>Vehicle No.</p>
        <select name="formVehicle">
          <option value="">Select...</option>
          
        </select>
      </div>
      <div >
        <!-- <div class="btn btn-error">Start Tracking</div> -->
        <button class="button button-circular">Start Tracking</button>
        
      </div>
    </div>
  </div>
</div>


<!-- Footer Section -->

  <?php include 'menu/footer.php';?>


<?php include 'assets/page_js/livetracking.js';?>


   
<!-- <script>
function showMap() {
var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.12),
    zoom: 10,
    
}
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBAVIYfvwZwVpVBZpNwdgk2atWMSj8quKY&callback=showMap"></script>  -->

</body>
</html>
