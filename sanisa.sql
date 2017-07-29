-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 12:42 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

CREATE TABLE `c_order` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `g_stock`
--

CREATE TABLE `g_stock` (
  `breakfast` varchar(10) NOT NULL,
  `dahi` varchar(10) NOT NULL,
  `jeera` varchar(10) NOT NULL,
  `khichdi` varchar(10) NOT NULL,
  `lowcal` varchar(10) NOT NULL,
  `methi` varchar(10) NOT NULL,
  `nachni` varchar(10) NOT NULL,
  `oats` varchar(10) NOT NULL,
  `punjabi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sakhi`
--

CREATE TABLE `sakhi` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `address` varchar(200) NOT NULL,
  `area` varchar(50) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `ordered` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sakhi_stock`
--

CREATE TABLE `sakhi_stock` (
  `sid` int(11) NOT NULL,
  `breakfast` varchar(10) NOT NULL,
  `dahi` varchar(10) NOT NULL,
  `jeera` varchar(10) NOT NULL,
  `khichdi` varchar(10) NOT NULL,
  `lowcal` varchar(10) NOT NULL,
  `methi` varchar(10) NOT NULL,
  `nachni` varchar(10) NOT NULL,
  `oats` varchar(10) NOT NULL,
  `punjabi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sg_order`
--

CREATE TABLE `sg_order` (
  `sid` int(11) NOT NULL,
  `breakfast` varchar(10) NOT NULL,
  `dahi` varchar(10) NOT NULL,
  `jeera` varchar(10) NOT NULL,
  `khichdi` varchar(10) NOT NULL,
  `lowcal` varchar(10) NOT NULL,
  `methi` varchar(10) NOT NULL,
  `nachni` varchar(10) NOT NULL,
  `oats` varchar(10) NOT NULL,
  `punjabi` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cust_contact` (`contact_no`);

--
-- Indexes for table `c_order`
--
ALTER TABLE `c_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skco` (`cid`),
  ADD KEY `skcoo` (`sid`);

--
-- Indexes for table `sakhi`
--
ALTER TABLE `sakhi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `sakhi_stock`
--
ALTER TABLE `sakhi_stock`
  ADD KEY `sk` (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `c_order`
--
ALTER TABLE `c_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sakhi`
--
ALTER TABLE `sakhi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_order`
--
ALTER TABLE `c_order`
  ADD CONSTRAINT `skco` FOREIGN KEY (`cid`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `skcoo` FOREIGN KEY (`sid`) REFERENCES `sakhi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sakhi_stock`
--
ALTER TABLE `sakhi_stock`
  ADD CONSTRAINT `sk` FOREIGN KEY (`sid`) REFERENCES `sakhi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
