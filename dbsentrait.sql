-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2013 at 10:20 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbsentrait`
--

-- --------------------------------------------------------

--
-- Table structure for table `tsentrablogcategory`
--

CREATE TABLE IF NOT EXISTS `tsentrablogcategory` (
  `blogCategory_id` int(12) NOT NULL AUTO_INCREMENT,
  `blogCategory_Desc` varchar(50) DEFAULT NULL,
  `blogCategory_Loc` int(2) DEFAULT NULL,
  PRIMARY KEY (`blogCategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tsentrablogpost`
--

CREATE TABLE IF NOT EXISTS `tsentrablogpost` (
  `post_id` int(12) NOT NULL AUTO_INCREMENT,
  `post_title` varchar(50) DEFAULT NULL,
  `posted_by` int(12) DEFAULT NULL,
  `post_detail` varchar(1200) DEFAULT NULL,
  `post_category` int(12) DEFAULT NULL,
  `post_loction` int(1) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tsentraclint`
--

CREATE TABLE IF NOT EXISTS `tsentraclint` (
  `client_id` int(12) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(50) DEFAULT NULL,
  `project_name` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `posted_by` int(12) DEFAULT NULL,
  `posted_Date` datetime DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tsentracontactus`
--

CREATE TABLE IF NOT EXISTS `tsentracontactus` (
  `email` varchar(50) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `posted_date` datetime DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `detail_enquiry` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tsentranews`
--

CREATE TABLE IF NOT EXISTS `tsentranews` (
  `news_id` int(12) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(50) DEFAULT NULL,
  `news_body` varchar(500) DEFAULT NULL,
  `posted_by` int(12) DEFAULT NULL,
  `posted_date` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tsentranewscategory`
--

CREATE TABLE IF NOT EXISTS `tsentranewscategory` (
  `newscategory_id` int(12) NOT NULL AUTO_INCREMENT,
  `newscategory_title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`newscategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tsentrateam`
--

CREATE TABLE IF NOT EXISTS `tsentrateam` (
  `user_id` int(12) NOT NULL,
  `Full_Name` varchar(50) NOT NULL,
  `DOB` date NOT NULL,
  `TWITTER` varchar(50) NOT NULL,
  `FB` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `BIO` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tsentrauser`
--

CREATE TABLE IF NOT EXISTS `tsentrauser` (
  `user_id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
