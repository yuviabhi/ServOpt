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
    <div id="section-main" class="col-sm-5 text-left"> 
      <h1>Bus Stops Informations</h1>
      <div id="map"></div>
      <div>
        <span><b>Present co-ordinates :</b></span>
        <span id="latmoved">0.0</span>
        <span id="longmoved">0.0</span>
      </div>


    </div>

    <!--  Right Section -->
    <div id="section-right" class="col-sm-5 sidenav">
      
      <div class="well">
        <span>Select Bus Route :</span>
        <select class="form-control" name="bus_route" id="bus_route" onselect="">
          <!-- <option value="">Select...</option>
          <option value="">S37A</option>
          <option value="">S24</option>
          <option value="">AC37A</option> -->
        </select>
        <button id="showBusStops" class="btn btn-default">Show</button>          
      </div>


      <div class="well" id="div_busstops" style="display: none; overflow:scroll; height:200px;">
        <table id="table_busstops" class="table" border="1">
          <tr>
            <th>Stop Id</th>
            <th>Lat</th>
            <th>Lon</th>
            <th>Name</th>
          </tr>
        </table>
      </div>

      <div class="well" id="div_addbusstops" style="display: none;">

        <table id="table_busstops" class="table" border="1">
          <tr>
            <th>Latitude</th>
            <th>Longitude</th>
            <th>Bus Stop Name</th>
          </tr>
          <tr>
            <td><span id="latclicked"></span></td>
            <td><span id="longclicked"></span></td>
            <td><input type="text" class="form-control" id="busstopname"></td>
          </tr>
        </table>
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
