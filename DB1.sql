-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2021 at 11:27 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asdf palace`
--

-- --------------------------------------------------------

--
-- Table structure for table `acces`
--

CREATE TABLE `acces` (
  `NFC_ID` int(50) NOT NULL,
  `Place_ID` int(30) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acces`
--

INSERT INTO `acces` (`NFC_ID`, `Place_ID`, `from`, `to`) VALUES
(1, 1, '2021-06-17', '2021-06-19'),
(2, 2, '2021-06-23', '2021-06-24'),
(3, 3, '2021-06-01', '2021-06-03'),
(4, 4, '2021-06-05', '2021-06-05'),
(5, 5, '2021-06-08', '2021-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `NFC_ID` int(50) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SurName` varchar(30) NOT NULL,
  `Birthday` date NOT NULL,
  `ID category` varchar(30) NOT NULL,
  `Email_Id` int(50) NOT NULL,
  `Phone_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`NFC_ID`, `Name`, `SurName`, `Birthday`, `ID category`, `Email_Id`, `Phone_Id`) VALUES
(1, 'John', 'Papa', '1991-06-05', 'Passport', 1, 1),
(2, 'George', 'New', '1993-06-10', 'Passport', 2, 2),
(3, 'Dimitra', 'Fert', '1997-06-17', 'Passport', 3, 3),
(4, 'Peter', 'Pit', '1985-06-09', 'Passport', 4, 4),
(5, 'Andronikh', 'Kata', '1987-06-09', 'Passport', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `Email_Id` int(50) NOT NULL,
  `Emails` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`Email_Id`, `Emails`) VALUES
(1, 'a@hh.gr'),
(2, 'ff@hh.com'),
(3, 'hfh@hfhof.gr'),
(4, 'hdh@yty.gr'),
(5, 'ffg@gg.com');

-- --------------------------------------------------------

--
-- Table structure for table `given`
--

CREATE TABLE `given` (
  `Place_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE `phone` (
  `Phone_Id` int(11) NOT NULL,
  `Phones` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`Phone_Id`, `Phones`) VALUES
(1, 69123456),
(2, 76789),
(3, 7899),
(4, 567),
(5, 1243);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `NFC_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL,
  `Day` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`NFC_ID`, `Service_ID`, `Day`) VALUES
(1, 1, '2021-06-10'),
(2, 2, '2021-06-15'),
(3, 3, '2021-06-03'),
(4, 4, '2021-06-21'),
(5, 5, '2021-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `sercices`
--

CREATE TABLE `sercices` (
  `Service_ID` int(11) NOT NULL,
  `What_Service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sercices`
--

INSERT INTO `sercices` (`Service_ID`, `What_Service`) VALUES
(1, 'spa'),
(2, 'Saouna'),
(3, 'Basket'),
(4, 'Football'),
(5, 'Pool'),
(6, 'Cocteil'),
(7, 'Room'),
(8, 'Walk');

-- --------------------------------------------------------

--
-- Table structure for table `service_cost`
--

CREATE TABLE `service_cost` (
  `Charge` int(11) NOT NULL,
  `Birth` date NOT NULL,
  `What` varchar(30) NOT NULL,
  `How_much` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_cost`
--

INSERT INTO `service_cost` (`Charge`, `Birth`, `What`, `How_much`) VALUES
(10, '2021-06-02', 'football', 20),
(40, '2021-06-09', 'pool', 200),
(44, '2021-06-15', 'room', 44),
(45, '2021-06-22', 'room', 45),
(50, '2021-06-23', 'spa', 400);

-- --------------------------------------------------------

--
-- Table structure for table `take_services`
--

CREATE TABLE `take_services` (
  `NFC_ID` int(11) NOT NULL,
  `Service_ID` int(11) NOT NULL,
  `T.S_ID` int(11) NOT NULL,
  `Charge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `take_services`
--

INSERT INTO `take_services` (`NFC_ID`, `Service_ID`, `T.S_ID`, `Charge`) VALUES
(1, 3, 3, 45),
(1, 5, 5, 55);

-- --------------------------------------------------------

--
-- Table structure for table `visit`
--

CREATE TABLE `visit` (
  `NFC_ID` int(11) NOT NULL,
  `Time_come` date NOT NULL,
  `Time_go` date NOT NULL,
  `Place_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visit`
--

INSERT INTO `visit` (`NFC_ID`, `Time_come`, `Time_go`, `Place_ID`) VALUES
(1, '2021-06-08', '2021-06-30', 3),
(2, '2021-06-09', '2021-06-24', 2),
(3, '2021-06-15', '2021-06-16', 2),
(4, '2021-06-05', '2021-06-07', 5),
(5, '2021-06-17', '2021-06-19', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acces`
--
ALTER TABLE `acces`
  ADD PRIMARY KEY (`NFC_ID`,`Place_ID`),
  ADD KEY `Place_ID` (`Place_ID`),
  ADD KEY `NFC_ID` (`NFC_ID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`NFC_ID`),
  ADD KEY `Email_Id_FK` (`Email_Id`),
  ADD KEY `Phone_Id_FK` (`Phone_Id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`Email_Id`);

--
-- Indexes for table `given`
--
ALTER TABLE `given`
  ADD PRIMARY KEY (`Place_ID`,`Service_ID`),
  ADD KEY `Place_ID` (`Place_ID`),
  ADD KEY `Service_ID` (`Service_ID`);

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`Phone_Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`NFC_ID`,`Service_ID`),
  ADD KEY `NFC_ID` (`NFC_ID`),
  ADD KEY `Service_ID` (`Service_ID`);

--
-- Indexes for table `sercices`
--
ALTER TABLE `sercices`
  ADD PRIMARY KEY (`Service_ID`);

--
-- Indexes for table `service_cost`
--
ALTER TABLE `service_cost`
  ADD PRIMARY KEY (`Charge`);

--
-- Indexes for table `take_services`
--
ALTER TABLE `take_services`
  ADD PRIMARY KEY (`NFC_ID`,`Service_ID`,`T.S_ID`),
  ADD KEY `NFC_ID` (`NFC_ID`),
  ADD KEY `Service_ID` (`Service_ID`);

--
-- Indexes for table `visit`
--
ALTER TABLE `visit`
  ADD PRIMARY KEY (`NFC_ID`,`Place_ID`),
  ADD KEY `NFC_ID` (`NFC_ID`),
  ADD KEY `Place_ID` (`Place_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Email_Id`) REFERENCES `email` (`Email_Id`),
  ADD CONSTRAINT `customers_ibfk_2` FOREIGN KEY (`NFC_ID`) REFERENCES `acces` (`NFC_ID`);

--
-- Constraints for table `phone`
--
ALTER TABLE `phone`
  ADD CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`Phone_Id`) REFERENCES `customers` (`Phone_Id`);

--
-- Constraints for table `take_services`
--
ALTER TABLE `take_services`
  ADD CONSTRAINT `take_services_ibfk_1` FOREIGN KEY (`NFC_ID`) REFERENCES `acces` (`NFC_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
