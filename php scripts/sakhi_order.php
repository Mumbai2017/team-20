<?php
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "sanisa";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$q=mysqli_query($con,"insert into sg_order values(3,1,"10")");
if(mysqli_query($con,$q))
		 {
			$resultOfQuery = 1;
		 }
		 else
		 {
			 $resultOfQuery = 0;
		 }
		 return $resultOfQuery;

echo json_encode($resultOfQuery);
?>