<?php

	$lat = $_POST['lat'];
	$lon = $_POST['lon'];
	$stopname = $_POST['stopname'];
	

  	//exec("python py_scripts/first.py", $output);
  	$cmd = "C:\\Python27\\python.exe C:\\xampp\\htdocs\\ServOpt\\py_scripts\\addbusstop.py" .' '. $lat . ' '. $lon . ' ' .$stopname;
  	//echo $cmd;
  	exec($cmd, $output, $return);  
  	//echo $output[0];
  	//print_r($output[3]);
  	//echo $return;
  	if ($return == 0)  {
  		echo 'Success '. $output[3];
  	} 
  	elseif ($return != 0) {
  		# code...
  		echo 'Error';
  	}

  	


	//echo "{"val2": true, "val1": "this is x"}"
	//echo 'True'
?>