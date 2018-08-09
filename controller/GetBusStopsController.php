<?php


  	//exec("python py_scripts/first.py", $output);
  	$cmd = "C:\\Python27\\python.exe C:\\xampp\\htdocs\\ServOpt\\py_scripts\\getbusstops.py";
  	exec($cmd, $output, $return);  
  	if ($return == 0)  {
  		echo json_encode($output);
  	} 
  	elseif ($return != 0) {
  		echo 'Error';
  	}


?>