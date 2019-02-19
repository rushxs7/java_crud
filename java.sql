-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2019 at 11:33 PM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.2.15-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `java`
--

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(20) NOT NULL,
  `module_code` varchar(255) NOT NULL,
  `module_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_code`, `module_name`) VALUES
(1, 'WPA', 'Web Programming All'),
(2, 'ITA', 'ITA');

-- --------------------------------------------------------

--
-- Table structure for table `presentie`
--

CREATE TABLE `presentie` (
  `id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `mod_id` int(11) NOT NULL,
  `week_1` tinyint(1) NOT NULL DEFAULT '0',
  `week_2` tinyint(1) NOT NULL DEFAULT '0',
  `week_3` tinyint(1) NOT NULL DEFAULT '0',
  `week_4` tinyint(1) NOT NULL DEFAULT '0',
  `week_5` tinyint(1) NOT NULL DEFAULT '0',
  `week_6` tinyint(1) NOT NULL DEFAULT '0',
  `week_7` tinyint(1) NOT NULL DEFAULT '0',
  `week_8` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `presentie`
--

INSERT INTO `presentie` (`id`, `stud_id`, `mod_id`, `week_1`, `week_2`, `week_3`, `week_4`, `week_5`, `week_6`, `week_7`, `week_8`) VALUES
(1, 5, 1, 1, 1, 1, 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `studenten`
--

CREATE TABLE `studenten` (
  `stud_nr` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `cohort` int(11) NOT NULL,
  `studie_richting` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenten`
--

INSERT INTO `studenten` (`stud_nr`, `f_name`, `l_name`, `cohort`, `studie_richting`) VALUES
(1, 'Rushil', 'Ramautar', 2016, 'TI'),
(5, 'Eriek', 'Pawirodinomo', 2016, 'TI'),
(6, 'Jennilee', 'Kromodiwongso', 2016, 'TI'),
(7, 'Ignaas', 'Janmohamed', 2016, 'TI'),
(9, 'Deepak', 'Ramdas', 2016, 'TI'),
(10, 'Adam', 'Pawirodinomo', 2019, 'TI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `presentie`
--
ALTER TABLE `presentie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `presentie_id_uindex` (`id`),
  ADD KEY `presentie_modules_id_fk` (`mod_id`),
  ADD KEY `presentie_studenten_stud_nr_fk` (`stud_id`);

--
-- Indexes for table `studenten`
--
ALTER TABLE `studenten`
  ADD PRIMARY KEY (`stud_nr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `presentie`
--
ALTER TABLE `presentie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `studenten`
--
ALTER TABLE `studenten`
  MODIFY `stud_nr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `presentie`
--
ALTER TABLE `presentie`
  ADD CONSTRAINT `presentie_modules_id_fk` FOREIGN KEY (`mod_id`) REFERENCES `modules` (`id`),
  ADD CONSTRAINT `presentie_studenten_stud_nr_fk` FOREIGN KEY (`stud_id`) REFERENCES `studenten` (`stud_nr`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
