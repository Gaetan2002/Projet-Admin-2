<?php
$servername = getenv('DB_HOST2');
$username = getenv('DB_USERNAME2');
$password = getenv('DB_PASSWORD2');
$dbname = getenv('DB_DATABASE2');

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
