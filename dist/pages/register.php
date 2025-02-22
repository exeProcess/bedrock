<?php
$servername = "localhost";
$username = "root"; // Change if needed
$password = ""; // Change if needed
$dbname = "bedrock";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $last_name = $_POST['last_name'];
    $first_name = $_POST['first_name'];
    $class = $_POST['class'];
    $gender = $_POST['gender'];
    $student_name = $last_name. " " .$first_name;

    // SQL Insert Query
    $sql = "INSERT INTO students (student_name, class, gender) 
            VALUES ('$student_name', '$class', '$gender')";

    if ($conn->query($sql) === TRUE) {
        echo "Data uploaded successfully";
    } else {
        echo "Something went wrong";
    }
}

// Close connection
$conn->close();
?>
