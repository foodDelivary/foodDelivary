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
-- Database: `fooddelivarydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `fooddelivary`
--

CREATE TABLE IF NOT EXISTS `fooddelivary` (
  `PizzaID` int(11) NOT NULL AUTO_INCREMENT,
  `PizzaType` varchar(20) NOT NULL DEFAULT '"',
  `PizzaSize` varchar(6) NOT NULL DEFAULT '"',
  `PizzaPrice` float(10,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`PizzaID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `fooddelivary`
--

INSERT INTO `fooddelivary` (`PizzaID`, `PizzaType`, `PizzaSize`, `PizzaPrice`) VALUES
(1, 'Margherita', 'Medium', 12.00),
(2, 'Funghi ', 'Small', 5.00),
(5, 'vegetariana', 'small', 5.00),
(6, 'chills', 'large', 20.00),
(7, 'hotdog', 'middiu', 12.00),
(8, 'tomatina ', 'large', 20.00);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
