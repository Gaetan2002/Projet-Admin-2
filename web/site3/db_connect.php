<?php
$servername = getenv('DB_HOST3');
$username = getenv('DB_USERNAME3');
$password = getenv('DB_PASSWORD3');
$dbname = getenv('DB_DATABASE3');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
