-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2019-05-16 08:40:45
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
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity` varchar(20) NOT NULL,
  `name` varchar(10) DEFAULT NULL,
  `location` varchar(20) DEFAULT NULL,
  `start` varchar(50) DEFAULT NULL,
  `time` varchar(5) DEFAULT NULL,
  `state` varchar(10) NOT NULL,
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`g_id`, `identity`, `name`, `location`, `start`, `time`, `state`) VALUES
(1, 'KBSXGKOAA5601', '锡膏', 'SMT仓库1区3号回温区', '2018-03-17 10:05:43', '8H', 'OK'),
(2, 'KBSXGKOAA5602', '锡膏', 'SMT仓库1区3号回温区', '2018-03-17 10:05:43', '8H', 'OK'),
(3, 'KBSXGKOAA5603', '锡膏', 'SMT仓库1区3号回温区', '2018-04-27 11:50:41', '8H', '作废'),
(4, 'KBSXGKOAA5604', '锡膏', 'SMT仓库1区3号回温区', '2018-04-27 11:50:41', '8H', '作废'),
(5, 'KBSXGKOAA5605', '锡膏', 'SMT仓库1区3号回温区', '2018-04-27 11:50:41', '8H', '作废'),
(6, 'KBSXGKOAA5606', '锡膏', 'SMT仓库1区3号回温区', '2018-03-30 16:33:38', '8H', '作废'),
(7, 'KBSXGKOAA5607', '红胶', 'SMT仓库1区3号回温区', '2018-03-30 16:33:45', '8H', '作废'),
(8, 'KBSXGKOAA5608', '红胶', 'SMT仓库1区3号回温区', '2018-04-27 11:50:46', '8H', '作废'),
(9, 'KBSXGKOAA5609', '红胶', 'SMT仓库1区3号回温区', '2018-03-30 16:33:45', '8H', '作废'),
(10, 'KBSXGKOAA5610', '红胶', 'SMT仓库1区3号回温区', '2018-03-17 10:05:43', '8H', '作废'),
(11, 'KBSXGKOAA5611', '红胶', 'SMT仓库1区3号回温区', '2018-03-17 10:05:43', '8H', '作废'),
(12, 'KBSXGKOAA5612', '红胶', 'SMT仓库1区3号回温区', '2018-03-17 10:05:43', '8H', 'OK'),
(13, 'KBSXGKOAA5613', '锡膏', 'SMT仓库1区3号回温区', '2018-03-30 16:33:38', '8H', '作废'),
(14, 'KBSXGKOAA5614', '锡膏', 'SMT仓库1区3号回温区', '2018-04-27 11:50:41', '8H', '作废'),
(15, 'KBSXGKOAA5615', '红胶', 'SMT仓库1区3号回温区', '2018-04-27 11:50:46', '8H', '作废'),
(16, 'KBSXGKOAA5616', '红胶', 'SMT仓库1区3号回温区', '2018-04-27 11:50:46', '8H', '作废'),
(17, 'KBSXGKOAA5617', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:41:49', '8H', '冷冻'),
(18, 'KBSXGKOAA5618', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:42:48', '8H', '冷冻'),
(19, 'KBSXGKOAA5619', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '常温'),
(20, 'KBSXGKOAA5620', '锡膏', 'SMT仓库1区3号回温区', '2018-10-25 22:38:52', '8H', '回温'),
(21, 'KBSXGKOAA5621', '锡膏', 'SMT仓库1区3号回温区', '2018-10-25 22:36:34', '8H', '冷冻'),
(22, 'KBSXGKOAA5622', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '常温'),
(23, 'KBSXGKOAA5623', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '常温'),
(24, 'KBSXGKOAA5624', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '常温'),
(25, 'KBSXGKOAA5625', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '常温'),
(26, 'KBSXGKOAA5626', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '可使用'),
(27, 'KBSXGKOAA5627', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '可使用'),
(28, 'KBSXGKOAA5628', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:32:00', '8H', '可使用'),
(29, 'KBSXGKOAA5629', '红胶', 'SMT仓库1区3号回温区', '2018-04-06 10:32:00', '8H', '可使用'),
(30, 'KBSXGKOAA5630', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:41:54', '8H', '使用完成'),
(31, 'KBSXGKOAA5631', '红胶', 'SMT仓库1区3号回温区', '2018-04-08 10:41:54', '8H', '使用完成'),
(32, 'KBSXGKOAA5632', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:38:56', '8H', '使用完成'),
(33, 'KBSXGKOAA5633', '锡膏', 'SMT仓库1区3号回温区', '2018-04-08 10:38:56', '8H', '使用完成');

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

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `usercoding` varchar(25) NOT NULL,
  `department` varchar(25) NOT NULL,
  `projectname` varchar(25) DEFAULT NULL,
  `company` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`u_id`, `username`, `password`, `usercoding`, `department`, `projectname`, `company`, `phone`) VALUES
(1, 'gll', '123', 'BAT', 'IT部', 'XIGAO', '江苏百度分公司', '18896602523'),
(2, 'hjh', '123456', 'ALBB', '部门经理', 'DEMO', '江苏翼博科技南京分公司', '17509435631'),
(3, 'ke', 'wani52', 'KMA', '系统管理', 'HONGJIAO', '江苏阿里巴巴分公司', '15865423658'),
(4, 'main', 'wanwanwanwan', 'LJGH', '人事', NULL, '江苏腾讯分公司', '17752655236'),
(5, 'lima', 'wujnff', 'IOLP', '财务', 'DEMO', '江苏百度分公司', '17756249635');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
