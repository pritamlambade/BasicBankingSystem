-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2022 at 11:25 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banksysphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(8, 'Pratik Pulekar', 'Harshal Umasare', 500, '2022-09-19 16:50:42'),
(9, 'Suyash Jadhav', 'Yash Salvi', 500, '2022-09-19 16:52:10'),
(10, 'Pritam lambade', 'Sahil Pawar', 1000, '2022-09-19 16:52:44'),
(11, 'Pratik Pulekar', 'Sahil Pawar', 200, '2022-09-20 11:12:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(155) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `gender`, `balance`) VALUES
(22, 'Pritam lambade', 'pritam@gmail.com', 'Male', 99000),
(23, 'Harshal Umasare', 'HU-1@gmail.com', 'Male', 50500),
(24, 'Amey Dhotre', 'kishmish143@gmail.com', 'Male', 40004),
(25, 'Pratik Sonawane', 'sultan@gmail.com', 'Male', 35000),
(26, 'Jayesh Jadhav', 'JD-PP@gmail.com', 'Female', 30000),
(27, 'Yash Salvi', 'BodyBuilder@gmail.com', 'Male', 25500),
(28, 'Aditya Nivalkar', 'panoti@gmail.com', 'Male', 70000),
(29, 'Sahil Pawar', 'Dagdu@gmail.com', 'Male', 3200),
(30, 'Suyash Jadhav', 'Acid@gmail.com', 'Male', 54500),
(31, 'Pratik Pulekar', 'bhavi-aamdar@gmail.com', 'Male', 34300);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
