<?php
$servername = getenv('DB_HOST1');
$username = getenv('DB_USERNAME1');
$password = getenv('DB_PASSWORD1');
$dbname = getenv('DB_DATABASE1');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
