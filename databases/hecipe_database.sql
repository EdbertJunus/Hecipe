-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2022 at 11:47 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hecipe_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscart`
--

CREATE TABLE `mscart` (
  `FoodId` int(11) NOT NULL,
  `TransactionId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `CartQuantity` int(11) NOT NULL,
  `CartTotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `msfood`
--

CREATE TABLE `msfood` (
  `FoodId` int(11) NOT NULL,
  `FoodCategory` varchar(255) NOT NULL,
  `FoodDescription` varchar(255) NOT NULL,
  `FoodImage` varchar(255) NOT NULL,
  `FoodPrice` int(11) NOT NULL,
  `FoodQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `mstransaction`
--

CREATE TABLE `mstransaction` (
  `TransactionId` int(11) NOT NULL,
  `TransactionDate` date NOT NULL,
  `TransactionStatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `msuser`
--

CREATE TABLE `msuser` (
  `UserId` int(11) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `UserEmail` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `UserRole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mscart`
--
ALTER TABLE `mscart`
  ADD KEY `FoodId` (`FoodId`),
  ADD KEY `TransactionId` (`TransactionId`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `msfood`
--
ALTER TABLE `msfood`
  ADD PRIMARY KEY (`FoodId`);

--
-- Indexes for table `mstransaction`
--
ALTER TABLE `mstransaction`
  ADD PRIMARY KEY (`TransactionId`);

--
-- Indexes for table `msuser`
--
ALTER TABLE `msuser`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `msfood`
--
ALTER TABLE `msfood`
  MODIFY `FoodId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mstransaction`
--
ALTER TABLE `mstransaction`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msuser`
--
ALTER TABLE `msuser`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mscart`
--
ALTER TABLE `mscart`
  ADD CONSTRAINT `FoodId` FOREIGN KEY (`FoodId`) REFERENCES `msfood` (`FoodId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TransactionId` FOREIGN KEY (`TransactionId`) REFERENCES `mstransaction` (`TransactionId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UserId` FOREIGN KEY (`UserId`) REFERENCES `msuser` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
