<?php
class db
{
var $db_name;
var $mysql_user;
var $mysql_pass;
var $server_name;
var $con;

function getConnection()
{
	$this->db_name = "sanisa";
	$this->mysql_user = "root";
	$this->mysql_pass = "";
	$this->server_name = "localhost";
	
	 $this->con = mysqli_connect($this->server_name,$this->mysql_user,$this->mysql_pass,$this->db_name);
	if(!$this->con)
	{
		echo "Connection error...".mysqli_connect_error();
	}
	else
	{
		echo "";
	}
	return $this->con;
}

}

?>