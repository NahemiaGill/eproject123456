<?php
include('db.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $address = $_POST['address'];
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);  // Encrypt password

    // Insert user into users table
    $sql = "INSERT INTO users (username, password, role, email, phone, address) 
            VALUES ('$username', '$password', 'patient', '$email', '$phone', '$address')";

    if ($conn->query($sql) === TRUE) {
        // Get the user ID
        $user_id = $conn->insert_id;

        // Insert into patients table
        $sql_patient = "INSERT INTO patients (user_id) VALUES ('$user_id')";
        if ($conn->query($sql_patient) === TRUE) {
            echo "Registration successful!";
        } else {
            echo "Error: " . $sql_patient . "<br>" . $conn->error;
        }
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    $conn->close();
}
?>
