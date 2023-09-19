-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2021 at 08:50 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attmgsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admininfo`
--

CREATE TABLE `admininfo` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admininfo`
--

INSERT INTO `admininfo` (`username`, `password`, `email`, `fname`, `phone`, `type`) VALUES
('Daxrajsinh', '9157337456', 'dax@gmail.com', 'admin', '2147483647', 'admin'),
('Keval', 'keval1', 'keval@gmail.com', 'Keval Zalavadiya', '9898689031', 'student'),
('Mahipal', 'mahipal2', 'mahipal@gmail.com', 'Mahipal Suchar', '9426945672', 'teacher'),
('Heet', 'heet3', 'heet@gmail.com', 'Heet Vadiya', '7600754320', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `stat_id` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `st_status` varchar(10) NOT NULL,
  `stat_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`stat_id`, `course`, `st_status`, `stat_date`) VALUES
('CE131', 'HW-A', 'Present', '2018-11-14'),
('CE131', 'HW-B', 'Present', '2018-11-13'),
('CE131', 'PPS-II', 'Present', '2021-04-10'),
('CE131', 'MATHS', 'Absent', '2021-04-10'),
('CE131', 'PHYSICS', 'Present', '2021-04-10'),
('CE138', 'HW-A', 'Present', '2018-11-14'),
('CE138', 'HW-B', 'Present', '2018-11-13'),
('CE138', 'PPS-II', 'Present', '2021-04-10'),
('CE138', 'MATHS', 'Present', '2021-04-10'),
('CE138', 'PHYSICS', 'Absent', '2021-04-10'),
('CE121', 'HW-A', 'Present', '2018-11-14'),
('CE121', 'HW-B', 'Present', '2018-11-13'),
('CE121', 'PPS-II', 'Present', '2021-04-10'),
('CE121', 'MATHS', 'Present', '2021-04-10'),
('CE121', 'PHYSICS', 'Present', '2021-04-10'),
('CE042', 'HW-A', 'Present', '2018-11-14'),
('CE042', 'HW-B', 'Present', '2018-11-13'),
('CE042', 'PPS-II', 'Present', '2021-04-10'),
('CE042', 'MATHS', 'Present', '2021-04-10'),
('CE042', 'PHYSICS', 'Present', '2021-04-10'),
('CE037', 'HW-A', 'Present', '2018-11-14'),
('CE037', 'HW-B', 'Present', '2018-11-13'),
('CE037', 'PPS-II', 'Present', '2021-04-10'),
('CE037', 'MATHS', 'Absent', '2021-04-10'),
('CE037', 'PHYSICS', 'Present', '2021-04-10'),
('CE119', 'HW-A', 'Present', '2018-11-14'),
('CE119', 'HW-B', 'Present', '2018-11-13'),
('CE119', 'PPS-II', 'Present', '2021-04-10'),
('CE119', 'MATHS', 'Absent', '2021-04-10'),
('CE119', 'PHYSICS', 'Present', '2021-04-10'),
('CE137', 'HW-A', 'Present', '2018-11-14'),
('CE137', 'HW-B', 'Absent', '2018-11-13'),
('CE137', 'PPS-II', 'Present', '2021-04-10'),
('CE137', 'MATHS', 'Absent', '2021-04-10'),
('CE137', 'PHYSICS', 'Absent', '2021-04-10'),
('CE027', 'HW-A', 'Present', '2018-11-14'),
('CE027', 'HW-B', 'Present', '2018-11-13'),
('CE027', 'PPS-II', 'Present', '2021-04-10'),
('CE027', 'MATHS', 'Present', '2021-04-10'),
('CE027', 'PHYSICS', 'Present', '2021-04-10'),
('CE081', 'HW-A', 'Present', '2018-11-14'),
('CE081', 'HW-B', 'Present', '2018-11-13'),
('CE081', 'PPS-II', 'Present', '2021-04-10'),
('CE081', 'MATHS', 'Absent', '2021-04-10'),
('CE081', 'PHYSICS', 'Absent', '2021-04-10'),
('CE075', 'HW-A', 'Present', '2018-11-14'),
('CE075', 'HW-B', 'Present', '2018-11-13'),
('CE075', 'PPS-II', 'Present', '2021-04-10'),
('CE075', 'MATHS', 'Absent', '2021-04-10'),
('CE075', 'PHYSICS', 'Present', '2021-04-10'),
('CE093', 'HW-A', 'Present', '2018-11-14'),
('CE093', 'HW-B', 'Present', '2018-11-13'),
('CE093', 'PPS-II', 'Present', '2021-04-10'),
('CE093', 'MATHS', 'Present', '2021-04-10'),
('CE093', 'PHYSICS', 'Present', '2021-04-10'),
('CE001', 'HW-A', 'Present', '2018-11-14'),
('CE001', 'HW-B', 'Absent', '2018-11-13'),
('CE001', 'PPS-II', 'Present', '2021-04-10'),
('CE001', 'MATHS', 'Absent', '2021-04-10'),
('CE001', 'PHYSICS', 'Absent', '2021-04-10'),
('CE132', 'HW-A', 'Present', '2018-11-14'),
('CE132', 'HW-B', 'Present', '2018-11-13'),
('CE132', 'PPS-II', 'Present', '2021-04-10'),
('CE132', 'MATHS', 'Absent', '2021-04-10'),
('CE132', 'PHYSICS', 'Absent', '2021-04-10'),
('CE133', 'HW-A', 'Present', '2018-11-14'),
('CE133', 'HW-B', 'Absent', '2018-11-13'),
('CE133', 'PPS-II', 'Present', '2021-04-10'),
('CE133', 'MATHS', 'Present', '2021-04-10'),
('CE133', 'PHYSICS', 'Absent', '2021-04-10'),
('CE088', 'HW-A', 'Present', '2018-11-14'),
('CE088', 'HW-B', 'Present', '2018-11-13'),
('CE088', 'PPS-II', 'Present', '2021-04-10'),
('CE088', 'MATHS', 'Absent', '2021-04-10'),
('CE088', 'PHYSICS', 'Absent', '2021-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `st_id` varchar(30) NOT NULL,
  `course` varchar(30) NOT NULL,
  `st_status` varchar(30) NOT NULL,
  `st_name` varchar(30) NOT NULL,
  `st_dept` varchar(30) NOT NULL,
  `st_batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `st_id` varchar(20) NOT NULL,
  `st_name` varchar(20) NOT NULL,
  `st_dept` varchar(20) NOT NULL,
  `st_batch` varchar(20) NOT NULL,
  `st_sem` int(11) NOT NULL,
  `st_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`st_id`, `st_name`, `st_dept`, `st_batch`, `st_sem`, `st_email`) VALUES
('CE131', 'HEET VADIYA', 'CE', 'B3', 2, 'heet1611@gmail.com'),
('CE042', 'DAXRAJSINH JADEJA', 'CE', 'A2', 2, 'dax1608@gmail.com'),
('CE138', 'KEVAL ZALAVADIYA', 'CE', 'B3', 2, 'kevalkeval@gmail.com'),
('CE037', 'VISHWADEEPSINH GOHIL', 'CE', 'A2', 2, 'VG789@gmail.com'),
('CE121', 'MAHIPAL SUCHAR', 'CE', 'B3', 2, 'mahisuchar78@gmail.com'),
('CE027', 'KRISH DHOLERIA', 'CE', 'A2', 2, 'kdgt45778@gmail.com'),
('CE119', 'MAYANK SINGH', 'CE', 'B3', 2, 'mayanks542@gmail.com'),
('CE137', 'MALAY VYAS', 'CE', 'B3', 2, 'vyasmalay543@gmail.com'),
('CE132', 'VAGDIYA VATSAL', 'CE', 'B3', 2, 'vv7632@gmail.com'),
('CE133', 'ZEEL VAGHASIYA', 'CE', 'B3', 2, 'vzeel29@gmail.com'),
('CE081', 'DEEP PATEL', 'CE', 'B1', 2, 'dpnothinng9@gmail.com'),
('CE075', 'PANCHAL HET', 'CE', 'B1', 2, 'hetp0909@gmail.com'),
('CE093', 'PATEL VED', 'CE', 'B3', 2, 'vedvirpara2@gmail.com'),
('CE001', 'KASHYAP AJUDIYA', 'CE', 'A1', 2, 'kpajudiya@gmail.com'),
('CE088', 'MANTHAN PATEL', 'CE', 'B1', 2, 'pmanthanl3@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `tc_id` varchar(20) NOT NULL,
  `tc_name` varchar(20) NOT NULL,
  `tc_dept` varchar(20) NOT NULL,
  `tc_email` varchar(30) NOT NULL,
  `tc_course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`tc_id`, `tc_name`, `tc_dept`, `tc_email`, `tc_course`) VALUES
