<?php
    $dbhost = 'localhost';
    $dbuser = 'prod';
    $dbpass = '*miw_nov2017*';
    $dbname = 'tienda';

	$driver = new mysqli_driver();
	$driver->report_mode = MYSQLI_REPORT_STRICT;
	try {
		$link = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
	} catch (mysqli_sql_exception $e) {
		header("Location:error.html");
		exit;
	}
	
?>