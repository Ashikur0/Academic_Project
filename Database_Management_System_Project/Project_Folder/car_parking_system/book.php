<?php

session_start();

$status = "P";

$owner = $_POST["owner"];
$ps = $_POST["ps"];

$sql = "INSERT INTO `booking`(`Number_Of_Parking_Space`,`Owner_Email`, `Driving_Licence_Number`, `Status`) VALUES(".$ps.",\"".$owner."\",\"".$_SESSION["dln"]."\",\"".$status."\")";
echo "Booking SuccessFull!!";
echo $sql;

header("Location: "."login.html");

$user = 'root';
$password = '';
$database = 'car_parking_system';

$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');

$database_connect->query($sql);

$sqlTwo = "SELECT * FROM `capacity` WHERE Owner_Email=\"".$owner."\"";
$res = $database_connect->query($sqlTwo);
$row = $res->fetch_assoc();

$carCap = $row["Private_Car_Capacity"];
$motoCap = $row["MotorCycle_Capacity"];
$carAllo = $row["Private_Car_Allocated"];
$motoAllo = $row["MotorCycle_Allocated"];

if(isset($_POST["car"]))
{
    $updateCar = "UPDATE `capacity` SET Private_Car_Allocated=".($carAllo+1)." WHERE Owner_Email=\"".$owner."\"";
    $database_connect->query($updateCar);
    
}
else if(isset($_POST["moto"])){
    $updateCar = "UPDATE `capacity` SET MotorCycle_Allocated=".($motoAllo+1)." WHERE Owner_Email=\"".$owner."\"";
    $database_connect->query($updateCar);
}


?>