('HWA34', 'Prof. Jigar M. Pandya', 'CE', 'jigarpandya.ce@ddu.ac.in', 'HW-A'),
('HWA35', 'Prof. Pinkal C. Chauhan', 'CE', 'pinkalchavda.ce@ddu.ac.in', 'HW-A'),
('HWB14', 'Prof. Niyati J. Buch', 'CE', 'niyatibuch.ce@ddu.ac.in', 'HW-B'),
('HWB15', 'Prof. Apurva A. Mehta', 'CE', 'apurvamehta.ce@ddu.ac.in', 'HW-B'),
('PPSA1', 'Prof. Pandav K. Patel', 'CE', 'pandavpatel.ce@ddu.ac.in', 'PPS'),
('PPSA2', 'Prof. Hariom A. Pandya', 'CE', 'hariompandya.ce@ddu.ac.in', 'PPS'),
('PHYC5', 'Prof.Sheetal S. Shah', 'CE', 'sheetalshah.ce@ddu.ac.in', 'PHY'),
('PHYC7', 'Prof.Shaifali P. Malukani', 'CE', 'shaifalimalukani.ce@ddu.ac.in', 'PHY'),
('MTHC5', 'Dr. Kailash M. Patil', 'MATHS', 'kailashpatil2111.maths@ddu.ac.in', 'MATHS');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `admininfo`
--
ALTER TABLE `admininfo`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `stat_id` (`stat_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`tc_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`stat_id`) REFERENCES `students` (`st_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
