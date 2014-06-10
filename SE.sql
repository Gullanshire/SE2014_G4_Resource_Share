-- phpMyAdmin SQL Dump
-- version 4.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2014-06-10 02:30:03
-- 服务器版本： 5.5.37-MariaDB-log
-- PHP Version: 5.5.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `SE`
--

-- --------------------------------------------------------

--
-- 表的结构 `crssFile`
--

CREATE TABLE IF NOT EXISTS `crssFile` (
`file_id` int(11) NOT NULL,
  `file_date` date DEFAULT NULL,
  `file_name` varchar(30) DEFAULT NULL,
  `file_type` enum('resource','homework') DEFAULT NULL,
  `file_size` float DEFAULT NULL,
  `file_tmpname` varchar(30) DEFAULT NULL,
  `file_level` int(11) DEFAULT NULL,
  `file_comment` varchar(100) DEFAULT NULL,
  `file_uploader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `crssHomework`
--

CREATE TABLE IF NOT EXISTS `crssHomework` (
  `hw_id` int(11) NOT NULL DEFAULT '0',
  `hw_level` int(11) DEFAULT NULL,
  `hw_title` varchar(20) NOT NULL,
  `hw_deadline` date DEFAULT NULL,
  `hw_assign_date` date DEFAULT NULL,
  `hw_requirement` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `crssHomework`
--

INSERT INTO `crssHomework` (`hw_id`, `hw_level`, `hw_title`, `hw_deadline`, `hw_assign_date`, `hw_requirement`) VALUES
(1, 5, 'hw1', '2014-06-28', '2014-06-01', NULL),
(2, 5, 'hw2', '2014-06-30', '2014-06-02', NULL),
(3, 5, 'hw3', '2014-06-25', '2014-06-07', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `crssResource`
--

CREATE TABLE IF NOT EXISTS `crssResource` (
  `reso_id` int(11) NOT NULL DEFAULT '0',
  `reso_famile` varchar(30) DEFAULT NULL,
  `reso_name` varchar(30) DEFAULT NULL,
  `reso_update_date` date DEFAULT NULL,
  `reso_level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `imsCourse`
--

CREATE TABLE IF NOT EXISTS `imsCourse` (
  `cuz_id` int(11) NOT NULL DEFAULT '0',
  `cuz_hour` int(11) DEFAULT NULL,
  `cuz_name` char(20) DEFAULT NULL,
  `cuz_credit` float DEFAULT NULL,
  `cuz_school` char(20) DEFAULT NULL,
  `cuz_content` text,
  `cuz_requirement` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imsCourse`
--

INSERT INTO `imsCourse` (`cuz_id`, `cuz_hour`, `cuz_name`, `cuz_credit`, `cuz_school`, `cuz_content`, `cuz_requirement`) VALUES
(1, 2, 'Discrete Math', 3, NULL, NULL, NULL),
(2, 3, 'Computer', 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `imsManager`
--

CREATE TABLE IF NOT EXISTS `imsManager` (
  `mgr_id` int(11) NOT NULL DEFAULT '0',
  `mgr_pwd` char(32) DEFAULT NULL,
  `mgr_right` int(11) DEFAULT NULL,
  `mgr_name` char(10) DEFAULT NULL,
  `mgr_dept` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `imsStudent`
--

CREATE TABLE IF NOT EXISTS `imsStudent` (
  `stu_id` int(11) NOT NULL DEFAULT '0',
  `stu_pwd` char(32) DEFAULT NULL,
  `stu_right` int(11) DEFAULT NULL,
  `stu_name` char(10) DEFAULT NULL,
  `stu_phone` int(11) DEFAULT NULL,
  `stu_school` char(20) DEFAULT NULL,
  `stu_major` char(20) DEFAULT NULL,
  `stu_grade` int(11) DEFAULT NULL,
  `stu_address` char(40) DEFAULT NULL,
  `stu_gpa` float DEFAULT NULL,
  `stu_credit` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imsStudent`
--

INSERT INTO `imsStudent` (`stu_id`, `stu_pwd`, `stu_right`, `stu_name`, `stu_phone`, `stu_school`, `stu_major`, `stu_grade`, `stu_address`, `stu_gpa`, `stu_credit`) VALUES
(1, '123456', 10, 'worry', NULL, NULL, 'cs', 2, NULL, 5, 5);

-- --------------------------------------------------------

--
-- 表的结构 `imsTeacher`
--

CREATE TABLE IF NOT EXISTS `imsTeacher` (
  `teac_id` int(11) NOT NULL DEFAULT '0',
  `teac_pwd` char(32) DEFAULT NULL,
  `teac_right` int(11) DEFAULT NULL,
  `teac_name` char(10) DEFAULT NULL,
  `teac_phone` int(11) DEFAULT NULL,
  `teac_dept` char(20) DEFAULT NULL,
  `teac_prof_title` char(20) DEFAULT NULL,
  `teac_resume` text,
  `teac_addr` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `imsTeacher`
--

INSERT INTO `imsTeacher` (`teac_id`, `teac_pwd`, `teac_right`, `teac_name`, `teac_phone`, `teac_dept`, `teac_prof_title`, `teac_resume`, `teac_addr`) VALUES
(1, '123456', 10, 'Baker', NULL, 'cs', NULL, NULL, NULL),
(2, '123456', 5, 'Robert', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `Re_crssFile_crssHomework`
--

CREATE TABLE IF NOT EXISTS `Re_crssFile_crssHomework` (
  `file_id` int(11) DEFAULT NULL,
  `hw_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `Re_crssFile_crssResource`
--

CREATE TABLE IF NOT EXISTS `Re_crssFile_crssResource` (
  `file_id` int(11) DEFAULT NULL,
  `reso_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `Re_crssHomework_imsCourse`
--

CREATE TABLE IF NOT EXISTS `Re_crssHomework_imsCourse` (
  `hw_id` int(11) DEFAULT NULL,
  `cuz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Re_crssHomework_imsCourse`
--

INSERT INTO `Re_crssHomework_imsCourse` (`hw_id`, `cuz_id`) VALUES
(1, 1),
(2, 1),
(3, 2);

-- --------------------------------------------------------

--
-- 表的结构 `Re_crssResource_imsCourse`
--

CREATE TABLE IF NOT EXISTS `Re_crssResource_imsCourse` (
  `reso_id` int(11) DEFAULT NULL,
  `cuz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `Re_imsStudent_imsCourse`
--

CREATE TABLE IF NOT EXISTS `Re_imsStudent_imsCourse` (
  `stu_id` int(11) DEFAULT NULL,
  `cuz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Re_imsStudent_imsCourse`
--

INSERT INTO `Re_imsStudent_imsCourse` (`stu_id`, `cuz_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `Re_imsTeacher_imsCourse`
--

CREATE TABLE IF NOT EXISTS `Re_imsTeacher_imsCourse` (
  `teac_id` int(11) DEFAULT NULL,
  `cuz_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `Re_imsTeacher_imsCourse`
--

INSERT INTO `Re_imsTeacher_imsCourse` (`teac_id`, `cuz_id`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `V_CountHomework`
--
CREATE TABLE IF NOT EXISTS `V_CountHomework` (
`cuz_id` int(11)
,`cuz_name` char(20)
,`count` bigint(21)
);
-- --------------------------------------------------------

--
-- 替换视图以便查看 `V_CountResourse`
--
CREATE TABLE IF NOT EXISTS `V_CountResourse` (
`cuz_id` int(11)
,`cuz_name` char(20)
,`count` bigint(21)
);
-- --------------------------------------------------------

--
-- 视图结构 `V_CountHomework`
--
DROP TABLE IF EXISTS `V_CountHomework`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `V_CountHomework` AS select `a`.`cuz_id` AS `cuz_id`,`a`.`cuz_name` AS `cuz_name`,count(0) AS `count` from (`imsCourse` `a` join `Re_crssHomework_imsCourse` `b`) where (`a`.`cuz_id` = `b`.`cuz_id`) group by `b`.`cuz_id`;

-- --------------------------------------------------------

--
-- 视图结构 `V_CountResourse`
--
DROP TABLE IF EXISTS `V_CountResourse`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `V_CountResourse` AS select `a`.`cuz_id` AS `cuz_id`,`a`.`cuz_name` AS `cuz_name`,count(0) AS `count` from (`imsCourse` `a` join `Re_crssResource_imsCourse` `b`) where (`a`.`cuz_id` = `b`.`cuz_id`) group by `b`.`cuz_id`;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crssFile`
--
ALTER TABLE `crssFile`
 ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `crssHomework`
--
ALTER TABLE `crssHomework`
 ADD PRIMARY KEY (`hw_id`);

--
-- Indexes for table `crssResource`
--
ALTER TABLE `crssResource`
 ADD PRIMARY KEY (`reso_id`);

--
-- Indexes for table `imsCourse`
--
ALTER TABLE `imsCourse`
 ADD PRIMARY KEY (`cuz_id`);

--
-- Indexes for table `imsManager`
--
ALTER TABLE `imsManager`
 ADD PRIMARY KEY (`mgr_id`);

--
-- Indexes for table `imsStudent`
--
ALTER TABLE `imsStudent`
 ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `imsTeacher`
--
ALTER TABLE `imsTeacher`
 ADD PRIMARY KEY (`teac_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crssFile`
--
ALTER TABLE `crssFile`
MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
