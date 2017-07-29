<?php
require "DataAccess.php";

function submit_button()
{
	$Data = new DataAccessLayer;
	$Data -> connection();
	$userid = $_POST['userid'];
	$firstname = $_POST['firstname'];
	$middlename = $_POST['middlename'];
	$lastname = $_POST['lastname'];
	//$landline = $_POST['phone'];
	$mobile = $_POST['phone2'];
	$email = $_POST['email'];
	$smspermission = 0;
	$password = $_POST['password'];
	$type = $_POST['role'];
	$status = 'approved';
	$Data -> begin();
	$query = "insert into admin_user(userid,firstname,middlename,lastname,mobile,email,smspermission) values 
	('$userid','$firstname','$middlename','$lastname','$mobile','$email','$smspermission');";
	$value = $Data -> insert($query);
	$query = "insert into login(userid,password,role,status) values('$userid','$password','$type','$status');";
	$value1 = $Data -> insert($query);
	if($value and $value1)
	{
		$Data -> commit();
		$queryStatus = 1;
	}
	else
	{
		$Data -> rollback();
		$queryStatus =0;
	}
}
function uploadStatus()
{
	
}

	if(isset($_POST['RegistrationSubmitButton']))
	{
		submit_button();
	}
?>