<?php

$servername = "localhost";
$username = "root";
$password = "root";
$dbname = "guest";

require("Dbconfig_1.php");

$link = mysqli_connect("localhost", "root", "root", "guest") or die($link);

if ($_SERVER["REQUEST_METHOD"]==="POST") 
    {
    
    $user_name 		= mysqli_real_escape_string($link,$_POST['user_name']);
    //filter_input(INPUT_POST, 'user_name');
    //$name = mysqli_real_escape_string($link, $_POST['name']);
    $user_email 	= mysqli_real_escape_string($link,$_POST['user_email']);
    $user_password 	= mysqli_real_escape_string($link,$_POST['password']);
    $joining_date 	= date('Y-m-d H:i:s');
	
    
	//password_hash see : http://www.php.net/manual/en/function.password-hash.php
	$password 	= password_hash( $user_password, PASSWORD_BCRYPT, array('cost' => 11));
	
    try
    {
        /*$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE user_email=:email");
        $stmt->execute(array(":email"=>$user_email));
        $count = $stmt->rowCount();*/
		$count=0;
        if($count==0){
            $stmt = $conn->prepare("INSERT INTO tbl_users(user_name,user_email,user_password,joining_date) VALUES(?,?,?,?)");
            //$stmt->bind_param("sssi", $_POST['user_name'], $_POST['user_email'], $_POST['password'], $_POST['joining_date']);
            $stmt->bindParam("sssi", $_POST['user_name'], $_POST['user_email'], $_POST['password'], $_POST['joining_date']);
           /*$stmt->bindParam(":uname",$user_name);
            $stmt->bindParam(":email",$user_email);
            $stmt->bindParam(":pass",$password);
            $stmt->bindParam(":jdate",$joining_date);*/
            $stmt->execute();
           /* if($stmt->execute())
            {
                echo "registered";
            }
            else
            {
                echo "Query could not execute !";
            }*/

        }
        else{

            echo "1"; //  not available
        }

    }
    catch(PDOException $e){
        echo $e->getMessage();
    }
}

?>