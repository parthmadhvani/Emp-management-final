-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 04:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ems1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin'),
(2, 'admin2@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `bdate` date NOT NULL,
  `gender` text NOT NULL,
  `cnumber` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `department` varchar(25) NOT NULL,
  `degree` varchar(25) NOT NULL,
  `salary` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `email`, `password`, `fname`, `lname`, `bdate`, `gender`, `cnumber`, `address`, `department`, `degree`, `salary`) VALUES
(22, 'nissa@gmail.com', 'gtr', 'Toyotaa', 'GTR', '2003-06-05', 'Gender', '555555555', 'katargam,sura', 'driving', 'Muscle ', '9999999'),
(220, 'admin@gmail.comdsds', 'admin', 'Deep', 'Moradiya', '2022-04-23', 'Male', '78888887', 'fdas', 'fasd', 'CE', '2'),
(221, 'admin@gmail.com', 'admin', 'Patels', 'Moradiya', '2022-04-02', 'Male', '3', 'fda', 'fsd', 'fsd', '3'),
(225, 'admin@gmail.comdsdsfda', 'admin', 'fasd', 'fdad', '2022-04-09', 'Male', '3', 'fa', 'da', 'fds', '3');

-- --------------------------------------------------------

--
-- Table structure for table `emp_leaves`
--

CREATE TABLE `emp_leaves` (
  `leaves_id` int(50) NOT NULL,
  `id` int(50) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `reason` varchar(500) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `emp_leaves`
--

INSERT INTO `emp_leaves` (`leaves_id`, `id`, `start_date`, `end_date`, `reason`, `status`) VALUES
(2, 22, '2022-04-21', '2022-04-26', 'Cold', 'Cancelled'),
(3, 22, '2022-04-06', '2022-04-15', 'marriage', 'Cancelled'),
(11, 22, '2022-04-06', '2022-04-10', 'Vacation', 'Approved'),
(21, 22, '2022-04-14', '2022-04-22', 'function', 'Approved'),
(22, 22, '2022-04-14', '2022-04-22', 'function', 'Cancelled'),
(23, 22, '2022-04-14', '2022-04-22', 'function', 'Approved'),
(24, 22, '2022-04-14', '2022-04-22', 'function', 'Approved'),
(26, 220, '2022-04-16', '2022-04-30', 'cxxz', 'Pending'),
(27, 221, '2022-04-16', '2022-04-17', 'Function', 'Approved'),
(29, 221, '2022-04-24', '2022-05-08', 'Cold', 'Pending'),
(44, 221, '2022-04-08', '2022-04-24', 'adfad', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `pid` int(50) NOT NULL,
  `eid` int(50) NOT NULL,
  `pname` varchar(50) NOT NULL,
  `end_date` date NOT NULL,
  `sub_date` date NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'Assigned'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`pid`, `eid`, `pname`, `end_date`, `sub_date`, `status`) VALUES
(1, 22, 'Python', '2022-03-18', '2022-04-03', 'Submitted'),
(3, 22, 'Django', '2022-04-29', '2022-04-11', 'Submitted'),
(4, 22, 'JS', '2022-04-29', '2022-04-03', 'Submitted'),
(13, 22, 'dfa', '2022-04-10', '0000-00-00', 'Assigned'),
(14, 22, 'hg', '2022-04-10', '0000-00-00', 'Assigned'),
(16, 220, 'GP', '2022-04-24', '2022-04-15', 'Submitted');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `emp_leaves`
--
ALTER TABLE `emp_leaves`
  ADD PRIMARY KEY (`leaves_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;

--
-- AUTO_INCREMENT for table `emp_leaves`
--
ALTER TABLE `emp_leaves`
  MODIFY `leaves_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `pid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
