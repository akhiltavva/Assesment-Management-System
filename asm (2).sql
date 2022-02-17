-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2020 at 08:40 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asm`
--

-- --------------------------------------------------------

--
-- Table structure for table `aqres`
--

CREATE TABLE `aqres` (
  `id` int(11) NOT NULL,
  `qno` int(40) NOT NULL,
  `qname` varchar(100) NOT NULL,
  `results` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aqres`
--

INSERT INTO `aqres` (`id`, `qno`, `qname`, `results`, `email`, `type`) VALUES
(1, 1, 'how are the class rooms look like', 'very Good', 'bhargavrama9@gmail.com', 'fc'),
(2, 2, 'are the computers are working propertly', 'very Good', 'bhargavrama9@gmail.com', 'fc'),
(3, 1, 'how are the class rooms look like', 'very Good', 'jhansirani@gmail.com', 'fc'),
(4, 2, 'are the computers are working propertly', 'very Good', 'jhansirani@gmail.com', 'fc'),
(7, 1, 'how are the class rooms look like', 'very Good', 'prudhviraj@gmail.com', 'fc'),
(8, 2, 'are the computers are working propertly', 'very Good', 'prudhviraj@gmail.com', 'fc');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `fid` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `department` varchar(30) NOT NULL,
  `fsection` varchar(30) NOT NULL,
  `fyear` varchar(40) NOT NULL,
  `qualification` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`fid`, `name`, `email`, `password`, `department`, `fsection`, `fyear`, `qualification`) VALUES
(1, 'bhargav', 'bhargavrama9@gmail.com', '1234', 'CSE', 'A', '2015', 'MCA'),
(3, 'Sai ram', 'sairam@gmail.com', '123456', 'CSE', 'A', '2014', 'B-Tech');

-- --------------------------------------------------------

--
-- Table structure for table `fcres`
--

CREATE TABLE `fcres` (
  `id` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `qname` varchar(100) NOT NULL,
  `qans` varchar(10) NOT NULL,
  `section` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fcres`
--

INSERT INTO `fcres` (`id`, `qno`, `qname`, `qans`, `section`, `email`) VALUES
(1, 1, 'how student are responding in classes', 'Very Good', 'A', 'bhargavrama9@gmail.com'),
(2, 2, 'do you feel happy while teaching to students', 'Good', 'A', 'bhargavrama9@gmail.com'),
(3, 3, 'are student are interested in learning', 'Very Good', 'A', 'bhargavrama9@gmail.com'),
(4, 4, 'how much percent experting in your subject', 'Very Good', 'A', 'bhargavrama9@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `fg`
--

CREATE TABLE `fg` (
  `id` int(11) NOT NULL,
  `qname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fg`
--

INSERT INTO `fg` (`id`, `qname`) VALUES
(1, 'how are the class rooms look like'),
(2, 'are the computers are working propertly');

-- --------------------------------------------------------

--
-- Table structure for table `qtf`
--

CREATE TABLE `qtf` (
  `id` int(11) NOT NULL,
  `qname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qtf`
--

INSERT INTO `qtf` (`id`, `qname`) VALUES
(1, 'how student are responding in classes'),
(2, 'do you feel happy while teaching to students'),
(3, 'are student are interested in learning'),
(4, 'how much percent experting in your subject');

-- --------------------------------------------------------

--
-- Table structure for table `qts`
--

CREATE TABLE `qts` (
  `id` int(11) NOT NULL,
  `qname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qts`
--

INSERT INTO `qts` (`id`, `qname`) VALUES
(1, 'are you understanding the subject'),
(2, 'will the teacher move friendly with you'),
(3, 'your teacher can able to tell the doubts clearly ');

-- --------------------------------------------------------

--
-- Table structure for table `scres`
--

CREATE TABLE `scres` (
  `id` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `qname` varchar(100) NOT NULL,
  `qans` varchar(30) NOT NULL,
  `sec` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `femail` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scres`
--

INSERT INTO `scres` (`id`, `qno`, `qname`, `qans`, `sec`, `email`, `femail`) VALUES
(1, 1, 'are you understanding the subject', 'Very Good', 'A', 'prudhviraj@gmail.com', 'bhargavrama9@gmail.com'),
(2, 2, 'will the teacher move friendly with you', 'Good', 'A', 'prudhviraj@gmail.com', 'bhargavrama9@gmail.com'),
(3, 3, 'your teacher can able to tell the doubts clearly ', 'Good', 'A', 'prudhviraj@gmail.com', 'bhargavrama9@gmail.com'),
(4, 1, 'are you understanding the subject', 'Very Good', 'A', 'prudhviraj@gmail.com', 'sairam@gmail.com'),
(5, 2, 'will the teacher move friendly with you', 'Very Good', 'A', 'prudhviraj@gmail.com', 'sairam@gmail.com'),
(6, 3, 'your teacher can able to tell the doubts clearly ', 'Very Good', 'A', 'prudhviraj@gmail.com', 'sairam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `sid` int(11) NOT NULL,
  `sname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `department` varchar(40) NOT NULL,
  `section` varchar(10) NOT NULL,
  `year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`sid`, `sname`, `email`, `password`, `department`, `section`, `year`) VALUES
(2, 'Jhansi Rani', 'jhansirani@gmail.com', '1234', 'CSE', 'A', 2017),
(3, 'Prudhvi raj', 'prudhviraj@gmail.com', '12345', 'CSE', 'A', 2015);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aqres`
--
ALTER TABLE `aqres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `fcres`
--
ALTER TABLE `fcres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fg`
--
ALTER TABLE `fg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qtf`
--
ALTER TABLE `qtf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qts`
--
ALTER TABLE `qts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scres`
--
ALTER TABLE `scres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aqres`
--
ALTER TABLE `aqres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fcres`
--
ALTER TABLE `fcres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fg`
--
ALTER TABLE `fg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qtf`
--
ALTER TABLE `qtf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `qts`
--
ALTER TABLE `qts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scres`
--
ALTER TABLE `scres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
