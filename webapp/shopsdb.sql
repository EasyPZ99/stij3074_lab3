-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2022 at 04:16 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_carts`
--

CREATE TABLE `tbl_carts` (
  `user_email` varchar(50) NOT NULL,
  `book_id` varchar(10) NOT NULL,
  `cart_qty` int(5) NOT NULL,
  `cart_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_carts`
--

INSERT INTO `tbl_carts` (`user_email`, `book_id`, `cart_qty`, `cart_id`) VALUES
('rebas49969@rezunz.com', '1', 3, 1),
('rebas49969@rezunz.com', '5', 2, 2),
('rebas49969@rezunz.com', '6', 2, 3),
('rebas49969@rezunz.com', '2', 3, 11),
('rebas49969@rezunz.com', '4', 2, 17),
('rebas49969@rezunz.com', '3', 1, 18),
('slumberjer@gmail.com', '2', 1, 52),
('slumberjer@gmail.com', '12', 3, 65),
('slumberjer@gmail.com', '1', 1, 71),
('slumberjer@gmail.com', '4', 1, 72),
('slumberjer@gmail.com', '10', 1, 73);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `item_id` int(5) NOT NULL,
  `item_title` varchar(200) NOT NULL,
  `item_author` varchar(200) NOT NULL,
  `item_isbn` varchar(15) NOT NULL,
  `item_price` float NOT NULL,
  `item_description` varchar(500) NOT NULL,
  `item_pub` varchar(100) NOT NULL,
  `item_lang` varchar(100) NOT NULL,
  `book_date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`item_id`, `item_title`, `item_author`, `item_isbn`, `item_price`, `item_description`, `item_pub`, `item_lang`, `book_date`) VALUES
(29, 'Aura Mandian ', '', '1', 20, 'Aura Mandian Afira', '', '', '2022-01-25 22:39:54.327550'),
(30, 'Scrub Muka', '', '12', 25, 'Scrub muka Afira, untuk kegunaan luaran sahaja.', '', '', '2022-01-25 22:41:13.022444'),
(31, 'Tungku Herba 7 Aura', '', '31', 70, 'Tungku digunakan untuk mengurangkan rasa kesakitan tulang.', '', '', '2022-01-25 22:43:46.557688'),
(32, 'Minyak Afira Large', '', '23', 30, 'Minyak Afira Large, diperkaya dengan rempah ratus kini dengan saiz lebih besar.', '', '', '2022-01-25 22:45:17.541113'),
(33, 'Minyak Afira', '', '43', 10, 'Minyak Herba Afira, kaya dengan rempah ratus untuk kegunaan harian.', '', '', '2022-01-25 22:54:35.300360');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` int(5) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_regdate` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `user_otp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_email`, `user_password`, `user_regdate`, `user_otp`) VALUES
(1, 'slumberjer@gmail.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '2022-01-10 00:00:00.000000', '1'),
(2, 'rebas49969@rezunz.com', '6367c48dd193d56ea7b0baad25b19455e529f5ee', '2022-01-13 00:00:00.000000', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_carts`
--
ALTER TABLE `tbl_carts`
  MODIFY `cart_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `item_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
