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

$data=array();
$q=mysqli_query($conn, "select cid, name,address,contact_no,flavor,quantity from customer c JOIN c_order co on c.id=co.cid JOIN product p on co.pid=p.id ");
while ($row=mysqli_fetch_object($q)){
    $data[]=$row;
}

echo json_encode($data);
?>