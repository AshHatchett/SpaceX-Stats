-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 03:09 PM
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
  `id` int(11) NOT NULL,
  `Rocket` text NOT NULL,
  `rocketTag` text NOT NULL,
  `Mission` text NOT NULL,
  `Pad` text NOT NULL,
  `Date` date NOT NULL,
  `Recovery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `launches`
--

INSERT INTO `launches` (`id`, `Rocket`, `rocketTag`, `Mission`, `Pad`, `Date`, `Recovery`) VALUES
(1, 'Falcon 9 Block 5 (B1078.3)', 'f9', 'Starlink Group 6-4', 'SLC-40 Cape Canaveral Space Force Station, Florida, USA', '2023-06-04', 'Just Read The Instructions'),
(2, 'Falcon 9 Block 5 (B1077.5)', 'f9', 'SpX CRS-28', 'Launch Pad 39A, Kennedy Space Centre, Florida, USA', '2023-06-05', 'A Shortfall of Gravitas'),
(3, 'Falcon 9 Block 5 (B1071.9)', 'f9', 'Transporter-8', 'SLC-4E, Vandenberg Space Force Base, California, USA', '2023-06-12', 'LZ-4'),
(4, 'Falcon Heavy Block 5 (B1064.2, B1066.1, B1065.2)', 'fh', 'USSF-67', 'Launch Pad 39A, Kennedy Space Centre, Florida, USA', '2023-01-15', 'LZ-2, Expendable, LZ-1'),
(5, 'Starship Super Heavy (B7.1, S24.1)', 'ss', 'Integrated Flight Test 1', 'Orbital Pad A, Starbase, Texas, USA', '2023-04-20', 'Expendable, Expendable'),
(6, 'Falcon 9 Block 5 (B1073.9)', 'f9', 'Starlink Group 5-11', 'SLC-40, Cape Canaveral Space Force Station, Florida, USA', '2023-06-10', 'Just Read The Instructions'),
(7, 'Falcon 1', 'f1', 'RazakSat-1', 'Omelek Island, Ronald Reagan Ballistic Missile Defense Test Site, Marshall Islands', '2009-07-14', 'Expendable');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `launches`
--
ALTER TABLE `launches`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `launches`
--
ALTER TABLE `launches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
