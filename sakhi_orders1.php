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
<<<<<<< HEAD
$q=mysqli_query($conn, "select name,address,contact_no,flavor,quantity from customer c JOIN c_order co on c.id=co.cid JOIN product p on co.pid=p.id );
=======
$q=mysqli_query($conn, "select name,address,contact_no,flavor,quantity from customer c JOIN c_order co on c.id=co.cid JOIN product p on co.pid=p.id ");
>>>>>>> 36fdfa7793eb444b9d8255902d4bf0b9ebb6ddcc
while ($row=mysqli_fetch_object($q)){
    $data[]=$row;
}

echo json_encode($data);
?>