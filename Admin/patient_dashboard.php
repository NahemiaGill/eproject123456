<?php
session_start();
include('db.php');

if ($_SESSION['role'] != 'patient') {
    header("Location: login.html");
    exit();
}

$user_id = $_SESSION['user_id'];

// Fetch patient's details
$sql = "SELECT * FROM patients WHERE user_id='$user_id'";
$result = $conn->query($sql);
$patient = $result->fetch_assoc();

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Patient Dashboard</title>
</head>
<body>
    <h1>Welcome, <?php echo $patient['name']; ?></h1>

    <h2>Book an Appointment</h2>
    <form action="book_appointment.php" method="POST">
        <label for="doctor">Doctor</label>
        <select name="doctor_id">
            <?php
            $sql_doctors = "SELECT * FROM doctors";
            $doctors = $conn->query($sql_doctors);
            while($doctor = $doctors->fetch_assoc()) {
                echo "<option value='{$doctor['id']}'>{$doctor['specialization']}</option>";
            }
            ?>
        </select><br>

        <label for="appointment_date">Appointment Date</label>
        <input type="datetime-local" name="appointment_date" required><br>

        <button type="submit">Book Appointment</button>
    </form>
</body>
</html>
