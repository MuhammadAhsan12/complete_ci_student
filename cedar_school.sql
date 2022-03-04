-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 03:31 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cedar_school`
--

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `c_id` int(11) NOT NULL,
  `campus` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`c_id`, `campus`) VALUES
(1, 'Clifton'),
(2, 'Gulshan'),
(3, 'PECHS');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `contactfirstName` varchar(100) NOT NULL,
  `contactlastName` varchar(100) NOT NULL,
  `contactemail` varchar(100) NOT NULL,
  `contactphone` int(100) NOT NULL,
  `contactgender` enum('male','female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `contactfirstName`, `contactlastName`, `contactemail`, `contactphone`, `contactgender`) VALUES
(21, 'Waseem', 'Akhter', 's@gmail.com', 212121, 'male'),
(22, 'Khalid', 'Akhter', 's@gmail.com', 2121, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `parentid` int(11) NOT NULL,
  `parentfirstName` varchar(100) NOT NULL,
  `parentlastName` varchar(100) NOT NULL,
  `parentemail` varchar(100) NOT NULL,
  `parentphone` int(100) NOT NULL,
  `parentgender` enum('male','female') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`parentid`, `parentfirstName`, `parentlastName`, `parentemail`, `parentphone`, `parentgender`) VALUES
(27, 'Muhammad', 'Naseem', 'a@gmail.com', 212121, 'male'),
(28, 'Adad', 'Naseem', 'a@gmail.com', 212121, 'male');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `stdid` int(50) DEFAULT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` int(50) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `address` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `subject` varchar(100) NOT NULL,
  `campus` varchar(100) NOT NULL,
  `parentid` int(11) NOT NULL,
  `contactid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `stdid`, `firstName`, `lastName`, `email`, `phone`, `gender`, `address`, `dob`, `subject`, `campus`, `parentid`, `contactid`) VALUES
(33, 3333, 'Muhammad', 'Ahsan', 'ahan.muh123@gmail.com', 2147483647, 'male', 'Karachi', '2022-03-23', 'English', 'gulshan', 27, 21),
(34, 1234, 'Muhammad', 'Ahsan', 'ahan.muh123@gmail.com', 2147483647, 'male', 'sasasasa', '2022-03-17', 'English', 'PECHS', 28, 22);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sub_id` int(11) NOT NULL,
  `subject` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sub_id`, `subject`) VALUES
(1, 'English'),
(2, 'PST'),
(3, 'Urdu'),
(4, 'Chemistry'),
(5, 'Maths'),
(6, 'Physics');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) DEFAULT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `firstName`, `lastName`, `gender`, `address`, `dob`) VALUES
(1, 'Muhammad', 'Ahsan', 'male', 'karachi', '2019-07-21'),
(2, 'Asad', 'Zulfiqar', 'male', 'karachi', '1919-08-09'),
(3, 'Waseem', 'Akher', 'male', 'karachi', '2022-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`parentid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sub_id` (`subject`),
  ADD KEY `c_id` (`campus`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `contactid` (`contactid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `parentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
