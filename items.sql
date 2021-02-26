-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2021 at 10:13 PM
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
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `itemID` int(11) NOT NULL,
  `itemCode` varchar(10) NOT NULL,
  `itemName` varchar(30) NOT NULL,
  `itemPrice` float(10,2) NOT NULL,
  `itemDesc` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`itemID`, `itemCode`, `itemName`, `itemPrice`, `itemDesc`) VALUES
(1, 'IT9090', 'PC', 20000.00, 'Razer 9602'),
(2, 'IT9090', 'PC', 20000.00, 'Corsair'),
(3, 'IT1010', 'PC', 20000.00, 'Razer 9602'),
(4, 'IT10100', 'PC', 100000.00, 'Razer 9602'),
(5, 'IT2020', 'Keyboard', 8000.00, 'Razer 9602'),
(6, 'IT3030', 'Mouse', 1000.00, 'Razer 9602'),
(7, 'IT4040', 'Mousepad', 1000.00, 'CTC6060'),
(8, 'IT5050', 'Mousepad', 1000.00, 'CTC6060'),
(9, 'IT6060', 'Case', 20000.00, 'CTC6060'),
(10, 'IT7070', 'Fullsetup', 60000.00, 'Corsair'),
(11, 'IT8080', 'Fullsetup', 80000.00, 'Corsair'),
(12, 'IT9090', 'Fullsetup', 90000.00, 'Corsair'),
(13, 'IT7070', 'Fullsetup', 60000.00, 'Corsair'),
(14, 'IT1010', 'Fullsetup', 10000.00, 'Corsair'),
(15, 'IT6060', 'Fullsetup', 80000.00, 'Corsair'),
(16, 'IT8080', 'PC', 60000.00, 'Corsair'),
(17, 'IT8080', 'Keyboard', 7000.00, 'Razer 9602');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`itemID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
