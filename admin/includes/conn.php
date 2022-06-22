<?php
	$conn = new mysqli('127.0.0.1:3325', 'root', '', 'apsystem');

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	
?>