-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 04:47 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `j2ee_jsp_assignment3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`) VALUES
(2015001, 'Prakash singh', 'admin001', 'adminpass'),
(2015002, 'Kushal ', 'admin002', 'adminpass');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `stud_id` int(11) NOT NULL,
  `paper1` int(3) NOT NULL,
  `paper2` int(3) NOT NULL,
  `paper3` int(3) NOT NULL,
  `paper4` int(3) NOT NULL,
  `paper5` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`stud_id`, `paper1`, `paper2`, `paper3`, `paper4`, `paper5`) VALUES
(20180001, 95, 20, 10, 40, 60),
(20180002, 70, 80, 50, 70, 40),
(20180003, 55, 60, 75, 82, 95),
(20180004, 90, 85, 75, 45, 65),
(20180005, 50, 55, 55, 55, 55),
(20180006, 50, 60, 70, 40, 80);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `phone`, `address`) VALUES
(20180001, 'Sandeep', 'sk34@gmail.com', '8956895689', 'delhi'),
(20180002, 'Soam', 'gj334@gmail.com', '9868586856', 'delhi'),
(20180003, 'Rupendra', 'jk54@gmail.com', '8586547854', 'up '),
(20180004, 'Sanjay', 'fkkl@gmail.com', '4454754755', 'delhi'),
(20180005, 'Sanjy kumar', 'kd@gmail.com', '7858748585', 'delhi'),
(20180006, 'Saneep', 'fd@gmail.com', '7858785785', 'delhi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `foreign key ` FOREIGN KEY (`stud_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
