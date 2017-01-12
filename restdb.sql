-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2016 at 04:24 PM
-- Server version: 5.5.50-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `SaveLevels`
--

CREATE TABLE IF NOT EXISTS `SaveLevels` (
  `levelID` int(11) NOT NULL,
  `senderUserID` varchar(64) NOT NULL,
  `targetUserID` varchar(64) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SaveLevels`
--

INSERT INTO `SaveLevels` (`levelID`, `senderUserID`, `targetUserID`) VALUES
(15, '12', '13'),
(16, '12', '13'),
(17, '12', '13'),
(18, '0', '0'),
(19, '0', '0'),
(20, '0', '0'),
(21, '0', '0'),
(22, '12', '13'),
(23, '2147483647', '2147483647'),
(24, '0', '0'),
(25, '0', '0'),
(26, '0', '0'),
(27, '2147483647', '2147483647'),
(28, '0', '0'),
(29, '0', '0'),
(30, '0', '0'),
(31, '2147483647', '0'),
(32, '0', '0'),
(33, '1112258500444232', '1112258500444232'),
(34, '1112258500444232', '1112258500444232'),
(35, '1112258500444232', '1112258500444232'),
(36, '11122585004442329', '11122585004442329'),
(37, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `UserLevels`
--

CREATE TABLE IF NOT EXISTS `UserLevels` (
  `userID` varchar(64) NOT NULL,
  `levelID` int(11) NOT NULL,
  `levelName` varchar(100) NOT NULL,
  `levelContent` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserLevels`
--

INSERT INTO `UserLevels` (`userID`, `levelID`, `levelName`, `levelContent`) VALUES
('12', 15, 'test1', 'dasdasdasda'),
('12', 16, 'test1', 'dasdasdasda'),
('0', 18, '', ''),
('0', 19, '', ''),
('0', 20, '', ''),
('0', 21, '', ''),
('12', 22, 'test1', 'dasdasdasda'),
('2147483647', 23, 'test1', 'dasdasdasda'),
('0', 24, 'test1', 'dasdasdasda'),
('0', 25, 'test1', 'dasdasdasda'),
('0', 26, '', ''),
('2147483647', 27, 'test1', '<?xml version="1.0" encoding="Windows-1252"?><ArrayOfLevelElements xmlns:xsi="http://www.w3.org/2001'),
('0', 28, 'test1', '<?xml version="1.0" encoding="Windows-1252"?><ArrayOfLevelElements xmlns:xsi="http://www.w3.org/2001'),
('0', 29, 'test1', '<?xml version="1.0" encoding="Windows-1252"?><ArrayOfLevelElements xmlns:xsi="http://www.w3.org/2001'),
('0', 30, '', ''),
('2147483647', 31, 'test1', '<?xml version="1.0" encoding="Windows-1252"?><ArrayOfLevelElements xmlns:xsi="http://www.w3.org/2001'),
('0', 32, '', ''),
('1112258500444232', 33, 'test3', 'dasdasda'),
('1112258500444232', 34, 'test3', 'dasdasda'),
('1112258500444232', 35, 'test3', 'dasdasda'),
('11122585004442329', 36, 'test3', 'dasdasda'),
('', 37, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `SaveLevels`
--
ALTER TABLE `SaveLevels`
  ADD PRIMARY KEY (`levelID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `SaveLevels`
--
ALTER TABLE `SaveLevels`
  MODIFY `levelID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
