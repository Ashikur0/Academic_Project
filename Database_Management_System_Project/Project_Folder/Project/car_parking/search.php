<?php
    if(isset($_POST["search_address"]))
    {

        $s_address = $_POST['search_address'];
        echo "Searching Location:::".$s_address."<br> <br> <br>";

        $user = 'root';
		$password = '';
		$database = 'car_parking_system_project';

		$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');

        if ( $s_address = $_POST['search_address'])
        {

            $qry = "SELECT * FROM parking_space, owner WHERE 
                    (owner.Owner_Address LIKE '%".$s_address."%') AND
                    (owner.Owner_Email = parking_space.Owner_Email)";

            $result = $database_connect->query($qry) or die('bad query');

            echo "----------Owner Information---------"."<br> <br> <br>";
            
            while($row = $result->fetch_assoc()) {
                echo $row["Owner_Name"];
                echo $row["Owner_Address"];
                echo $row["Owner_Email"];  
                echo $row["Contact"]."<br>";
            }
        }
        else{
            header("Location: "."search.php");
        }

  

}
else{


    header("Location: ". "login.html");
    }



    
?>
