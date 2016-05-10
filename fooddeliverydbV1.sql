-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2016 at 11:01 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fooddeliverydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fooddelivery`
--

CREATE TABLE IF NOT EXISTS `fooddelivery` (
  `PizzaID` int(11) NOT NULL AUTO_INCREMENT,
  `PizzaType` varchar(20) NOT NULL DEFAULT '"',
  `PizzaSize` varchar(6) NOT NULL DEFAULT '"',
  `PizzaPrice` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`PizzaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `fooddelivery`
--

INSERT INTO `fooddelivery` (`PizzaID`, `PizzaType`, `PizzaSize`, `PizzaPrice`) VALUES
(1, 'Margherita', 'Medium', 12.00),
(2, 'Funghi ', 'Small', 5.00),
(3, 'Vegetariana', 'Small', 5.00),
(4, 'Chills', 'Large', 20.00),
(5, 'Hotdog', 'Medium', 12.00),
(6, 'Margherita', 'Small', 12.00),
(7, 'Tomatina ', 'Large', 20.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
