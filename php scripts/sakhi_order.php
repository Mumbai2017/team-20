<?php
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sanisa";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$q=mysqli_query($conn,"insert into sg_order(sid,pid,quantity) values(1,1,'10')");

if($q)
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