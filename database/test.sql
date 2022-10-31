-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 29, 2022 at 11:22 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `basic info`
--

CREATE TABLE `basic info` (
  `name` varchar(50) DEFAULT NULL,
  `other name` varchar(25) DEFAULT NULL,
  `formula` varchar(50) DEFAULT NULL,
  `molecular weight` double DEFAULT NULL,
  `density` double DEFAULT NULL,
  `melting point` double DEFAULT NULL,
  `boiling point` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `basic info`
--

INSERT INTO `basic info` (`name`, `other name`, `formula`, `molecular weight`, `density`, `melting point`, `boiling point`) VALUES
('low-density polyethylene', 'LDPE', '(C2H4)n', 30000, 0.91, 106, 105),
('high-density polyethylene', 'HDPE', '(C2H4)n', 200000, 0.941, 125, 130.8),
('polypropylene', 'PP', '[CH2-CH(CH3)]n', 354.6, 0.926, 173, 160),
('nylon', '', '(C12H22N2O2)n', 678.9, 1.14, 268.8, 452.1);

-- --------------------------------------------------------

--
-- Table structure for table `physical_properties`
--

CREATE TABLE `physical properties` (
  `name` varchar(25) DEFAULT NULL,
  `tensile strength` int(2) DEFAULT NULL,
  `hardness` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `physical_properties`
--

INSERT INTO `physical properties` (`name`, `tensile strength`, `hardness`) VALUES
('low-density polyethylene', 50, 5),
('high-density polyethylene', 20, 2),
('polypropylene', 60, 8),
('nylon', 25, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
