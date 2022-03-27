<?php
	include_once 'includes/dbh.inc.php';
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="js/jquery_main_file.js"></script>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/hover.css">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/3.2.89/css/materialdesignicons.min.css">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://aframe.io/releases/1.2.0/aframe.min.js"></script>
	
	<!-- Script for search -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
 
	<!-- jQuery UI for search  -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.css" />
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
 
	<!-- Bootstrap Css for search  -->
	<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">



	<title>UC Night Life - Search</title>
</head>

<body>
	<div class="nav-section">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="index.php"><img src="images/logo.png"></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item active">
						<a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Search <span class="sr-only">(current)</span></a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">About</a>
					</li>
					<li class="nav-item">
						<a class="nav-link clrd" href="#">Contact</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
	<div class="outer-section">
		<h2 style="padding-top: 100px;">
		<div class="container">

		</div>
		</h2>
		
<div class="container">
    
<form action="SearchPage.php" method="post">
  <div class="row">
     <h2>Search Here</h2>
     <input style="border: gray 3px solid ;" type="text" name="search" id="search" placeholder="search here...." class="form-control">  
  </div>
  </form>

</div>


<script type="text/javascript">
  $(function() {
     $( "#search" ).autocomplete({
       source: 'includes/ajax-db-search.php',
     });
  });
</script>


<?php

//sql querry
	
	if (isset($_POST['search'])){
		
		
		$str = $_POST['search'];
		
		
		$sql = "SELECT name,extLinks,intLinks FROM `locationdata` where tags like '%".$str."%'";
		
		$result = mysqli_query($conn, $sql);
		
		if (mysqli_num_rows($result)>0) {
			
			echo"<br>";
			echo"<br>";
			echo"<br>";
			echo"<table style='margin:0 auto;'>";
			echo"<tr>";
			echo"<th>Location</th>";
			echo"<th>Learn more</th>";
			echo"</tr>";
			while($row=mysqli_fetch_array($result)) {
				
				echo"<tr>";
				echo"<td>";
				echo $row['name'];
				echo"</td>";
				echo"<td>";
				echo $row['intLinks'];
				echo "Click here to learn more about ";
				echo $row['name'];
				echo "</a>";
				echo"</td>";
				echo"</tr>";
			}
			
			echo"</table>";
			
		}
		
		
		//$arr_result = mysqli_fetch_all($result, MYSQLI_ASSOC);
		
		//mysqli_free_result($result);
		
		//mysqli_close($conn);
		
	}

?>


<?php 
//error_reporting(0);
//print_r($arr_result);

?>
	</div>
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<ul class="#">
						<li><a href="#">@ 2021 All rights reserved</a></li>
					</ul>
				</div>
				<div class="col-lg-4">
					<ul class="#">
						<li><a href="#">email@mail.uc.edu</a></li>
					</ul>
				</div>
				<div class="col-lg-4">
					<div class="d-flex">
						<ul class="#">
							<li><a href="#">(123) 456-7890</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-4.4.1.slim.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>


</body>

</html>
