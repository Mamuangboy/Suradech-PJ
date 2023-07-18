-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 06, 2022 at 01:03 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`) VALUES
(1, 'guitar'),
(2, 'Bass'),
(3, 'Drum'),
(4, 'keyboard'),
(5, 'guitarTools'),
(6, 'BassTools');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(50) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Tel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `Address`, `Tel`) VALUES
(1, 'Richard', 'England', 1112843390),
(2, 'Suchart', 'Thailand', 668234567);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`OrderDetailID`, `OrderID`, `ProductID`, `Quantity`) VALUES
(1, 1, 1, 1),
(2, 2, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `OrderDate` int(10) NOT NULL,
  `CustomerID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `ProductID`, `OrderDate`, `CustomerID`) VALUES
(1, 1, 12032022, 1),
(2, 7, 6112022, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductsID` int(11) NOT NULL,
  `ProductName` varchar(200) NOT NULL,
  `CategoryID` int(11) NOT NULL,
  `Unit` int(11) NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductsID`, `ProductName`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Squier Bullet Mustang', 1, 1, 6500),
(2, 'Squier Classic Vibe \'60s Stratocaster', 1, 1, 14850),
(3, 'Gretsch G5222 Electromatic Double Jet', 1, 1, 19900),
(4, 'Epiphone Les Paul Standard', 1, 1, 24000),
(5, 'PRS SE Custom 24', 1, 1, 27300),
(6, 'Fender Vintera ‘50s Precision Ba', 2, 1, 37800),
(7, 'Sterling by Music Man StingRay4', 2, 1, 13500),
(8, 'Epiphone Thunderbird 60s Bass', 2, 1, 15463),
(9, 'Ibanez SRMS805', 2, 1, 28510),
(10, 'Yamaha TRBX 305', 2, 1, 16200),
(11, 'Gipsun Guitar String', 5, 6, 128),
(11, 'Gipsun Bass String', 6, 4, 128);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
