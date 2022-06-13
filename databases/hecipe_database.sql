-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 08:08 PM
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
  `CommentId` int(11) NOT NULL,
  `Food_Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `UserComment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mscomment`
--

INSERT INTO `mscomment` (`CommentId`, `Food_Id`, `User_Id`, `UserComment`) VALUES
(1, 4, 2, 'Nasi babi yang sangat enak'),
(2, 4, 3, 'Ini rasa nasi babi terenak');

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
(11, 'Nasi Goreng', 'Meats', 'Nasi goreng biasa doang ni mah', 'assets/Nasi-Goreng.jpg', 15000, 100),
(12, 'Ayam Goreng', 'Meats', 'Ini adalah ayam goreng pakai minyak', 'assets/Nasi-Goreng.jpg', 15000, 100),
(13, 'Ayam Panggang', 'Meats', 'Ini ayam yang sudah dipanggang', 'assets/Nasi-Goreng.jpg', 12500, 30),
(14, 'Ayam Bakar', 'Meats', 'Ini adalah ayam yang dibakar', 'assets/Nasi-Goreng.jpg', 13000, 15),
(15, 'Ayam Geprek', 'Meats', 'Ini adalah ayam yang dipukulin', 'assets/Nasi-Goreng.jpg', 18000, 20),
(16, 'Soup Ayam', 'Meats', 'Ini adalah ayam yang dibuat soup', 'assets/Nasi-Goreng.jpg', 20000, 50),
(17, 'Ayam Kampus', 'Meats', 'Ini adalah ayam yang dibeli di kampus', 'assets/Nasi-Goreng.jpg', 25000, 100),
(18, 'Sapi Lada Hitam', 'Meats', 'Ini adalah sapi yang dibuat hitam', 'assets/Nasi-Goreng.jpg', 40000, 30),
(19, 'Kangkung Cah Bawang', 'Vegetarian', 'Ini adalah kangkung yang di cah pakai bawang', 'assets/Nasi-Goreng.jpg', 10000, 80),
(20, 'Kangkung Asam Manis', 'Vegetarian', 'Ini adalah kangkung dibuat asam tapi manis', 'assets/Nasi-Goreng.jpg', 12000, 80);

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
(1, 'Nael', 'naelj15@gmail.com', 'asdasd123', 'Admin', 'not_loggedin'),
(2, 'edbert', 'edbert@gmail.com', 'qweqwe123', 'Member', 'not_loggedin'),
(3, 'Kevin', 'kevintan@gmail.com', 'zxczxc123', 'Member', 'not_loggedin');

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
  ADD PRIMARY KEY (`CommentId`),
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
-- AUTO_INCREMENT for table `mscomment`
--
ALTER TABLE `mscomment`
  MODIFY `CommentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `msfood`
--
ALTER TABLE `msfood`
  MODIFY `FoodId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mstransaction`
--
ALTER TABLE `mstransaction`
  MODIFY `TransactionId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `msuser`
--
ALTER TABLE `msuser`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
