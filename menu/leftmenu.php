<?php 

$actual_link = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; 
$escaped_url = htmlspecialchars( $actual_link, ENT_QUOTES, 'UTF-8' );
$lastIndex = strripos($escaped_url, '/');
$url = substr($escaped_url, $lastIndex+1);
// echo $url;
?>

<div class="section-left col-sm-2 sidenav">
      <div class="list-group">
		  <a href="livetracking.php" class="list-group-item">VTS</a>
		  <a href="#" class="list-group-item">ETS</a>
		  <a href="busstops.php" class="list-group-item">Bus Stops</a>
      </div>
</div>	