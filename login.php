<?php
require "DataAccess.php";

switch ($_POST['fun'])
{
	case "login":
	login($_POST['username'],$_POST['password']);
	break;
}


function login($username, $password)
{
	$Data = new DataAccessLayer;
	$Data -> connection();
	$query = "select * from login where userid='$username' and password='$password';";
	$result = $Data -> select($query);
	if(mysqli_num_rows($Data -> select($query))>0)
	{
		echo "Login successfull";
	}
	else
	{ 
		echo "Login Failed.Try Again...";
	}
}

?>