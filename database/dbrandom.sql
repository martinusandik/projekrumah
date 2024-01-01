-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 03:19 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrandom`
--

-- --------------------------------------------------------

--
-- Table structure for table `random`
--

CREATE TABLE `random` (
  `id_random` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Number` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `random`
--

INSERT INTO `random` (`id_random`, `Date`, `Number`) VALUES
(1, '2023-05-23', '57'),
(2, '2023-05-23', '64'),
(3, '2023-05-23', '78'),
(4, '2023-05-23', '73'),
(5, '2023-05-23', '91'),
(6, '2023-05-23', '23'),
(7, '2023-05-23', '79'),
(8, '2023-05-23', '24'),
(9, '2023-05-23', '62'),
(10, '2023-05-23', '26'),
(11, '2023-05-23', '68'),
(12, '2023-05-23', '50'),
(13, '2023-05-23', '55'),
(14, '2023-05-23', '17'),
(15, '2023-05-23', '97');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `random`
--
ALTER TABLE `random`
  ADD PRIMARY KEY (`id_random`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `random`
--
ALTER TABLE `random`
  MODIFY `id_random` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
