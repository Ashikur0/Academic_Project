<?php
	
	if(isset($_POST["user_name"]))
	{
		$user = 'root';
		$password = '';
		$database = 'car_parking_system';

		$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');
		//echo 'done'."<br>";

		$user_name = $_POST ["user_name"];
		$user_email =$_POST["user_email"];
		$password =$_POST["password"];
        $contact =$_POST["contact"];
        $user_address=$_POST["user_address"];
		$driving_licence_number=$_POST["driving_licence_number"];
		$vehicle_name=$_POST["vehicle_name"];
		$vehicle_type=$_POST["vehicle_type"];
        $model=$_POST["model"];
        $licence_number=$_POST["licence_number"];
    
		$sql1 = "INSERT INTO user VALUES('".$user_name."','".$user_address."','".$contact."','".$user_email."','".$driving_licence_number."','".$password."')";
		$database_connect->query($sql1);

		$sql2="INSERT INTO vehicle  VALUES('".$vehicle_name."','".$vehicle_type."','".$model."','".$licence_number."')";
		$database_connect->query($sql2);

		$sql3="INSERT INTO has_vehicle  VALUES('".$licence_number."','".$driving_licence_number."')";
		$database_connect->query($sql3);

		header("Location: "."login.html");

	}
	else{


		header("Location: "."user.html");
	}
?> 






