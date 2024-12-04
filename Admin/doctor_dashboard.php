<?php
session_start();
include('db.php');

if ($_SESSION['role'] != 'doctor') {
    header("Location: login.html");
    exit();
}

$user_id = $_SESSION['user_id'];

// Fetch doctor's details
$sql = "SELECT * FROM doctors WHERE user_id='$user_id'";
$result = $conn->query($sql);
$doctor = $result->fetch_assoc();

// Fetch appointments
$sql_appointments = "SELECT * FROM appointments WHERE doctor_id='$doctor[id]'";
$appointments = $conn->query($sql_appointments);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Doctor Dashboard</title>
</head>
<body>
    <h1>Welcome, Dr. <?php echo $doctor['specialization']; ?></h1>
    <h2>Appointments</h2>
    <table>
        <tr>
            <th>Patient</th>
            <th>Appointment Date</th>
            <th>Status</th>
        </tr>
        <?php while($appointment = $appointments->fetch_assoc()) { ?>
            <tr>
                <td><?php echo $appointment['patient_id']; ?></td>
                <td><?php echo $appointment['appointment_date']; ?></td>
                <td><?php echo $appointment['status']; ?></td>
            </tr>
        <?php } ?>
    </table>

    <h2>Update Availability</h2>
    <form action="update_availability.php" method="POST">
        <textarea name="availability" placeholder="Enter your availability for the week"></textarea><br>
        <button type="submit">Update Availability</button>
    </form>
</body>
</html>
