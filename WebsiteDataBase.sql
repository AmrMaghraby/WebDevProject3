-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2018 at 06:02 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lala`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `author_name` varchar(200) NOT NULL,
  `author_logo` blob NOT NULL,
  `author_location` varchar(200) NOT NULL,
  `author_website` varchar(200) NOT NULL,
  `mail_id` int(11) NOT NULL,
  `mobile` int(11) NOT NULL,
  `about_author` varchar(200) NOT NULL,
  `fb_link` varchar(200) NOT NULL,
  `llinkedin_link` varchar(200) NOT NULL,
  `goofle_link` varchar(200) NOT NULL,
  `twitter_link` varchar(200) NOT NULL,
  `create date` date NOT NULL,
  `last _update date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `billing_details`
--

CREATE TABLE `billing_details` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice number` int(11) NOT NULL,
  `invoice_amount` double NOT NULL,
  `invoice_date` date NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `sustomer_mailid` int(11) NOT NULL,
  `sutomer_mobile no_ customer` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `item_title` varchar(200) NOT NULL,
  `features` varchar(200) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `release_date` date NOT NULL,
  `update_date` date NOT NULL,
  `version` int(11) NOT NULL,
  `price` double NOT NULL,
  `featured` varchar(200) NOT NULL,
  `sponsered` varchar(200) NOT NULL,
  `item_images` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `template_id`, `author_id`, `type`, `item_title`, `features`, `tags`, `release_date`, `update_date`, `version`, `price`, `featured`, `sponsered`, `item_images`) VALUES
(0, 0, 0, '1', 'fgfgfghfgfg', 'tttt,rrr', 'nnnn,wwwww', '2018-07-22', '2018-07-22', 1, 11, '1', 'qq', 'http://res.cloudinary.com/djpsxa3sq/image/upload/v1532101914/wjbjwcqichwamuxjsbs1.png');

-- --------------------------------------------------------

--
-- Table structure for table `item_review`
--

CREATE TABLE `item_review` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `review_details` varchar(200) NOT NULL,
  `rating` int(11) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_mailid` int(11) NOT NULL,
  `customer_mobile no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_type` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `create_date` date NOT NULL,
  `last_login` date NOT NULL,
  `ip` varchar(200) NOT NULL,
  `location` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_type`, `username`, `password`, `create_date`, `last_login`, `ip`, `location`) VALUES
(1, '1', 'sss', 'aaa', '2018-07-03', '2018-07-01', '192.123.156.136', '12345');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
