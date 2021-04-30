-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2021 at 10:24 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hotsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `interesse`
--

CREATE TABLE `interesse` (
  `Id` int(11) NOT NULL,
  `Nome` varchar(156) NOT NULL,
  `Email` varchar(156) NOT NULL,
  `Mensagem` varchar(512) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interesse`
--

INSERT INTO `interesse` (`Id`, `Nome`, `Email`, `Mensagem`) VALUES
(1, 'Leandro', 'leandroyamanaka@gmail.com', 'Olá!'),
(9, 'Pedro', 'Pedro@Email.com', 'Hello!'),
(10, 'Joao', 'Joao@Email.com', 'Hello!'),
(11, 'Augusto', 'Augusto@email.com', 'Olá!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interesse`
--
ALTER TABLE `interesse`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `interesse`
--
ALTER TABLE `interesse`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
