<?php
header('Access-Control-Allow-Origin: *');
$servername="localhost";
$username="root";
$password="";
$dbname="sanisa";
$conn=mysqli_connect($servername,$username,$password,$dbname);

if(!$conn)
{
    mysqli_connect_error();
}
else
{
    $firstname=$_POST['firstname'];
    $lastname=$_POST['lastname'];
    $address=$_POST['address'];
    $phone=$_POST['phone'];
    $email=$_POST['email'];
    $password=$_POST['password'];
    $sql="INSERT INTO student (firstname,lastname,address,phone,emailid,password) VALUES ('$firstname','$lastname','$address','$phone','$email','$password')";
    if(mysqli_query($conn,$sql))
    {
        echo "correct";
    }
    else
    {
        echo "incorrect";
    }
}
mysqli_close($conn);
?>