<?php
$link = mysqli_connect("localhost", "root", "root", "demo");

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
$first_name = mysqli_real_escape_string($link, $_POST['user_name']);
$last_name = mysqli_real_escape_string($link, $_POST['user_email']);
$email_address = mysqli_real_escape_string($link, $_POST['password']);
$joining_date 	= date('Y-m-d H:i:s');
// attempt insert query execution
$sql = "INSERT INTO tbl_users(user_name,user_email,user_password,joining_date) VALUES('$first_name', '$last_name', '$email_address','$joining_date')";
//"INSERT INTO persons (first_name, last_name, email_address) VALUES ()";
if(mysqli_query($link, $sql)){
    echo "Records added successfully.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 
// close connection
mysqli_close($link);
?>