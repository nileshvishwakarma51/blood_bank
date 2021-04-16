-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2021 at 10:24 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(50, 20, 200, 46, 85, 51, 52, 10);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `name` varchar(50) NOT NULL,
  `mob` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`name`, `mob`, `email`, `bloodgroup`) VALUES
('dsfsf', '555555555555', 'abc@abc', 'O+'),
('dsfsf', '78654364535', 'abc@abc', 'O+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`mob`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
