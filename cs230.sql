-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2021 at 02:22 PM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs230`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `descript` text NOT NULL,
  `picpath` varchar(80) NOT NULL,
  `upload_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(3, 'pic2', 'pic2', '../gallery/6046597106b1f5.93460787.jpg', '2021-03-08 12:05:53', NULL),
(4, 'pic3', 'pic3', '../gallery/6046597e585369.27590702.jpg', '2021-03-08 12:06:06', NULL),
(5, 'pic1', 'pic1', '../gallery/60466589337b61.82834305.jpg', '2021-03-08 12:57:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `propic` varchar(50) NOT NULL DEFAULT '../images/deafault.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`pid`, `fname`, `uname`, `propic`) VALUES
(1, '', 'wvu123', '../images/deafault.jpg'),
(2, '', 'hmk0006', '../images/deafault.jpg'),
(3, '', '123', '../profiles/6034590992f200.70917223.jpg'),
(4, '', 'hk', '../images/deafault.jpg'),
(5, '', 'hi', '../images/deafault.jpg'),
(6, '', '12345', '../images/deafault.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for each review',
  `itemid` int(11) NOT NULL COMMENT 'id for item being reviewed',
  `uname` varchar(80) NOT NULL COMMENT 'user reviewing item',
  `title` varchar(60) NOT NULL,
  `reviewtext` text NOT NULL,
  `revdate` datetime NOT NULL,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'is there at least one review'
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COMMENT='user data for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `uname`, `lname`, `password`, `email`) VALUES
(1, NULL, 'wvu123', 'wvul', '$2y$10$YtRoQDUXlHmrlB30hPnplupzp.v2JKF8qwUMekoje6gK/xXiY1jl2', 'hanna123@1.com'),
(2, NULL, 'hmk0006', 'Knox', '$2y$10$/NwOHaAoniO6q/5xHDbK6eWKM.Wqtu45b2zKfMA3gsuA54FlE96aG', 'hmk0006@mix.wvu.edu'),
(3, NULL, '123', 'Knoxx', '$2y$10$vEZwxYMt8BPQorohmx4lPenwHt5OFv0Mej3fC9ccDPCLIPx.lH/Ga', '123@1.com'),
(4, NULL, 'hk', 'k', '$2y$10$TrhKxii2bnAI9s0WkNa.B.fhY4xSGN7aaERAJD8hOq9deqQGDFhPC', 'hk@123.com'),
(5, NULL, 'hi', 'hi', '$2y$10$jJ2hRh/N7jj5vGsIofFjn.HEzy8TWOiR4u4pQ.sLlN1f1u0fhfnZC', 'hi@123.com'),
(6, NULL, '12345', '456', '$2y$10$nf1sfeJClcPmvzAOSPA.yOMHlEu9nm.Vvin7iHs/q5/b2ZT6dYVNa', 'hmk@1.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for each review';
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
