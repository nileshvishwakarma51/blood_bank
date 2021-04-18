-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 07:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_request`
--

CREATE TABLE `blood_request` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `bloodtype` varchar(50) NOT NULL,
  `units` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_request`
--

INSERT INTO `blood_request` (`id`, `name`, `phone`, `bloodtype`, `units`) VALUES
('praj94054', 'prajwal patil', '9340294054', 'A+', 11);

-- --------------------------------------------------------

--
-- Table structure for table `blood_stock`
--

CREATE TABLE `blood_stock` (
  `A+` int(11) NOT NULL,
  `A-` int(11) NOT NULL,
  `B+` int(11) NOT NULL,
  `B-` int(11) NOT NULL,
  `AB+` int(11) NOT NULL,
  `AB-` int(11) NOT NULL,
  `O+` int(11) NOT NULL,
  `O-` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_stock`
--

INSERT INTO `blood_stock` (`A+`, `A-`, `B+`, `B-`, `AB+`, `AB-`, `O+`, `O-`) VALUES
(74, 20, 200, 46, 85, 51, 52, 10);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` varchar(110) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mob` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `appointment_date` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `isDonated` varchar(10) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `name`, `mob`, `email`, `bloodgroup`, `appointment_date`, `address`, `isDonated`) VALUES
('pin42343', 'pintu', '3242342343', 'null', 'null', 'null', 'null,null,null,null', 'false'),
('Prajwal patil40294054', 'Prajwal patil', '40294054', 'patilprajwal982@gmail.com', '', '2021-04-29', 'SADSA,MHOW,MADHYA PRADESH,453441', 'false'),
('0', 'dsfsf', '555555555555', 'abc@abc', 'O+', '', '', 'false'),
('0', 'dsfsf', '78654364535', 'abc@abc', 'O+', '', '', 'false'),
('Roh50947', 'Rohit Sharma', '9827650947', 'roh@123', 'O+', '2021-04-29', 'dhanka,Indore,Not Specified,453441', 'false'),
('Nil48990', 'Nilesh Vishwakarma', '9977548990', 'nilesh.vishwakarmasdbc@gmail.com', 'AB+', '2021-04-29', 'gsdgds,BHIWANI,Opposite of madan warehouse,127021', 'false');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_request`
--
ALTER TABLE `blood_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`mob`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
