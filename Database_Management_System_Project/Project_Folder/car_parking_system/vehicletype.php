<?php
	session_start();

	$email = "";
	if(isset($_GET["owner"]))
	{
		$email = $_GET["owner"];
		$ps = $_GET["ps"];
	}

	if($email =="")
	{
		header("Location: ". "search_page.php");
	}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Car Parking System :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Car Parking System,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Niconne&amp;subset=latin-ext" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Reem+Kufi&amp;subset=arabic" rel="stylesheet">
<!-- //web font -->
</head>


<body>


	
	<!-- main -->
	<div class="main-agilerow">
		<div class="sub-w3lsright agileits-w3layouts">
			<p style="color: white"> <?php echo $_SESSION["email"]; ?> </p>
			<h2>Vehicle Type</h2>
			<form action="book.php" method="post"> 
				<input type="hidden" name="owner" value="<?php echo $email ?> " />
				<input type="hidden" name="ps" value="<?php echo $ps ?> " />
				<input type="submit"  name="car" value="Car" /> 
		    	<input type="submit"  name="moto" value="Motorcycle" /> 				
			</form>
		</div>
		<div class="clear"> </div>
	</div>	
	<!-- //main -->
	
</div>	

<!-- js -->	
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script src="js/jquery.vide.min.js"></script> 
<!-- //js -->

</body>
</html>