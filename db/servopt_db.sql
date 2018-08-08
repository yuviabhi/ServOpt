-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2018 at 05:13 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `servopt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE IF NOT EXISTS `bus_stops` (
  `stop_id` int(20) NOT NULL AUTO_INCREMENT,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `stop_name` varchar(100) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`stop_id`, `lat`, `lon`, `stop_name`, `added_on`) VALUES
(5, 22.562474730801693, 88.26980653883902, 'good', '2018-08-08 10:21:30'),
(6, 22.564376990183703, 88.56369081618277, 'goodas', '2018-08-08 10:34:32'),
(7, 22.11, 88.54, 'abc', '2018-08-08 10:48:28'),
(8, 22.509835154557855, 88.44902101637808, 'aaaaa', '2018-08-08 10:49:06'),
(9, 22.509835154557855, 88.44902101637808, 'aaaaa', '2018-08-08 10:52:57'),
(10, 22.509835154557855, 88.44902101637808, 'aaaaa', '2018-08-08 10:54:19'),
(11, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:54:49'),
(12, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:54:57'),
(13, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:55:29'),
(14, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:55:40'),
(15, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:55:50'),
(16, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:56:25'),
(17, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:56:46'),
(18, 22.509835154557855, 88.44902101637808, 'aaaaaa', '2018-08-08 10:56:57'),
(19, 22.556133676684368, 88.49090639235465, 'lalal', '2018-08-08 10:57:50'),
(20, 22.526961074146726, 88.50601259352652, 'as', '2018-08-08 11:38:29'),
(21, 22.539645571893736, 88.36937013747183, 'new', '2018-08-08 14:57:13'),
(22, 22.502857319721862, 88.54103151442496, 'new', '2018-08-08 14:57:54');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
