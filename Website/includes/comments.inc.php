<?php
	
	
function setComments($conn,$location) {
	
	if (isset($_POST['commentSubmit'])) {
		$uid = $_POST['uid'];
		$date = $_POST['date'];
		$message = $_POST['message'];
		//$location
		
		$sql = "INSERT INTO comments (uid, date, message, locationName) VALUES ('$uid', '$date', '$message', '$location')";
		
		$result = $conn->query($sql);
	}
	
	
	
}

function getComments($conn,$location) {
	
	$location = str_replace(array("\r", "\n"), '', $location);
	echo $location;
	
	
	$sql = "SELECT * FROM comments";// where 'locationName' IS LIKE '%".$location."%'";
	$result = $conn->query($sql);
	
	while($row = $result->fetch_assoc()) {
		//echo "<div class='comment-box'>";
		echo $row['uid']."<br>";
		echo $row['date']."<br>";
		echo $row['message']."<br><br>";
		//echo "</div>";
	}
	
	
	
	
}



?>