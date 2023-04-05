<?php 

$servername = "localhost";
$username  ="USERNAME";
$password = "PASSWORD";
$dbName = "myDB";

$conn = new PDO("my:host=$servername;dbname=$dbName", $username, $password);
