-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 15:16:15
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csv_db`
--
CREATE DATABASE IF NOT EXISTS `csv_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `csv_db`;

-- --------------------------------------------------------

--
-- 表的结构 `tbl_name`
--

CREATE TABLE `tbl_name` (
  `COL 1` int(6) DEFAULT NULL,
  `COL 2` varchar(6) DEFAULT NULL,
  `COL 3` varchar(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `test`;

-- --------------------------------------------------------

--
-- 表的结构 `host`
--

CREATE TABLE `host` (
  `IDnumber` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Rnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `host`
--

INSERT INTO `host` (`IDnumber`, `Rnumber`) VALUES
('000011', 3),
('000017', 6),
('000001', 15),
('000014', 4),
('000002', 18),
('000015', 7);

-- --------------------------------------------------------

--
-- 表的结构 `id_fanid`
--

CREATE TABLE `id_fanid` (
  `IDnumber` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FIDnumber` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `id_fanid`
--

INSERT INTO `id_fanid` (`IDnumber`, `FIDnumber`) VALUES
('000001', '000012'),
('000017', '001111'),
('000011', '000014'),
('000012', '000015'),
('000002', '000017');

-- --------------------------------------------------------

--
-- 表的结构 `present`
--

CREATE TABLE `present` (
  `Pname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PPrice` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `present`
--

INSERT INTO `present` (`Pname`, `PPrice`) VALUES
('火箭', 500),
('飞机', 100),
('番茄', 10),
('鸡蛋', 1),
('666', 1);

-- --------------------------------------------------------

--
-- 表的结构 `rpresent`
--

CREATE TABLE `rpresent` (
  `Rnumber` int(11) NOT NULL,
  `Pname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `rpresent`
--

INSERT INTO `rpresent` (`Rnumber`, `Pname`, `Pnumber`) VALUES
(4, '飞机', 5),
(4, '番茄', 3),
(4, '666', 10),
(6, '火箭', 1),
(6, '飞机', 2),
(3, '鸡蛋', 3),
(3, '番茄', 1);

-- --------------------------------------------------------

--
-- 表的结构 `studio`
--

CREATE TABLE `studio` (
  `Rnumber` int(11) NOT NULL,
  `IDnumber` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Wnumber` int(11) DEFAULT NULL,
  `PChannel` char(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `studio`
--

INSERT INTO `studio` (`Rnumber`, `IDnumber`, `Wnumber`, `PChannel`) VALUES
(3, '000011', 4, '美食'),
(6, '000017', 100, '游戏'),
(15, '000001', 55, '音乐'),
(4, '000014', 68, '体育'),
(18, '000002', 77, '美食'),
(7, '000015', 756, '游戏');

-- --------------------------------------------------------

--
-- 表的结构 `trueinfo`
--

CREATE TABLE `trueinfo` (
  `Tid` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tsex` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDnumber` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `trueinfo`
--

INSERT INTO `trueinfo` (`Tid`, `Tname`, `Tsex`, `IDnumber`) VALUES
('320223', '阿潘', '女', NULL),
('320224', '王', '女', NULL),
('320225', '搜狗', '女', NULL),
('320226', '被子', '女', NULL),
('320227', '梁', '女', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `IDnumber` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Uname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL,
  `Vcurrency` int(11) NOT NULL,
  `Fnumber` int(11) NOT NULL,
  `Followee` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`IDnumber`, `Uname`, `Level`, `Vcurrency`, `Fnumber`, `Followee`, `total`) VALUES
('000001', '姗姗', 6, 0, 20, 50, 600),
('000002', '嘟嘟', 2, 30, 10, 70, 200),
('000011', '晃晃', 2, 100, 552, 20, 200),
('000012', '狗贼', 100, 100000, 66666, 8, 200000),
('000014', '小老弟', 3, 20, 10, 7, 330),
('000015', '增增木', 0, 20, 666, 13, 40),
('000017', '小老哥', 8, 4000, 177, 70, 820),
('001111', '弄哦', 4, 777, 69488, 78, 400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`IDnumber`);

--
-- Indexes for table `id_fanid`
--
ALTER TABLE `id_fanid`
  ADD PRIMARY KEY (`IDnumber`);

--
-- Indexes for table `present`
--
ALTER TABLE `present`
  ADD PRIMARY KEY (`Pname`);

--
-- Indexes for table `rpresent`
--
ALTER TABLE `rpresent`
  ADD PRIMARY KEY (`Rnumber`,`Pname`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`Rnumber`);

--
-- Indexes for table `trueinfo`
--
ALTER TABLE `trueinfo`
  ADD PRIMARY KEY (`Tid`),
  ADD UNIQUE KEY `Tid` (`Tid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDnumber`);
--
-- Database: `uniquezhibo`
--
CREATE DATABASE IF NOT EXISTS `uniquezhibo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `uniquezhibo`;

-- --------------------------------------------------------

--
-- 表的结构 `host`
--

CREATE TABLE `host` (
  `IDnumber` int(11) NOT NULL,
  `Rnumber` int(11) NOT NULL,
  `PChannel` char(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `host`
--

INSERT INTO `host` (`IDnumber`, `Rnumber`, `PChannel`) VALUES
(10111, 5, '体育'),
(10017, 4, '音乐'),
(10015, 3, '教育'),
(41643, 8378, '美食'),
(10001, 7372, '音乐');

-- --------------------------------------------------------

--
-- 表的结构 `id_fanid`
--

CREATE TABLE `id_fanid` (
  `IDnumber` int(11) NOT NULL,
  `FIDnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `id_fanid`
--

INSERT INTO `id_fanid` (`IDnumber`, `FIDnumber`) VALUES
(10005, 10001),
(10005, 10002),
(10005, 10011),
(10005, 10014),
(10012, 10005),
(10012, 10014),
(10012, 10111),
(10014, 10002),
(10014, 10005),
(10014, 10017),
(10014, 10111),
(10015, 10012),
(10015, 10017),
(10017, 10014),
(10111, 10011),
(10111, 10015);

-- --------------------------------------------------------

--
-- 表的结构 `present`
--

CREATE TABLE `present` (
  `Pname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PPrice` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `present`
--

INSERT INTO `present` (`Pname`, `PPrice`) VALUES
('幸运戒指', 5),
('666', 1),
('鸡蛋', 1),
('番茄', 10),
('飞机', 100),
('火箭', 500);

-- --------------------------------------------------------

--
-- 表的结构 `rpresent`
--

CREATE TABLE `rpresent` (
  `Rnumber` int(11) NOT NULL,
  `Pname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `studio`
--

CREATE TABLE `studio` (
  `Rnumber` int(11) NOT NULL,
  `Wnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `studio`
--

INSERT INTO `studio` (`Rnumber`, `Wnumber`) VALUES
(4, 1);

-- --------------------------------------------------------

--
-- 表的结构 `trueinfo`
--

CREATE TABLE `trueinfo` (
  `Tid` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Tsex` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IDnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `trueinfo`
--

INSERT INTO `trueinfo` (`Tid`, `Tname`, `Tsex`, `IDnumber`) VALUES
('320226', '李梅梅', '女', 10015),
('320225', '李华', '男', 10001),
('320224', '赵华', '男', 10012),
('320223', '赵玉', '女', 10017),
('320222', '赵竹林', '男', NULL),
('320221', '李四', '男', 10014),
('320220', '张三', '男', 10005),
('320227', '张明', '男', NULL),
('320228', '李铭', '男', 10111);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `IDnumber` int(11) NOT NULL,
  `Uname` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL,
  `VCurrency` int(11) NOT NULL,
  `Fnumber` int(11) NOT NULL,
  `Followee` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `password` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel` char(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`IDnumber`, `Uname`, `Level`, `VCurrency`, `Fnumber`, `Followee`, `total`, `password`, `tel`) VALUES
(41643, '测测', 100, 10000, 0, 0, 10000, '123456', '78945874693'),
(10005, '我爱读书', 13, 1, 4, 2, 1310, '123456', '13599990008'),
(10111, '弄哦', 5, 871, 2, 2, 506, '123456', '13599990007'),
(10017, '小老哥', 8, 4000, 1, 2, 820, '123456', '13599990006'),
(10015, '增增木', 0, 25, 2, 1, 45, '123456', '13599990005'),
(10014, '保研南农', 9, 758, 4, 3, 1068, '123456', '13599990004'),
(10012, '南农', 100, 100000, 3, 1, 200000, '123456', '13599990003'),
(10011, '我要去清华', 13, 1243, 0, 2, 1343, '123456', '13599990002'),
(10001, '我要考北大', 30, 200, 0, 1, 3007, '123456', '13599990001'),
(10002, '我要考南大', 8, 667, 0, 2, 837, '123456', '13599990000');

-- --------------------------------------------------------

--
-- 表的结构 `watch`
--

CREATE TABLE `watch` (
  `IDnumber` int(11) NOT NULL,
  `Rnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `watch`
--

INSERT INTO `watch` (`IDnumber`, `Rnumber`) VALUES
(10017, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`IDnumber`),
  ADD UNIQUE KEY `Rnumber` (`Rnumber`);

--
-- Indexes for table `id_fanid`
--
ALTER TABLE `id_fanid`
  ADD PRIMARY KEY (`IDnumber`,`FIDnumber`),
  ADD KEY `FIDnumber` (`FIDnumber`);

--
-- Indexes for table `present`
--
ALTER TABLE `present`
  ADD PRIMARY KEY (`Pname`),
  ADD UNIQUE KEY `Pname` (`Pname`);

--
-- Indexes for table `rpresent`
--
ALTER TABLE `rpresent`
  ADD PRIMARY KEY (`Rnumber`,`Pname`),
  ADD KEY `Pname` (`Pname`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`Rnumber`),
  ADD UNIQUE KEY `Rnumber` (`Rnumber`);

--
-- Indexes for table `trueinfo`
--
ALTER TABLE `trueinfo`
  ADD PRIMARY KEY (`Tid`),
  ADD UNIQUE KEY `Tid` (`Tid`),
  ADD KEY `IDnumber` (`IDnumber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDnumber`);

--
-- Indexes for table `watch`
--
ALTER TABLE `watch`
  ADD PRIMARY KEY (`IDnumber`),
  ADD KEY `Rnumber` (`Rnumber`);
--
-- Database: `zhibo1`
--
CREATE DATABASE IF NOT EXISTS `zhibo1` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `zhibo1`;

-- --------------------------------------------------------

--
-- 表的结构 `host1`
--

CREATE TABLE `host1` (
  `Rnumber` int(11) NOT NULL,
  `IDnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `host1`
--

INSERT INTO `host1` (`Rnumber`, `IDnumber`) VALUES
(5, 7),
(7, 25),
(14, 32);

-- --------------------------------------------------------

--
-- 表的结构 `rpresent`
--

CREATE TABLE `rpresent` (
  `Rnumber` int(10) NOT NULL,
  `Pname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Pnumber` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `rpresent`
--

INSERT INTO `rpresent` (`Rnumber`, `Pname`, `Pnumber`) VALUES
(3, '飞机', 22),
(3, '番茄', 59),
(6, '飞机', 55),
(6, '番茄', 55),
(6, '66', 35),
(15, '番茄', 745);

-- --------------------------------------------------------

--
-- 表的结构 `studio`
--

CREATE TABLE `studio` (
  `Rnuber` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IDnumber` char(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Wnumber` int(11) DEFAULT NULL,
  `PChannel` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `studio`
--

INSERT INTO `studio` (`Rnuber`, `IDnumber`, `Wnumber`, `PChannel`) VALUES
('3', '11', 4, '美食'),
('6', '17', 100, '游戏'),
('15', '1', 55, '音乐'),
('4', '14', 68, '体育'),
('18', '2', 77, '美食'),
('7', '15', 756, '游戏');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `IDnumber` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Uname` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL,
  `Vcurrency` int(11) NOT NULL,
  `Fnumber` int(11) NOT NULL,
  `Followee` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`IDnumber`, `Uname`, `Level`, `Vcurrency`, `Fnumber`, `Followee`) VALUES
('1', '姗姗', 0, 0, 20, 50),
('2', '嘟嘟', 2, 30, 10, 70),
('11', '晃晃', 8, 100, 552, 20),
('14', '小老弟', 10, 100, 10, 7),
('15', '增增木', 60, 70, 666, 13),
('17', '小老哥', 10, 1999, 177, 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `host1`
--
ALTER TABLE `host1`
  ADD PRIMARY KEY (`Rnumber`);

--
-- Indexes for table `rpresent`
--
ALTER TABLE `rpresent`
  ADD PRIMARY KEY (`Rnumber`,`Pname`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`Rnuber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDnumber`);
--
-- Database: `zhibodata`
--
CREATE DATABASE IF NOT EXISTS `zhibodata` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `zhibodata`;

-- --------------------------------------------------------

--
-- 表的结构 `host`
--

CREATE TABLE `host` (
  `IDnumber` int(11) NOT NULL,
  `Rnumber` int(11) NOT NULL,
  `PChannel` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `host`
--

INSERT INTO `host` (`IDnumber`, `Rnumber`, `PChannel`) VALUES
(10005, 1, '美食'),
(10014, 2, '科技'),
(10015, 3, '教育'),
(10017, 4, '音乐'),
(10111, 5, '体育'),
(10012, 6, '游戏');

-- --------------------------------------------------------

--
-- 表的结构 `id_fanid`
--

CREATE TABLE `id_fanid` (
  `IDnumber` int(11) NOT NULL,
  `FIDnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `id_fanid`
--

INSERT INTO `id_fanid` (`IDnumber`, `FIDnumber`) VALUES
(10005, 10001),
(10005, 10002),
(10005, 10011),
(10005, 10014),
(10014, 10002),
(10014, 10005),
(10014, 10017),
(10014, 10111),
(10015, 10001),
(10015, 10012),
(10015, 10017),
(10017, 10012),
(10017, 10015),
(10017, 10111),
(10111, 10011),
(10111, 10015);

-- --------------------------------------------------------

--
-- 表的结构 `present`
--

CREATE TABLE `present` (
  `Pname` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `PPrice` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `present`
--

INSERT INTO `present` (`Pname`, `PPrice`) VALUES
('火箭', 500),
('飞机', 100),
('番茄', 10),
('鸡蛋', 1),
('666', 1),
('幸运戒指', 5);

-- --------------------------------------------------------

--
-- 表的结构 `rpresent`
--

CREATE TABLE `rpresent` (
  `Rnumber` int(11) NOT NULL,
  `Pname` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Pnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `rpresent`
--

INSERT INTO `rpresent` (`Rnumber`, `Pname`, `Pnumber`) VALUES
(1, '飞机', 1),
(1, '番茄', 2),
(2, '火箭', 3),
(2, '幸运戒指', 3),
(3, '鸡蛋', 2),
(3, '番茄', 1),
(4, '番茄', 2),
(4, '飞机', 1),
(5, '火箭', 1),
(5, '666', 1),
(6, '飞机', 1),
(6, '番茄', 2);

-- --------------------------------------------------------

--
-- 表的结构 `studio`
--

CREATE TABLE `studio` (
  `Rnumber` int(11) NOT NULL,
  `Wnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `studio`
--

INSERT INTO `studio` (`Rnumber`, `Wnumber`) VALUES
(1, 2),
(2, 1),
(3, 2),
(4, 1),
(5, 1),
(6, 2);

-- --------------------------------------------------------

--
-- 表的结构 `trueinfo`
--

CREATE TABLE `trueinfo` (
  `Tid` char(20) COLLATE utf8_unicode_ci NOT NULL,
  `Tname` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Tsex` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IDnumber` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `trueinfo`
--

INSERT INTO `trueinfo` (`Tid`, `Tname`, `Tsex`, `IDnumber`) VALUES
('320220', '张三', '男', 10005),
('320221', '李四', '男', 10014),
('320222', '赵竹林', '男', NULL),
('320223', '赵玉', '女', 10017),
('320224', '赵华', '男', 10012),
('320225', '李华', '男', NULL),
('320226', '李梅梅', '女', 10015),
('320227', '张明', '男', NULL),
('320228', '李铭', '男', 10111);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `IDnumber` int(11) NOT NULL,
  `Uname` char(10) COLLATE utf8_unicode_ci NOT NULL,
  `Level` int(11) NOT NULL,
  `VCurrency` int(11) NOT NULL,
  `Fnumber` int(11) NOT NULL,
  `Followee` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `password` char(11) COLLATE utf8_unicode_ci NOT NULL,
  `tel` char(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`IDnumber`, `Uname`, `Level`, `VCurrency`, `Fnumber`, `Followee`, `total`, `password`, `tel`) VALUES
(10002, '我要考南大', 8, 667, 0, 2, 837, '123456', '13599990000'),
(10001, '我要考北大', 30, 200, 0, 2, 3007, '123456', '13599990001'),
(10011, '我要去清华', 13, 1243, 0, 2, 1343, '123456', '13599990002'),
(10012, '南农', 120, 100000, 3, 2, 200000, '123456', '13599990003'),
(10014, '保研南农', 10, 647, 4, 2, 957, '123456', '13599990004'),
(10015, '增增木', 0, 20, 3, 2, 40, '123456', '13599990005'),
(10017, '小老哥', 8, 4000, 3, 2, 820, '123456', '13599990006'),
(10111, '弄哦', 4, 777, 2, 3, 400, '123456', '13599990007'),
(10005, '我爱读书', 12, 111, 4, 2, 1200, '123456', '13599990008');

-- --------------------------------------------------------

--
-- 表的结构 `watch`
--

CREATE TABLE `watch` (
  `IDnumber` int(11) NOT NULL,
  `Rnumber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `watch`
--

INSERT INTO `watch` (`IDnumber`, `Rnumber`) VALUES
(10005, 1),
(10002, 1),
(10014, 2),
(10001, 6),
(10015, 3),
(10011, 3),
(10017, 4),
(10111, 5),
(10012, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`IDnumber`),
  ADD UNIQUE KEY `Rnumber` (`Rnumber`);

--
-- Indexes for table `id_fanid`
--
ALTER TABLE `id_fanid`
  ADD PRIMARY KEY (`IDnumber`,`FIDnumber`),
  ADD KEY `FIDnumber` (`FIDnumber`);

--
-- Indexes for table `present`
--
ALTER TABLE `present`
  ADD PRIMARY KEY (`Pname`),
  ADD UNIQUE KEY `Pname` (`Pname`);

--
-- Indexes for table `rpresent`
--
ALTER TABLE `rpresent`
  ADD PRIMARY KEY (`Rnumber`,`Pname`),
  ADD KEY `Pname` (`Pname`);

--
-- Indexes for table `studio`
--
ALTER TABLE `studio`
  ADD PRIMARY KEY (`Rnumber`),
  ADD UNIQUE KEY `Rnumber` (`Rnumber`);

--
-- Indexes for table `trueinfo`
--
ALTER TABLE `trueinfo`
  ADD PRIMARY KEY (`Tid`),
  ADD UNIQUE KEY `Tid` (`Tid`),
  ADD KEY `IDnumber` (`IDnumber`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`IDnumber`),
  ADD UNIQUE KEY `tel` (`tel`);

--
-- Indexes for table `watch`
--
ALTER TABLE `watch`
  ADD PRIMARY KEY (`IDnumber`),
  ADD KEY `Rnumber` (`Rnumber`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
