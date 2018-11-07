-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
-- ------------------------------------------------------
-- Server version	5.6.39.0

--
-- Current Database: `zity`
--

CREATE DATABASE IF NOT EXISTS `zity`;

USE `zity`;

--
-- Table structure for table `zity_cars`
--

DROP TABLE IF EXISTS `zity_cars`;
CREATE TABLE `zity_cars` (
  `CAR_ID` int(11) DEFAULT NULL,
  `LICENSE_PLATE` varchar(255) NOT NULL,
  `VIN` varchar(255) NOT NULL,
  PRIMARY KEY (`LICENSE_PLATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Table structure for table `zity_users`
--

DROP TABLE IF EXISTS `zity_users`;
CREATE TABLE `zity_users` (
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PHONE` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


