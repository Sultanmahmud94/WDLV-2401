-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 18, 2024 at 11:49 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wdlv2401`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `photo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `gender`, `dob`, `photo`) VALUES
(1, 'rasel', 'jarujek@mailinator.com', '$2y$10$gD.fNaAH0wO7FLaqHpvCi.aeh9I1radwitHfdW1p3nnQFXiWdJg8m', 'male', '1982-04-09', '6712b2eb7efcd.jpg'),
(2, 'Sylvia Koch', 'biduzecuzu@mailinator.com', '$2y$10$XFR/4BGTXWsKIHOWVVFcr.inV/hmu3ygrVDms82QURGaN7SXc9YT6', 'male', '1977-03-25', NULL),
(3, 'Flynn Keith', 'zusebuzegu@mailinator.com', '$2y$10$GX9MF4P5BipU.C6pRY364.xBKTh319tGrVtKpBPY3bnwLCrjYcVba', 'female', '1981-04-02', NULL),
(4, 'sultan', 'wikocesaci@mailinator.com', '$2y$10$rs4xpl3d5OC6s09U6pKZJ.F//yd1LzGI4Ehi.zm83rHkJcjzKp3oy', 'male', '1987-06-09', '6712ae44be52f.jpg'),
(5, ' Swanson', 'runub@mailinator.com', '$2y$10$OCVBvKA.IlvpVGl5Brr80e4Qjm.yysDbNJOUG1psTXiNfAcn4kvdO', 'female', '1977-04-22', '6712b87d1ef50.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
