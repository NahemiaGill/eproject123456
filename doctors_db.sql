-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2024 at 08:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctors_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `specialty` varchar(100) NOT NULL,
  `diseases` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `name`, `specialty`, `diseases`, `phone`, `email`) VALUES
(1, 'Dr. Ahmed Khan', 'Cardiologist', 'Heart Disease, High Blood Pressure, Stroke, Angina, Arrhythmia', NULL, NULL),
(2, 'Dr. Fatima Ali', 'Dermatologist', 'Acne, Psoriasis, Eczema, Skin Cancer, Allergies', NULL, NULL),
(3, 'Dr. Bilal Shah', 'Neurologist', 'Alzheimer\'s, Parkinson\'s, Epilepsy, Migraines, Multiple Sclerosis', NULL, NULL),
(4, 'Dr. Ayesha Tariq', 'Pediatrician', 'Asthma, Allergies, Fever, Infections, Growth and Development issues', NULL, NULL),
(5, 'Dr. Imran Iqbal', 'Orthopedic Surgeon', 'Arthritis, Sports Injuries, Fractures, Back Pain, Joint Replacement', NULL, NULL),
(6, 'Dr. Ahmed Khan', 'Cardiologist', 'Heart Disease, High Blood Pressure, Stroke, Angina, Arrhythmia', NULL, NULL),
(7, 'Dr. Fatima Ali', 'Dermatologist', 'Acne, Psoriasis, Eczema, Skin Cancer, Allergies', NULL, NULL),
(8, 'Dr. Bilal Shah', 'Neurologist', 'Alzheimer\'s, Parkinson\'s, Epilepsy, Migraines, Multiple Sclerosis', NULL, NULL),
(9, 'Dr. Ayesha Tariq', 'Pediatrician', 'Asthma, Allergies, Fever, Infections, Growth and Development issues', NULL, NULL),
(10, 'Dr. Imran Iqbal', 'Orthopedic Surgeon', 'Arthritis, Sports Injuries, Fractures, Back Pain, Joint Replacement', NULL, NULL),
(11, 'Dr. Ahmed Khan', 'Cardiologist', 'Heart Disease, High Blood Pressure, Stroke, Angina, Arrhythmia', '123-456-7890', 'ahmed.khan@hospital.com'),
(12, 'Dr. Fatima Ali', 'Dermatologist', 'Acne, Psoriasis, Eczema, Skin Cancer, Allergies', '123-456-7891', 'fatima.ali@clinic.com'),
(13, 'Dr. Ahmed Khan', 'Cardiologist', 'Heart Disease, High Blood Pressure, Stroke, Angina, Arrhythmia', '123-456-7890', 'ahmed.khan@hospital.com'),
(14, 'Dr. Fatima Ali', 'Dermatologist', 'Acne, Psoriasis, Eczema, Skin Cancer, Allergies', '123-456-7891', 'fatima.ali@clinic.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
