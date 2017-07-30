-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2017 at 04:44 AM
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

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `address`, `area`, `contact_no`) VALUES
(1, 'Dummy1', 'Dummy Address 1', 'Andheri', '9999900000'),
(2, 'Dummy2', 'Dummy Address 2', 'Dadar', '9999900001'),
(3, 'Dummy 3', 'Dummy Address 3', 'Bandra', '9999900002'),
(4, 'Dummy 4', 'Dummy Address 4', 'Borivali', '9999900004'),
(6, 'Dummy 5', 'Dummy Address 5', 'Churchgate', '9999900007');

-- --------------------------------------------------------

--
-- Table structure for table `c_order`
--

CREATE TABLE `c_order` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `order_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(30) NOT NULL,
  `delivery_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c_order`
--

INSERT INTO `c_order` (`id`, `cid`, `sid`, `pid`, `quantity`, `cost`, `order_at`, `status`, `delivery_type`) VALUES
(1, 2, 1, 4, '6', '700', '2017-07-29 20:51:35', '', 'drop'),
(2, 4, 6, 8, '30', '500', '2017-07-30 02:38:01', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g_stock`
--

CREATE TABLE `g_stock` (
  `pid` int(11) NOT NULL,
  `quantity` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `g_stock`
--

INSERT INTO `g_stock` (`pid`, `quantity`) VALUES
(1, 600),
(2, 450),
(3, 400),
(4, 500),
(5, 590),
(6, 700);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `cost` varchar(10) NOT NULL,
  `flavor` varchar(100) NOT NULL,
  `image_url` varchar(150) NOT NULL DEFAULT 'img/1.jpg',
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `cost`, `flavor`, `image_url`, `description`) VALUES
(1, '50', 'Breakfast', 'img/1.jpg', ''),
(2, '50', 'Dahi Bajri Methi', 'img/2.jpg', ''),
(3, '50', 'Jeera', 'img/3.jpg', ''),
(4, '50', 'Khichdi', 'img/4.jpg', ''),
(5, '50', 'Low Calorie', 'img/5.jpg', ''),
(6, '50', 'Methi Masala', 'img/6.jpg', ''),
(7, '50', 'Nachni', 'img/7.jpg', ''),
(8, '50', 'Peppery Oats', 'img/8.jpg', ''),
(9, '50', 'Punjabi Masala', 'img/9.jpg', '');

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

--
-- Dumping data for table `sakhi`
--

INSERT INTO `sakhi` (`id`, `name`, `address`, `area`, `contact_no`, `activated`, `ordered`, `lat`, `log`) VALUES
(1, 'Sakhi 1', 'Address 1', 'Dadar', '9999888800', 0, 0, '', ''),
(2, 'Sakhi2', 'Address2', 'VileParle', '9999888801', 0, 0, '', ''),
(3, 'Sakhi3', 'Address3', 'Dadar', '9898989866', 0, 0, '', ''),
(4, 'Sakhi4', 'Address4', 'Bandra', '9898989896', 0, 0, '', ''),
(5, 'Sakhi6', 'Address6', 'Malad', '8989806758', 0, 0, '', ''),
(6, 'Sakhi7', 'Address 7', 'Juhu', '67546576890', 0, 0, '', ''),
(7, 'Sakhi8', 'Address8', 'Churchgate', '7788778877', 0, 0, '', ''),
(8, 'Sakhi9', 'Address9', 'Borivali', '7788778807', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sakhi_stock`
--

CREATE TABLE `sakhi_stock` (
  `sid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `quantity` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sakhi_stock`
--

INSERT INTO `sakhi_stock` (`sid`, `pid`, `quantity`) VALUES
(1, 1, '100'),
(2, 4, '160'),
(1, 4, '60');

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
-- Dumping data for table `sg_order`
--

INSERT INTO `sg_order` (`sid`, `pid`, `quantity`, `order_at`) VALUES
(1, 3, '40', '0000-00-00 00:00:00'),
(2, 7, '76', '0000-00-00 00:00:00');

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
  ADD KEY `skcoo` (`sid`),
  ADD KEY `skc` (`pid`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `c_order`
--
ALTER TABLE `c_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sakhi`
--
ALTER TABLE `sakhi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `c_order`
--
ALTER TABLE `c_order`
  ADD CONSTRAINT `skc` FOREIGN KEY (`pid`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
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
