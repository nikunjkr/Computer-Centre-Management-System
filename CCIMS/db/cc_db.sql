-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2019 at 09:13 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `departmentName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `departmentName`) VALUES
(38, 'CSE'),
(32, 'ECE'),
(42, 'EE'),
(39, 'Humanities'),
(40, 'Mechatronics');

-- --------------------------------------------------------

--
-- Table structure for table `issued`
--

CREATE TABLE `issued` (
  `id` int(100) NOT NULL,
  `timing` date NOT NULL,
  `description` varchar(240) NOT NULL,
  `category` varchar(14) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `issued` int(10) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `scheme` varchar(100) NOT NULL,
  `inventory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issued`
--

INSERT INTO `issued` (`id`, `timing`, `description`, `category`, `name`, `Username`, `issued`, `unit`, `Department`, `scheme`, `inventory`) VALUES
(1265, '2019-11-20', 'Personal use', 'LAPTOP', 'NIKUNJ KUMAR', 'nikunj.cse.1729@iiitbh.ac.in', 1, 'Pcs', 'CSE', 'FACULTY', 'Equipments'),
(1266, '2019-11-20', 'For Seminar', 'MOUSE', 'NIKUNJ KUMAR', 'nikunj.cse.1729@iiitbh.ac.in', 2, 'Pcs', 'CSE', 'FACULTY', 'Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `issuerequest`
--

CREATE TABLE `issuerequest` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(240) NOT NULL,
  `category` varchar(14) NOT NULL,
  `name` varchar(100) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `issued` int(10) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `scheme` varchar(100) NOT NULL,
  `inventory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuerequest`
--

INSERT INTO `issuerequest` (`id`, `date`, `description`, `category`, `name`, `Username`, `issued`, `unit`, `Department`, `scheme`, `inventory`) VALUES
(35, '2019-11-21', 'Personal Use', 'MOUSE', 'Sumit', 'sumit.cse.1750@iiitbh.ac.in', 1, 'Pcs', 'CSE', 'FACULTY', 'Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `items_objects`
--

CREATE TABLE `items_objects` (
  `id` int(100) NOT NULL,
  `item` varchar(150) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `inventory` varchar(150) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items_objects`
--

INSERT INTO `items_objects` (`id`, `item`, `unit`, `inventory`, `balance`) VALUES
(1322, 'LAPTOP', 'Pcs', 'Equipments', 104),
(1323, 'MOUSE', 'Pcs', 'Equipments', 28),
(1324, 'ETHERNET CABLE', 'Meter', 'Consumable', 10);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `received`
--

CREATE TABLE `received` (
  `id` int(100) NOT NULL,
  `purchaseorderno` int(10) NOT NULL,
  `purchasedate` date NOT NULL,
  `category` varchar(108) NOT NULL,
  `scheme` varchar(100) NOT NULL,
  `received` int(10) NOT NULL,
  `cost` int(10) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `tax` varchar(10) NOT NULL,
  `taxableValue` float NOT NULL,
  `billno` int(11) NOT NULL,
  `supplier` varchar(240) NOT NULL,
  `dateofsupply` date NOT NULL,
  `inventory` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `received`
--

INSERT INTO `received` (`id`, `purchaseorderno`, `purchasedate`, `category`, `scheme`, `received`, `cost`, `unit`, `tax`, `taxableValue`, `billno`, `supplier`, `dateofsupply`, `inventory`) VALUES
(40, 12340003, '2019-11-07', 'LAPTOP', 'FACULTY', 105, 4000000, 'Pcs', '12%', 3571430, 10100033, 'HP WORLD', '2019-11-09', 'Equipments'),
(41, 10003826, '2019-10-10', 'MOUSE', 'FACULTY', 30, 9000, 'Pcs', '12%', 8035.71, 1002872563, 'AK ELECTRONICS', '2019-11-02', 'Equipments'),
(42, 100027261, '2019-11-05', 'ETHERNET CABLE', 'FACULTY', 10, 3000, 'Meter', '12%', 2678.57, 1002762571, 'KRISHNA SALES', '2019-11-03', 'Consumable');

-- --------------------------------------------------------

--
-- Table structure for table `scheme`
--

CREATE TABLE `scheme` (
  `id` int(100) NOT NULL,
  `schemeName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scheme`
--

INSERT INTO `scheme` (`id`, `schemeName`) VALUES
(2, 'FACULTY'),
(1, 'STUDENTS');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `vendorName` varchar(30) NOT NULL,
  `suppliergstnumber` int(11) NOT NULL,
  `vendorDeal` text NOT NULL,
  `vendorAddress` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `vendorName`, `suppliergstnumber`, `vendorDeal`, `vendorAddress`) VALUES
(34, 'KRISHNA SALES', 644324511, 'LAPTOP', '         BHAGALPUR'),
(35, 'AK ELECTRONICS', 632465828, 'MOUSE', '          PATNA'),
(37, 'HP WORLD', 453546347, 'LAPTOP', '          BHAGALPUR');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users1`
--

CREATE TABLE `users1` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users1`
--

INSERT INTO `users1` (`id`, `username`, `password`) VALUES
(4, 'nikunj.cse.1729@iiitbh.ac.in', 'qwerty'),
(7, 'sumit.cse.1750@iiitbh.ac.in', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departmentName` (`departmentName`);

--
-- Indexes for table `issued`
--
ALTER TABLE `issued`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuerequest`
--
ALTER TABLE `issuerequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items_objects`
--
ALTER TABLE `items_objects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `received`
--
ALTER TABLE `received`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scheme`
--
ALTER TABLE `scheme`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `schemeName` (`schemeName`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users1`
--
ALTER TABLE `users1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `issued`
--
ALTER TABLE `issued`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1267;

--
-- AUTO_INCREMENT for table `issuerequest`
--
ALTER TABLE `issuerequest`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `items_objects`
--
ALTER TABLE `items_objects`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1325;

--
-- AUTO_INCREMENT for table `received`
--
ALTER TABLE `received`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `scheme`
--
ALTER TABLE `scheme`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users1`
--
ALTER TABLE `users1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
