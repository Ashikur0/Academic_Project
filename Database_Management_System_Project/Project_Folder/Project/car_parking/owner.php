<?php
	
	if(isset($_POST["owner_name"]))
	{
		$user = 'root';
		$password = '';
		$database = 'car_parking_system_project';

		$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');
		//echo 'done'."<br>";

		$owner_name = $_POST ["owner_name"];
		$owner_email =$_POST["owner_email"];
		$password =$_POST["password"];
		$contact =$_POST["contact"];
		$owner_address=$_POST["owner_address"];
		$per_month_cost=$_POST["per_month_cost"];
		$private_car_capacity=$_POST["private_car_capacity"];
		$motorcycle_capacity=$_POST["motorcycle_capacity"];
    
		$lat=0;
		$lon=0;
		$allocCar = 0;
		$allocMoto = 0;

		$sql1 = "INSERT INTO `owner` VALUES ('".$owner_name."','".$owner_address."','".$contact."','".$owner_email."','".$password."')";
		$database_connect->query($sql1);

		$sql2="INSERT INTO `parking_space`(Owner_Email,Per_Month_Cost,Latitude,Longitude)  VALUES ('".$owner_email."','".$per_month_cost."','".$lat."','".$lon."')";
		$database_connect->query($sql2);

		$sql3 = "INSERT INTO `capacity`(Owner_Email,Private_Car_Capacity,MotorCycle_Capacity,Private_Car_Allocated,MotorCycle_Allocated) VALUES ('".$owner_email."','".$private_car_capacity."','".$motorcycle_capacity."',".$allocCar.",".$allocMoto.")"; 
		$database_connect->query($sql3);

        echo ("Registration Sucessfull.!!!");
		header("Location: ". "login.html");
	}
	else{

		echo ("Registration Fail.!!!");
		header("Location: ". "login.html");
	}
?> 






