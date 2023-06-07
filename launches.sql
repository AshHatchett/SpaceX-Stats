-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 06:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `launches`
--

CREATE TABLE `launches` (
  `Rocket` text NOT NULL,
  `Mission` text NOT NULL,
  `Pad` text NOT NULL,
  `Date` date NOT NULL,
  `Recovery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `launches`
--

INSERT INTO `launches` (`Rocket`, `Mission`, `Pad`, `Date`, `Recovery`) VALUES
('Falcon 9 Block 5 (B1078.3)', 'Starlink Group 6-4', 'SLC-40 Cape Canaveral Space Force Station, Florida, USA', '2023-06-04', 'Just Read The Instructions'),
('Falcon 9 Block 5 (B1077.5)', 'SpX CRS-28', 'Launch Pad 39A, Kennedy Space Centre, Florida, USA', '2023-06-05', 'A Shortfall of Gravitas'),
('Falcon 9 Block 5 (B1071.9)', 'Transporter-8', 'SLC-4E, Vandenberg Space Force Base, California, USA', '2023-06-12', 'LZ-4'),
('Falcon Heavy Block 5 (B1064.2, B1066.1, B1065.2)', 'USSF-67', 'Launch Pad 39A, Kennedy Space Centre, Florida, USA', '2023-01-15', 'LZ-2, Expendable, LZ-1'),
('Starship Super Heavy (B7.1, S24.1)', 'Integrated Flight Test 1', 'Orbital Pad A, Starbase, Texas, USA', '2023-04-20', 'Expendable, Expendable'),
('Falcon 9 Block 5 (B1073.9)', 'Starlink Group 5-11', 'SLC-40, Cape Canaveral Space Force Station, Florida, USA', '2023-06-10', 'Just Read The Instructions');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
