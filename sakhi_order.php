<?php
header('Access-Control-Allow-Origin: *');

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sanisa";
$sakhi_id = 2;
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
else
{
$quantity=$_POST['qty'];
    $flavor=$_POST['flavor'];
//$data=array();
$q=mysqli_query($conn, "insert into sg_order(sid,pid,quantity) values('$sakhi_id',1,'10')select flavor,quantity from product p JOIN sakhi_stock ss on p.id=ss.pid WHERE ss.sid='$sakhi_id'");
/*while ($row=mysqli_fetch_object($q)){
    $data[]=$row;
}*/

echo json_encode($data);
}
?>

<!--

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$q=mysqli_query($conn,"insert into sg_order(sid,pid,quantity) values(1,1,'10')");

if($q)
		 //{
			$resultOfQuery = 1;
		 }
		 else
		 {
			 $resultOfQuery = 0;
		 }
		 return $resultOfQuery;

echo json_encode($resultOfQuery);
?>-->