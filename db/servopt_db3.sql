-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 10:15 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus_route`
--

CREATE TABLE IF NOT EXISTS `bus_route` (
  `route_no` varchar(10) NOT NULL,
  `direction` varchar(2) NOT NULL,
  `origin` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `distance` decimal(5,2) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`route_no`,`direction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_route`
--

INSERT INTO `bus_route` (`route_no`, `direction`, `origin`, `destination`, `distance`, `route_id`) VALUES
('AC 14', 'DN', 'Saltlake', 'Baruipur', NULL, NULL),
('AC 14', 'UP', 'Saltlake', 'Baruipur', NULL, NULL),
('AC 24', 'DN', 'Patuli ', 'Howrah', NULL, NULL),
('AC 24', 'UP', 'Patuli ', 'Howrah', NULL, NULL),
('AC 37B', 'DN', 'Garia', 'Airport', NULL, NULL),
('AC 37B', 'UP', 'Garia', 'Airport', NULL, NULL),
('AC 43', 'DN', 'Golf green', 'Airport', NULL, NULL),
('AC 43', 'UP', 'Golf green', 'Airport', NULL, NULL),
('AC 47', 'DN', 'Kudghat', 'Sapoorji', NULL, NULL),
('AC 47', 'UP', 'Kudghat', 'Sapoorji', NULL, NULL),
('AC 9', 'DN', 'Jadavpur', 'Karunamoyee', NULL, NULL),
('AC 9', 'UP', 'Jadavpur', 'Karunamoyee', NULL, NULL),
('AC4A', 'DN', 'Parnasree', 'Sapoorji', NULL, NULL),
('AC4A', 'UP', 'Parnasree', 'Sapoorji', NULL, NULL),
('AC50', 'DN', 'Garia', 'Belur', NULL, NULL),
('AC50', 'UP', 'Garia', 'Belur', NULL, NULL),
('AC51', 'DN', 'Kudghat', ' Airport', NULL, NULL),
('AC51', 'UP', 'Kudghat', ' Airport', NULL, NULL),
('AC9B', 'DN', 'Jadavpur', 'Ecospace', NULL, NULL),
('AC9B', 'UP', 'Jadavpur', 'Ecospace', NULL, NULL),
('C 26', 'DN', 'Howrah', 'Baruipur', NULL, NULL),
('C 26', 'UP', 'Howrah', 'Baruipur', NULL, NULL),
('C14/1', 'DN', 'Tollygunge ', 'Madhyamgram', NULL, NULL),
('C14/1', 'UP', 'Tollygunge ', 'Madhyamgram', NULL, NULL),
('D1', 'DN', 'Tollygunge ', 'Chakdaha', NULL, NULL),
('D1', 'UP', 'Tollygunge ', 'Chakdaha', NULL, NULL),
('E26', 'DN', 'Howrah', 'Baruipur', NULL, NULL),
('E26', 'UP', 'Howrah', 'Baruipur', NULL, NULL),
('M 2', 'DN', 'Tollygunge', 'Birati', NULL, NULL),
('M 2', 'UP', 'Tollygunge', 'Birati', NULL, NULL),
('MW1', 'DN', 'Sulekha ', 'Unitech', NULL, NULL),
('MW1', 'UP', 'Sulekha ', 'Unitech', NULL, NULL),
('MW3', 'DN', 'Patuli ', 'Unitech', NULL, NULL),
('MW3', 'UP', 'Patuli ', 'Unitech', NULL, NULL),
('S 12C', 'DN', 'Paikpara', ' Nayabad', NULL, NULL),
('S 12C', 'UP', 'Paikpara', ' Nayabad', NULL, NULL),
('S 14', 'DN', 'Saltlake ', 'Garia', NULL, NULL),
('S 14', 'UP', 'Saltlake ', 'Garia', NULL, NULL),
('S 21', 'DN', 'Bagbazar', 'Garia', NULL, NULL),
('S 21', 'UP', 'Bagbazar', 'Garia', NULL, NULL),
('S 24', 'DN', 'Howrah', 'Patuli', NULL, NULL),
('S 24', 'UP', 'Howrah', 'Patuli', NULL, NULL),
('S 4', 'DN', 'Saltlake Gate', 'Parnasree', NULL, NULL),
('S 4', 'UP', 'Saltlake Gate', 'Parnasree', NULL, NULL),
('S 9C', 'DN', 'Patuli ', 'Ecospace', NULL, NULL),
('S 9C', 'UP', 'Patuli ', 'Ecospace', NULL, NULL),
('S24 N', 'DN', 'Patuli ', 'Nabanna', NULL, NULL),
('S24 N', 'UP', 'Patuli ', 'Nabanna', NULL, NULL),
('S37A', 'DN', 'Airport ', 'Garia', NULL, NULL),
('S37A', 'UP', 'Airport ', 'Garia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops`
--

