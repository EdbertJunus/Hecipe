-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2022 at 07:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

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
-- Table structure for table `mscomment`
--

CREATE TABLE `mscomment` (
  `Food_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `UserComment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `msfood`
--

CREATE TABLE `msfood` (
  `FoodId` int(11) NOT NULL,
  `FoodName` varchar(255) NOT NULL,
  `FoodCategory` varchar(255) NOT NULL,
  `FoodDescription` varchar(255) NOT NULL,
  `FoodImage` varchar(255) NOT NULL,
  `FoodPrice` int(11) NOT NULL,
  `FoodQuantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msfood`
--

INSERT INTO `msfood` (`FoodId`, `FoodName`, `FoodCategory`, `FoodDescription`, `FoodImage`, `FoodPrice`, `FoodQuantity`) VALUES
(4, 'Nasi Babi', 'Meats', 'Ini adalah nasi dikasih babi', 'assets/Nasi-Goreng.jpg', 30000, 20),
(5, 'Nasi merah', 'Meats', 'Ini adalah nasi berwarna merah', 'assets/Nasi-Goreng.jpg', 15000, 40),
(6, 'Nasi Rendang', 'Meats', 'Ini adalah nasi pakai rendang', 'assets/Nasi-Goreng.jpg', 30000, 10),
(7, 'Mie Goreng', 'Meats', 'Ini adalah mie goreng indonesia', 'assets/Nasi-Goreng.jpg', 10000, 10),
(8, 'Mie Kuah', 'Meats', 'Ini adalah mie pakai kuah', 'assets/Nasi-Goreng.jpg', 10000, 15),
(9, 'Mie Apa Pula', 'Meats', 'Ini mie apa pula lah', 'assets/Nasi-Goreng.jpg', 15000, 15),
(10, 'Nasi Goreng Kambing', 'Vegetarian', 'Ini adalah nasi goreng pakai kambing', 'assets/Nasi-Goreng.jpg', 100000, 10),
(11, 'Nasi Goreng', 'Meats', 'Nasi goreng biasa doang ni mah', 'assets/Nasi-Goreng.jpg', 15000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `mstransaction`
--

CREATE TABLE `mstransaction` (
  `TransactionId` int(11) NOT NULL,
  `TransactionDate` date NOT NULL,
  `TransactionStatus` varchar(255) NOT NULL DEFAULT 'False'
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
  `UserRole` varchar(255) NOT NULL,
  `UserStatus` varchar(255) NOT NULL DEFAULT 'not_loggedin'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msuser`
--

INSERT INTO `msuser` (`UserId`, `UserName`, `UserEmail`, `UserPassword`, `UserRole`, `UserStatus`) VALUES
(1, 'Nael', 'naelj15@gmail.com', 'asdasd123', 'Admin', 'logged_in'),
(2, 'edbert', 'edbert@gmail.com', 'qweqwe123', 'Member', 'not_loggedin');

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
-- Indexes for table `mscomment`
--
ALTER TABLE `mscomment`
  ADD KEY `User_Id` (`User_Id`),
  ADD KEY `Food_Id` (`Food_Id`);

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
  MODIFY `FoodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `mstransaction`
--
ALTER TABLE `mstransaction`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msuser`
--
ALTER TABLE `msuser`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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

--
-- Constraints for table `mscomment`
--
ALTER TABLE `mscomment`
  ADD CONSTRAINT `Food_Id` FOREIGN KEY (`Food_Id`) REFERENCES `msfood` (`FoodId`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `User_Id` FOREIGN KEY (`User_Id`) REFERENCES `msuser` (`UserId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
