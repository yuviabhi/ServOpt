<?php

	$lat = $_POST['lat'];
	$lon = $_POST['lon'];
	$stopname = $_POST['stopname'];
  $route_no = $_POST['route_no'];
  $direction = $_POST['direction'];
  $radius = $_POST['radius'];

  // $lat = '22.53636885170191';
  // $lon = '88.39875857777906';
  // $stopname = 'ALL';
  // $route_no = 'AC 14';
  // $direction = 'DN';
  // $radius = 120;
	
  $route_no = preg_replace('/\s+/', '-', $route_no);
	//$cmd = "C:\\Python27\\python.exe C:\\xampp\\htdocs\\ServOpt\\py_scripts\\addbusstop.py" .' '. $lat . ' '. $lon . ' ' .$stopname . ' '. $route_no .' '.$direction . ' '.$radius;
  $cmd = "C:\\Python27\\python.exe C:\\wamp\\www\\ServOpt\\py_scripts\\addbusstop.py" .' '. $lat . ' '. $lon . ' ' .$stopname . ' '. $route_no .' '.$direction . ' '.$radius;
	// echo $cmd;
	exec($cmd, $output, $return);  
	//echo $output[0];
	//print_r($output[3]);
	//echo $return;
	if ($return == 0)  {
		echo 'Success '. $output[0];
	} 
	elseif ($return != 0) {
		# code...
		echo 'Error';
	}

  	

?>