CREATE TABLE IF NOT EXISTS `bus_stops` (
  `stop_id` varchar(10) NOT NULL,
  `route_no` varchar(10) DEFAULT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `stop_name` varchar(100) DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`stop_id`),
  KEY `route_no_idx` (`route_no`,`direction`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_stops`
--

INSERT INTO `bus_stops` (`stop_id`, `route_no`, `direction`, `stop_name`, `lat`, `lon`, `radius`, `sequence`) VALUES
('S37A-DN-1', 'S37A', 'DN', 'Ultadanga/Hudco II', 22.591452, 88.393613, 120, 1),
('S37A-DN-10', 'S37A', 'DN', 'Ruby Hospital', 22.512787, 88.402032, 120, 10),
('S37A-DN-11', 'S37A', 'DN', 'Kalikapur', 22.5092839, 88.40181873, 120, 11),
('S37A-DN-12', 'S37A', 'DN', 'Ajaynagar', 22.496627, 88.398973, 120, 12),
('S37A-DN-13', 'S37A', 'DN', 'Patuli ', 22.472006, 88.389704, 120, 13),
('S37A-DN-14', 'S37A', 'DN', 'Dhalai Bridge', 22.465834, 88.393038, 120, 14),
('S37A-DN-15', 'S37A', 'DN', 'Kamalgazi', 22.45385, 88.394894, 120, 15),
('S37A-DN-2', 'S37A', 'DN', 'Hudco', 22.590906, 88.393587, 120, 2),
('S37A-DN-3', 'S37A', 'DN', 'Bengal Chemical', 22.580298, 88.401343, 120, 3),
('S37A-DN-4', 'S37A', 'DN', 'Mani Square', 22.577894, 88.401958, 120, 4),
('S37A-DN-5', 'S37A', 'DN', 'Kadapara', 22.570379, 88.404402, 120, 5),
('S37A-DN-6', 'S37A', 'DN', 'C I T Building', 22.56154, 88.408656, 120, 6),
('S37A-DN-7', 'S37A', 'DN', 'Metropolitan', 22.552282, 88.40637, 120, 7),
('S37A-DN-8', 'S37A', 'DN', 'Science city', 22.541855, 88.398406, 120, 8),
('S37A-DN-9', 'S37A', 'DN', 'Panchannya Gram', 22.525216, 88.396101, 120, 9),
('S37A-UP-1', 'S37A', 'UP', 'Kamalgazi', 22.453853, 88.394704, 120, 1),
('S37A-UP-10', 'S37A', 'UP', 'C I T Building', 22.5613662, 88.40858638, 120, 10),
('S37A-UP-11', 'S37A', 'UP', 'Kadapara', 22.570827, 88.403926, 120, 11),
('S37A-UP-12', 'S37A', 'UP', 'Mani Square', 22.578164, 88.40167, 120, 12),
('S37A-UP-13', 'S37A', 'UP', 'Bengal Chemical', 22.581108, 88.400811, 120, 13),
('S37A-UP-14', 'S37A', 'UP', 'Hudco', 22.58969945, 88.39351237, 120, 14),
('S37A-UP-15', 'S37A', 'UP', 'Ultadanga/Hudco II', 22.590639, 88.393139, 120, 15),
('S37A-UP-2', 'S37A', 'UP', 'Dhalai Bridge', 22.465839, 88.392808, 120, 2),
('S37A-UP-3', 'S37A', 'UP', 'Patuli ', 22.472132, 88.389406, 120, 3),
('S37A-UP-4', 'S37A', 'UP', 'Ajaynagar', 22.49707471, 88.39900017, 120, 4),
('S37A-UP-5', 'S37A', 'UP', 'Kalikapur', 22.50869151, 88.4014678, 120, 5),
('S37A-UP-6', 'S37A', 'UP', 'Ruby Hospital', 22.5146536, 88.40151565, 120, 6),
('S37A-UP-7', 'S37A', 'UP', 'Panchannya Gram', 22.525312, 88.395806, 120, 7),
('S37A-UP-8', 'S37A', 'UP', 'Science city', 22.539639, 88.397667, 120, 8),
('S37A-UP-9', 'S37A', 'UP', 'Metropolitan', 22.556733, 88.412091, 120, 9);

-- --------------------------------------------------------

--
-- Table structure for table `bus_stops_old`
--

CREATE TABLE IF NOT EXISTS `bus_stops_old` (
  `stop_id` int(20) NOT NULL AUTO_INCREMENT,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `stop_name` varchar(100) NOT NULL,
  `added_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`stop_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `bus_stops_old`
--

INSERT INTO `bus_stops_old` (`stop_id`, `lat`, `lon`, `stop_name`, `added_on`) VALUES
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
(22, 22.502857319721862, 88.54103151442496, 'newas', '2018-08-08 14:57:54'),
(23, 22.11, 88.54, 'try', '2018-08-09 06:51:14'),
(24, 22.564630618915086, 88.1548095200119, 'pppp', '2018-08-09 07:58:39'),
(25, 22.516432052486188, 88.45074836946105, 'a', '2018-08-09 10:25:53'),
(26, 22.496132887364602, 88.31822578645324, 'a', '2018-08-09 10:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `bus_tracking_log`
--

CREATE TABLE IF NOT EXISTS `bus_tracking_log` (
  `route_no` varchar(10) NOT NULL,
  `direction` varchar(2) DEFAULT NULL,
  `vehicle_no` varchar(10) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `stop_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`route_no`),
  KEY `route_no_live_tracking_idx` (`route_no`,`direction`),
  KEY `bus_stops_live_tracking_idx` (`stop_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus_stops`
--
ALTER TABLE `bus_stops`
  ADD CONSTRAINT `route_no` FOREIGN KEY (`route_no`, `direction`) REFERENCES `bus_route` (`route_no`, `direction`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bus_tracking_log`
--
ALTER TABLE `bus_tracking_log`
  ADD CONSTRAINT `bus_stops_live_tracking` FOREIGN KEY (`stop_id`) REFERENCES `bus_stops` (`stop_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `route_no_live_tracking` FOREIGN KEY (`route_no`, `direction`) REFERENCES `bus_route` (`route_no`, `direction`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
