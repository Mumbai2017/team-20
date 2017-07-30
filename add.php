<?php
//session_start();
$mysql_hostname = "localhost";
$mysql_user = "root";
$mysql_password = "";
$mysql_database = "demo";
$bd = mysqli_connect($mysql_hostname, $mysql_user, $mysql_password) or die("Opps some thing went wrong");
mysqli_select_db($mysql_database, $bd) or die("Opps some thing went wrong");

if(isset($_POST['submit']))
{
 $order=$_POST['qty'];
 $flavour=$_POST['s1'];
 $sql = "SELECT quantity FROM sakhi where flavour='$flavour'";
$result = mysqli_query($sql);
$var=$result+$order;

 $sql="UPDATE  sakhi SET  ordered='$var' WHERE  flavour='$flavour'";
$result=mysqli_query($sql) or die(mysql_error());
	
}
?>
