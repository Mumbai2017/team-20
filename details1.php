<?php
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "12345";
$dbname = "practice";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$data=array();
$q=mysqli_query($con,"select * from 'course'");
while ($row=mysqli_fetch_object($q)){
 $data[]=$row;
}

echo json_encode($data);
?>