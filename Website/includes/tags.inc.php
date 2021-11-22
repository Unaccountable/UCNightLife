<?php

	session_start();

	include_once 'dbh.inc.php';
	
	$goodQuery = true;
	
	$siteTag = mysqli_real_escape_string($conn, $_POST['tag']);
	
	$sql = "select * from locationdata where tags = '$siteTag;";
	$result = mysqli_query($conn, $sql);
	
	$count = mysqli_num_rows($query);
	
	if($count > 0) {
	
		while($row = mysql_fetch_array($query)){
        $queryArray[] = $row;
    } 
	
	}
	else {
    $goodQuery = false;
    
	$search_output = "<hr />0 results for <strong>$searchquery</strong><hr />";
	
	}
	
	if ($goodQuery){
		$_SESSION['search_output'] = $queryArray;
		
		header("Location: ../results.php?post=success");
		exit;
	}
	
?>