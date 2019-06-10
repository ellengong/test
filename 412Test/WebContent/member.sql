-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-05-16 08:39:22
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xigao`
--

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `enter_year` int(11) NOT NULL,
  `major` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `job` varchar(50) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `hometown` varchar(30) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `weixin` varchar(20) DEFAULT NULL,
  `stu_no` varchar(30) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `member_id` (`member_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`member_id`, `name`, `phone_number`, `enter_year`, `major`, `company`, `job`, `address`, `gender`, `hometown`, `qq`, `weixin`, `stu_no`, `birthday`) VALUES
(5, 'ellen', '123456', 2009, '计算机', '教师', '教师', NULL, 'female', '江苏苏州', NULL, '223', '', '2019-05'),
(6, 'tom', '4567889', 2008, 'english', '银行', '', NULL, 'male', 'jiangsu', NULL, '123', '2012', '2018-05');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
