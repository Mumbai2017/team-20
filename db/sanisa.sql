-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2017 at 05:56 PM
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
  `order_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  `delivery_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `g_stock`
--

CREATE TABLE `g_stock` (
  `pid` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `flavor` varchar(100) NOT NULL,
  `image_url` varchar(150) NOT NULL DEFAULT 'img/1.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cost`, `flavor`, `image_url`) VALUES
(1, '50', 'Breakfast', 'img/1.jpg'),
(2, '50', 'Dahi Bajri Methi', 'img/2.jpg'),
(3, '50', 'Jeera', 'img/3.jpg'),
(4, '50', 'Khichdi', 'img/4.jpg'),
(5, '50', 'Low Calorie', 'img/5.jpg'),
(6, '50', 'Methi Masala', 'img/6.jpg'),
(7, '50', 'Nachni', 'img/7.jpg'),
(8, '50', 'Peppery Oats', 'img/8.jpg'),
(9, '50', 'Punjabi Masala', 'img/9.jpg');

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
  `ordered` tinyint(1) NOT NULL DEFAULT '0',
  `lat` varchar(60) NOT NULL,
  `log` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sakhi_stock`
--

CREATE TABLE `sakhi_stock` (
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sg_order`
--

CREATE TABLE `sg_order` (
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `order_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
-- Indexes for table `g_stock`
--
ALTER TABLE `g_stock`
  ADD KEY `order` (`pid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sakhi`
--
ALTER TABLE `sakhi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact_no` (`contact_no`);

--
-- Indexes for table `sg_order`
--
ALTER TABLE `sg_order`
  ADD KEY `so` (`sid`),
  ADD KEY `soo` (`pid`);

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
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
-- Constraints for table `g_stock`
--
ALTER TABLE `g_stock`
  ADD CONSTRAINT `order` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sg_order`
--
ALTER TABLE `sg_order`
  ADD CONSTRAINT `so` FOREIGN KEY (`sid`) REFERENCES `sakhi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `soo` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
