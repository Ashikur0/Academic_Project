<?php

    if(isset($_POST["email"]) && isset($_POST["password"]))
    {
        
		$email = $_POST['email'];
        $password_new = $_POST['password'];

        $u_type = $_POST['user_type'];
        $selectedUser = "user";

            
        if($u_type == "User")
        {
            $selectedUser = "user";
        }
        else{
            $selectedUser = "owner";
        }
        

       // echo "Searching Location:::".$u_eamil."<br> <br> <br>";

        $user = 'root';
		$password = '';
		$database = 'car_parking_system_project';

		$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');


        if($u_type == "User")
        {
        $qry = "select * from `".$selectedUser."` where `User_Email` = "."\"".$email."\" && ".
                    "Password = \"".$password_new."\"";
                    
                    $result = $database_connect->query($qry) or die ('bad query');

                    if($result->num_rows > 0)
                    {
                        $user = $result->fetch_assoc();
            
                        session_start();
                        $_SESSION["email"] = $user["User_Email"];
                        $_SESSION["dln"] = $user["Driving_Licence_Number"]; 
                        header("Location: "."search_page.php");
                    }
        }

        else{
            // Owner
            $qry = "select * from `".$selectedUser."` where `Owner_Email` = "."\"".$email."\" && ".
                    "Password = \"".$password_new."\"";

                    $result = $database_connect->query($qry) or die ('bad query');

                    if($result->num_rows > 0)
                    {
                        $owner = $result->fetch_assoc();
            
                        session_start();
                        $_SESSION["email"] = $owner["owner_Email"]; 
                        header("Location: "."page_owner.php");
                    }
        }
       
    }
    
?>
