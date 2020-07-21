-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2020 at 04:55 PM
-- Server version: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pm2.5`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather`
--

CREATE TABLE `weather` (
  `ID` int(100) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Currenttime` varchar(20) NOT NULL,
  `Current_air` varchar(20) NOT NULL,
  `PM1_0` varchar(20) NOT NULL,
  `PM2_5` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather`
--

INSERT INTO `weather` (`ID`, `City`, `Currenttime`, `Current_air`, `PM1_0`, `PM2_5`) VALUES
(1, 'bangkok', '2020-03-25 18:00:00', '93', '40', '93'),
(2, 'Thailand', '2020-03-25 18:00:00', '109', '46', '109'),
(3, 'bangkok', '2020-03-25 18:00:00', '93', '40', '93'),
(4, 'Tokyo', '2020-03-25 21:00:00', '10', '10', '1'),
(5, 'Tokyo', '2020-03-25 21:00:00', '10', '10', '1'),
(6, 'Osaka', '2020-03-25 21:00:00', '63', '21', '63'),
(7, 'Osaka', '2020-03-25 21:00:00', '63', '21', '63'),
(8, 'Japan', '2020-03-25 20:00:00', '42', '20', '42'),
(9, 'Japan', '2020-03-25 20:00:00', '42', '20', '42'),
(10, 'bangkok', '2020-03-25 18:00:00', '93', '40', '93'),
(11, 'Italy', '2020-03-24 23:00:00', '30', '10', '30'),
(12, 'Thailand', '2020-03-25 20:00:00', '104', '44', '104'),
(13, 'thailand', '2020-03-25 21:00:00', '93', '39', '93'),
(14, 'China', '2020-03-25 23:00:00', '160', '51', '160'),
(15, 'japan', '2020-03-25 23:00:00', '50', '22', '50'),
(16, 'Russia', '2020-03-10 14:00:00', '18', '18', '50'),
(17, 'Chile', '2020-03-25 12:00:00', '39', '39', '34'),
(18, 'Greece', '2020-03-25 17:00:00', '13', '10', '13'),
(19, 'Iceland', '2020-03-24 04:00:00', '3', '3', '16'),
(20, 'Taiwan', '2020-03-26 00:00:00', '119', '54', '119'),
(21, 'rayong', '2020-03-25 22:00:00', '37', '37', '25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather`
--
ALTER TABLE `weather`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather`
--
ALTER TABLE `weather`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
