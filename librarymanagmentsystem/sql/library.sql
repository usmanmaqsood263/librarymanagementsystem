-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2020 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Usman Maqsood', 'usmanmaqsood.263@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-12-21 18:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Tariq Baloch', '2020-12-20 12:49:09', '2020-12-20 15:16:59'),
(2, 'Somaya Zaman', '2020-12-20 14:30:23', '2020-12-20 14:30:23'),
(3, 'Dr Usman Khalid', '2020-12-20 14:30:23', '2020-12-20 14:30:23'),
(4, 'muhammad fahab', '2020-11-20 14:30:23', '2020-12-28 16:36:44'),
(5, 'Dr Sehrish Gul', '2020-12-10 14:30:23', '2020-12-10 14:30:23'),
(10, 'Mukhtiar Zamin', '2020-12-30 08:30:21', NULL),
(11, 'Samera Bano', '2020-12-30 08:43:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 3322, 20, '2019-12-30 08:31:58', '2020-12-30 09:24:39'),
(3, 'physics', 6, 4, 1111, 15, '2020-11-30 08:31:58', '2020-12-30 09:23:24'),
(4, 'Fundamental Of Programming', 8, 1, 1122, 40, '2020-12-30 08:31:58', NULL),
(5, 'Fundamental Of Logic', 9, 5, 1123, 40, '2020-12-30 08:33:08', '2020-12-30 08:34:52'),
(6, 'Calculus', 10, 11, 2233, 20, '2020-12-30 08:45:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(8, 'Computer Science', 1, '2020-12-30 08:29:10', '0000-00-00 00:00:00'),
(9, 'Computer Engineering', 1, '2020-12-30 08:29:43', '0000-00-00 00:00:00'),
(10, 'Maths', 1, '2020-12-30 08:42:34', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 4, 'SID01', '2020-12-30 08:36:40', '2020-12-30 09:25:22', 1, 20),
(8, 4, 'SID015', '2020-12-30 08:59:11', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID01', 'Sanaullah Khan', 'vipsanaullahkhan.2000@gmail.com', '3118883615', '7af4896825dfc7e94f8a1d6846a5a2d4', 1, '2020-12-28 13:03:59', '2020-12-30 09:19:55'),
(12, 'SID02', 'Sardar Ali Irtaza', 'sardarali.111@gmail.com', '3114254257', '50d8bd62fbe46030f0b8fe022f80ab26', 1, '2020-12-30 08:49:56', '2020-12-30 09:15:42'),
(13, 'SID03', 'Muhammad Muzamil', 'muzamil.111@gmail.com', '3105025265', '3b84183b2f82038c16e0b6b444f48817', 1, '2020-12-30 08:52:22', '2020-12-30 09:15:49'),
(14, 'SID05', 'Sardar Badar ', 'badar.111@gmail.com', '3101525136', 'dffcec7e95a5b7b3df08820b89601337', 1, '2020-12-30 08:53:40', '2020-12-30 09:16:04'),
(15, 'SID04', 'Samama Saleem', 'samama.263@gmail', '3102564875', '32f69488f68c76a307db13525a47db5a', 1, '2020-12-30 08:55:08', '2020-12-30 09:15:57'),
(16, 'SID017', 'Laraib', 'laraib.123@gmail.com', '3105023255', '8257d23d35ebc9018f744c3069ee5add', 1, '2020-12-30 09:12:39', '2020-12-30 09:15:14'),
(17, 'SID018', 'Hamid Nawaz', 'hamid.123@gmail.com', '3105023265', '0d090b8dc3919dfdf02ce618193a015a', 1, '2020-12-30 09:19:08', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

