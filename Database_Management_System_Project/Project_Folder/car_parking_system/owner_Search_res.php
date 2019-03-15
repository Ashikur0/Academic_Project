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

            $qry = "SELECT * FROM parking_space, owner,capacity WHERE 
                    (owner.Owner_Address LIKE '%".$s_address."%') AND
                     (owner.Owner_Email = parking_space.Owner_Email) AND (owner.Owner_Email = capacity.Owner_Email)";

            $result = $database_connect->query($qry) or die('bad query');

            echo "----------Parking_Space Information---------"."<br> <br> <br>";

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
                    echo "P Car Capacity";
                echo "</th>";

                echo "<th>";
                    echo "P Car Allocated";
                echo "</th>";

               echo "<th>";
                   echo "MotorCycle Capacity";
               echo "</th>";

              echo "<th>";
                  echo "MotorCycle Allocated";
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

                    echo "<th>";
                        echo $row["Private_Car_Capacity"];
                    echo "</th>";

                    echo "<th>";
                          echo $row["Private_Car_Allocated"];
                    echo "</th>";

                    echo "<th>";
                           echo $row["MotorCycle_Capacity"];
                     echo "</th>";

                     echo "<th>";
                             echo $row["MotorCycle_Allocated"];
                     echo "</th>";



                echo "</tr>";
            }
            echo "</table>";
            
            
        }
        else{
            header("Location: "."page_own.php");
        }

  

}
else{


    header("Location: ". "login.html");
    }



    
?>
