<?php
	include 'includes/dbh.inc.php';
	include 'includes/comments.inc.php';
	date_default_timezone_set('America/New_York');
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

	<title>UC Night Life - Results</title>
	
</head>

<?php


			

	$location = htmlspecialchars($_POST['location']);
	
	$descrip = '';
	
	$addr = '';
	
	$sql1 = "SELECT name,addr,lngDescrip FROM `locationdata` where name like '%".$location."%'";
	
	mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
	
	$result1 = mysqli_query($conn, $sql1);
							
	if (mysqli_num_rows($result1)>0) {
		
		//
		
		while($row=mysqli_fetch_array($result1)) {

			$addr = $row['addr'];
			$lngDescrip = $row['lngDescrip'];
			
			
			
			
		}
	
	}
	
	

?>

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
						<a class="nav-link" href="SearchPage.php">Search</a>
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
		<div class="container">
			<div class="text-info">
				<h3><?php echo $location; ?>:</h3>
				<p> 
					<?php echo $lngDescrip; ?>
				</p>
				<h5>
					<strong> Address:</strong>
					<?php echo $addr; ?>
				</h5>
				<h5>
					<strong> Phone:</strong>
					(513) 872-8801
				</h5>
				<h5>
					<strong> Email:</strong>
					BogartSite.Feedback@LiveNation.com
				</h5>
			</div>
			<div class="pic-section">
        <a-scene embedded>
        <a-sky src="images/bogarts/bogarts1.jpg" rotation="0 -100 0">
        </a-sky>
    </a-scene>
			</div>
			
			<?php
						
							
							
							//$test = [];
							
							
						
							//$result3 = mysqli_query($conn, $sql2);
							
							//if (mysqli_num_rows($result2)>0) {
								
								//while($row=mysqli_fetch_array($result2)) {

									////echo $row['tags'];
									
									
									////$test=$row['tags'];
									
								//}
							
							//}
							
							//implode(" ",$test);
							
							//$arr = (explode(",", $test));
							
							//$arr2 = [];
							
							//foreach($arr as &$value) {
								
								//$sql3 = "SELECT name FROM 'locationdata' where tags like '%".$value."%'";
								
								//$result3 = mysqli_query($conn, $sql3);
							
								//if (mysqli_num_rows($result3)>0) {
									
									//while($row=mysqli_fetch_array($result3)) {
										
										//array_push($arr2, $row['name']);
									//}
							
								//}
								
							//}	
							
							//echo$arr2;
								
			?>
			<?php
				echo "<form method='POST' actions='".setComments($conn,$location)."'>
				<input type='hidden' name='uid' value='Anonymous'></input>
				<input type='hidden' name='date' value='".date('Y-m-d H:i:s')."'></input>
				<input type='hidden' name='location' value='".$location."'></input>
				<textarea name='message'></textarea><br>
				<button name='commentSubmit' type='submit'>Comment</button>
				</form>";
				
				getComments($conn,$location);
				
			?>

			<div class="boxes-section">
				<div class="b0x-four">
					<div class="row">
						
						
						
							<div class="col-lg-3">
								<div class="one-box">
									<img src="images/Museum/MuseumFlat.jpg" style="width:260px;height:160px;">
								</div>
							</div>
							<div class="col-lg-3">
								<div class="one-box">
									<img src="images/FishBowl/FishBowlFlat.jpg" style="width:260px;height:160px;">
								</div>
							</div>
							<div class="col-lg-3">
								<div class="one-box">
									<img src="images/Aquarium/AquariumFlat.jpg" style="width:260px;height:160px;">
								</div>
							</div>
							<div class="col-lg-3">
								<div class="one-box">
									<img src="images/ArtMuseum/ArtMuseumFlat.jpg" style="width:260px;height:160px;">
								</div>
							</div>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<h2>UC Night Life</h2>
					<ul class="mt-4">
						<li><a href="#">@ 2021 All rights reserved</a></li>
					</ul>
				</div>
				<div class="col-lg-4">
					<ul class="#">
						<li><a href="#">email@mail.uc.edu</a></li>
						<li><a href="#">(123) 456-7890</a></li>
					</ul>
				</div>
				<div class="col-lg-4">
					<div class="d-flex">
						<ul class="#">
							<li><a href="#">Search</a></li>
							<li><a href="#">About</a></li>
							<li><a href="#">Contact</a></li>
						</ul>
						<ul class="#">
							<li><a href="#">Facebook</a></li>
							<li><a href="#">Instagram</a></li>
							<li><a href="#">Twitter</a></li>
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
