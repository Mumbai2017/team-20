
<?php
session_start();
include("Dbconfig_1.php");

// Get values from form 
$name=$_POST['user_name'];
$lastname=$_POST['user_email'];
$email=$_POST['password'];
$joining_date 	= date('Y-m-d H:i:s');

// Insert data into mysql 
$sql="INSERT INTO $tbl_name(name, lastname, email)VALUES('$name', '$lastname', '$email')";
$result=mysql_query($sql);

// if successfully insert data into database, displays message "Successful". 
if($result){
echo "Successful";
echo "<BR>";
echo "<a href='insert.php'>Back to main page</a>";
}
?>