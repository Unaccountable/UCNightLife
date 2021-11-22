<?php

$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "phpnightlife";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName) or die("Could not connect to database...");
//$tb = mssql_select_db("tags") or die("Could not connect to database...");

?>