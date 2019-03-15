<?php
    if(isset($_POST["search_address"]))
    {

        $s_address = $_POST['search_address'];
        echo "Searching Location:::".$s_address."<br> <br> <br>";

        $user = 'root';
		$password = '';
		$database = 'car_parking_system';

		$database_connect = new mysqli('localhost',$user,$password,$database) or die('unable to connect');

        if ( $s_address = $_POST['search_address'])
        {

            $qry = "SELECT * FROM parking_space, owner WHERE 
                    (owner.Owner_Address LIKE '%".$s_address."%') AND
                    (owner.Owner_Email = parking_space.Owner_Email)";

            $result = $database_connect->query($qry) or die('bad query');

            echo "----------Owner Information---------"."<br> <br> <br>";

            echo "<table style='border: 1px solid black'>";
            echo "<thead>";
                echo "<th>";
                    echo "Name";
                echo "</th>";

                echo "<th>";
                    echo "Address";
                echo "</th>";

                echo "<th>";
                    echo "Email";
                echo "</th>";

                echo "<th>";
                    echo "Contact";
                echo "</th>";

                echo "<th>";
                    echo "PMC";
                echo "</th>";
            echo "</thead>";
            
            while($row = $result->fetch_assoc()) {
               
                echo "<tr>";
                    echo "<td>";
                        echo $row["Owner_Name"];
                    echo "</td>";

                    echo "<td>";
                        echo $row["Owner_Address"];
                    echo "</td>";

                    echo "<td>";
                        echo $row["Owner_Email"];
                    echo "</td>";

                    echo "<td>";
                        echo $row["Contact"];
                    echo "</td>";

                    echo "<td>";
                        echo $row["Per_Month_Cost"];
                    echo "</td>";

                    echo "<td>";
                        echo "<a href = \"http://localhost/car_parking_system/vehicletype.php?owner=".$row["Owner_Email"]."&ps=".$row["Number_Of_Parking_Space"]."\"> Book </a> <br>";
                    echo "</td>";
                echo "</tr>";
            }
            echo "</table>";
        }
        else{
            header("Location: "."search.php");
        }

  

}
else{


    header("Location: ". "login.html");
    }



    
?>
