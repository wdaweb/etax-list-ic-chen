-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2019-11-15 10:15:01
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `receipt_lot`
--

-- --------------------------------------------------------

--
-- 資料表結構 `lottery`
--

CREATE TABLE `lottery` (
  `id` int(10) NOT NULL,
  `year` int(5) NOT NULL,
  `month` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `special` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grand` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first1` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first2` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first3` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra1` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra2` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra3` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `lottery`
--

INSERT INTO `lottery` (`id`, `year`, `month`, `special`, `grand`, `first1`, `first2`, `first3`, `extra1`, `extra2`, `extra3`) VALUES
(1, 2019, '7,8', '45698621', '19614436', '96182420', '47464012', '62781818', '928', '899', ''),
(2, 2019, '5,6', '46356460', '56337787', '93339845', '83390355', '80431063', '984', '240', ''),
(3, 2019, '3,4', '03802602', '00708299', '33877270', '21772506', '61786409', '136', '022', ''),
(4, 2019, '1,2', '00106725', '90819218', '13440631', '26650552', '09775722', '809', '264', ''),
(5, 2018, '11,12', '88515559', '47551146', '83513656', '85250862', '61472404', '185', '079', '442'),
(7, 2018, '9,10', '45698621', '19614436', '96182420', '47464012', '62781818', '928', '899', '');

-- --------------------------------------------------------

--
-- 資料表結構 `receipt`
--

CREATE TABLE `receipt` (
  `id` int(10) NOT NULL,
  `year` int(5) NOT NULL COMMENT '年',
  `month` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '期數',
  `r_en` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'EN號碼 ',
  `r_num` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '數字號碼',
  `amount` int(10) NOT NULL COMMENT '金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `receipt`
--

INSERT INTO `receipt` (`id`, `year`, `month`, `r_en`, `r_num`, `amount`) VALUES
(1, 2019, '11,12', 'GX', '72912271', 585),
(2, 2019, '11,12', 'NG', '64675444', 842),
(3, 2019, '11,12', 'UC', '59989082', 1093),
(4, 2019, '11,12', 'QR', '64374610', 129),
(5, 2019, '11,12', 'LZ', '82647504', 990),
(6, 2019, '11,12', 'SW', '57741905', 258),
(7, 2019, '11,12', 'WO', '96901700', 467),
(8, 2019, '11,12', 'IE', '08511996', 1750),
(9, 2019, '11,12', 'JT', '74948006', 1264),
(10, 2019, '11,12', 'QL', '11272376', 229),
(11, 2019, '11,12', 'XW', '47672059', 1739),
(12, 2019, '11,12', 'JO', '13267253', 680),
(13, 2019, '11,12', 'YD', '72000404', 693),
(14, 2019, '11,12', 'FU', '09895456', 1501),
(15, 2019, '11,12', 'HL', '69882634', 1453),
(16, 2019, '11,12', 'FK', '38984981', 579),
(17, 2019, '11,12', 'TC', '02133893', 1769),
(18, 2019, '11,12', 'FR', '54114587', 44),
(19, 2019, '11,12', 'YN', '49188040', 1419),
(20, 2019, '11,12', 'UN', '01560160', 220),
(21, 2019, '11,12', 'SY', '91309070', 1027),
(22, 2019, '11,12', 'DN', '58054526', 1213),
(23, 2019, '11,12', 'AP', '93156875', 53),
(24, 2019, '11,12', 'LU', '53328648', 1440),
(25, 2019, '11,12', 'QA', '12724755', 926),
(26, 2019, '11,12', 'XD', '02694724', 605),
(27, 2019, '11,12', 'QX', '63874493', 589),
(28, 2019, '11,12', 'SC', '52423469', 949),
(29, 2019, '11,12', 'XR', '09545395', 448),
(30, 2019, '11,12', 'QM', '08842499', 631),
(31, 2019, '11,12', 'MR', '11508559', 404),
(32, 2019, '11,12', 'JN', '37595751', 1453),
(33, 2019, '11,12', 'SK', '55948852', 782),
(34, 2019, '11,12', 'IF', '27939135', 1650),
(35, 2019, '11,12', 'HP', '06641053', 133),
(36, 2019, '11,12', 'YO', '04465453', 145),
(37, 2019, '11,12', 'KR', '56641460', 749),
(38, 2019, '11,12', 'OV', '72867722', 1520),
(39, 2019, '11,12', 'DO', '32143884', 62),
(40, 2019, '11,12', 'RA', '03543466', 1097),
(41, 2019, '11,12', 'UO', '88592921', 1694),
(42, 2019, '11,12', 'RQ', '75045515', 1992),
(43, 2019, '11,12', 'GC', '36849784', 1793),
(44, 2019, '11,12', 'TG', '14675468', 1106),
(45, 2019, '11,12', 'XX', '50658380', 142),
(46, 2019, '11,12', 'XC', '68058611', 577),
(47, 2019, '11,12', 'DB', '30530005', 1315),
(48, 2019, '11,12', 'LB', '48435767', 1745),
(49, 2019, '11,12', 'RL', '12546179', 1988),
(50, 2019, '11,12', 'KX', '01876849', 499),
(51, 2019, '11,12', 'XQ', '20750345', 998),
(52, 2019, '11,12', 'UK', '47882944', 834),
(53, 2019, '11,12', 'AE', '89627206', 1833),
(54, 2019, '11,12', 'GS', '05371473', 666),
(55, 2019, '11,12', 'EM', '56063142', 1997),
(56, 2019, '11,12', 'DT', '39337110', 622),
(57, 2019, '11,12', 'EK', '47529874', 708),
(58, 2019, '11,12', 'EA', '04505028', 632),
(59, 2019, '11,12', 'UV', '66261499', 1897),
(60, 2019, '11,12', 'SS', '38758376', 1322),
(61, 2019, '11,12', 'OF', '67340902', 1658),
(62, 2019, '11,12', 'YP', '74011049', 625),
(63, 2019, '11,12', 'RF', '10660610', 1449),
(64, 2019, '11,12', 'ZD', '56332117', 274),
(65, 2019, '11,12', 'UD', '14170385', 3),
(66, 2019, '11,12', 'HD', '51303208', 1959),
(67, 2019, '11,12', 'RK', '48783312', 1752),
(68, 2019, '11,12', 'FL', '95149840', 127),
(69, 2019, '11,12', 'QP', '58072181', 1643),
(70, 2019, '11,12', 'SZ', '12747235', 430),
(71, 2019, '11,12', 'PW', '69518787', 1487),
(72, 2019, '11,12', 'SF', '82996943', 468),
(73, 2019, '11,12', 'ZL', '98058777', 1437),
(74, 2019, '11,12', 'ZV', '97146845', 1744),
(75, 2019, '11,12', 'UC', '28951176', 1279),
(76, 2019, '11,12', 'HK', '85578594', 1371),
(77, 2019, '11,12', 'UU', '50969853', 1455),
(78, 2019, '11,12', 'LQ', '53432919', 1989),
(79, 2019, '11,12', 'IR', '13651475', 1252),
(80, 2019, '11,12', 'UE', '43267463', 1990),
(81, 2019, '11,12', 'XL', '90894438', 1344),
(82, 2019, '11,12', 'DH', '13792682', 1641),
(83, 2019, '11,12', 'JL', '66378880', 928),
(84, 2019, '11,12', 'RU', '78752957', 1285),
(85, 2019, '11,12', 'ZG', '01799461', 1925),
(86, 2019, '11,12', 'RP', '42062010', 879),
(87, 2019, '11,12', 'JW', '96070037', 1218),
(88, 2019, '11,12', 'BH', '67107452', 1597),
(89, 2019, '11,12', 'WO', '03149938', 672),
(90, 2019, '11,12', 'AT', '64803676', 1844),
(91, 2019, '11,12', 'IR', '34243547', 963),
(92, 2019, '11,12', 'SQ', '16044616', 1657),
(93, 2019, '11,12', 'EW', '10484490', 1308),
(94, 2019, '11,12', 'HF', '20203074', 119),
(95, 2019, '11,12', 'DZ', '57304737', 1728),
(96, 2019, '11,12', 'PX', '72893909', 39),
(97, 2019, '11,12', 'BD', '05611752', 653),
(98, 2019, '11,12', 'GZ', '64743165', 1426),
(99, 2019, '11,12', 'KF', '80920393', 313),
(100, 2019, '11,12', 'II', '35055577', 423),
(101, 2019, '1,2', 'AF', '09670691', 847),
(102, 2019, '1,2', 'ZG', '34089388', 1182),
(103, 2019, '1,2', 'ZA', '67032327', 1266),
(104, 2019, '1,2', 'KZ', '60158700', 241),
(105, 2019, '1,2', 'ZN', '52586192', 48),
(106, 2019, '1,2', 'FC', '69765338', 317),
(107, 2019, '1,2', 'LQ', '59910016', 15),
(108, 2019, '1,2', 'ZR', '42794689', 1917),
(109, 2019, '1,2', 'KA', '20956274', 1033),
(110, 2019, '1,2', 'LF', '51098258', 121),
(111, 2019, '1,2', 'GN', '67930603', 1673),
(112, 2019, '1,2', 'MG', '26702234', 909),
(113, 2019, '1,2', 'MC', '03154532', 1460),
(114, 2019, '1,2', 'MI', '08121794', 1980),
(115, 2019, '1,2', 'ZH', '68446674', 1140),
(116, 2019, '1,2', 'ZE', '00720726', 429),
(117, 2019, '1,2', 'FV', '10777206', 643),
(118, 2019, '1,2', 'YJ', '83760875', 1605),
(119, 2019, '1,2', 'DC', '11073760', 1547),
(120, 2019, '1,2', 'NV', '80452493', 1316),
(121, 2019, '1,2', 'VT', '52415290', 1595),
(122, 2019, '1,2', 'AC', '54765109', 1095),
(123, 2019, '1,2', 'UP', '62193260', 468),
(124, 2019, '1,2', 'YN', '71688185', 1995),
(125, 2019, '1,2', 'QV', '51685750', 51),
(126, 2019, '1,2', 'KC', '03139707', 1349),
(127, 2019, '1,2', 'YG', '68538620', 1754),
(128, 2019, '1,2', 'MQ', '43102139', 1706),
(129, 2019, '1,2', 'PW', '67102777', 382),
(130, 2019, '1,2', 'QB', '77069473', 1973),
(131, 2019, '1,2', 'KO', '02836339', 1387),
(132, 2019, '1,2', 'TX', '34774102', 1532),
(133, 2019, '1,2', 'UH', '67990662', 917),
(134, 2019, '1,2', 'VV', '91043642', 189),
(135, 2019, '1,2', 'AR', '58151461', 49),
(136, 2019, '1,2', 'BE', '54742306', 1132),
(137, 2019, '1,2', 'OS', '95493728', 691),
(138, 2019, '1,2', 'MJ', '28442767', 1735),
(139, 2019, '1,2', 'NN', '78175594', 1749),
(140, 2019, '1,2', 'HY', '47603366', 1043),
(141, 2019, '1,2', 'DW', '14241008', 1767),
(142, 2019, '1,2', 'IZ', '38450087', 769),
(143, 2019, '1,2', 'BN', '01312001', 192),
(144, 2019, '1,2', 'UT', '40713443', 1664),
(145, 2019, '1,2', 'TG', '90046100', 263),
(146, 2019, '1,2', 'XF', '10956377', 1287),
(147, 2019, '1,2', 'FT', '32217436', 1320),
(148, 2019, '1,2', 'SR', '10281287', 1626),
(149, 2019, '1,2', 'QQ', '71814635', 1179),
(150, 2019, '1,2', 'UY', '43031158', 1861),
(151, 2019, '1,2', 'GC', '56448674', 1478),
(152, 2019, '1,2', 'JY', '86693479', 1707),
(153, 2019, '1,2', 'HW', '93537934', 1908),
(154, 2019, '1,2', 'HE', '97724018', 675),
(155, 2019, '1,2', 'NI', '10238053', 172),
(156, 2019, '1,2', 'TV', '43852490', 58),
(157, 2019, '1,2', 'CI', '88675722', 1618),
(158, 2019, '1,2', 'ZO', '40547379', 890),
(159, 2019, '1,2', 'XA', '37860723', 987),
(160, 2019, '1,2', 'VP', '39953641', 139),
(161, 2019, '1,2', 'VV', '76368933', 872),
(162, 2019, '1,2', 'OJ', '95430065', 1438),
(163, 2019, '1,2', 'ST', '24856972', 450),
(164, 2019, '1,2', 'FW', '25835004', 1368),
(165, 2019, '1,2', 'ZE', '82354705', 1983),
(166, 2019, '1,2', 'GZ', '98683080', 886),
(167, 2019, '1,2', 'BT', '53184334', 1248),
(168, 2019, '1,2', 'IM', '31540300', 1094),
(169, 2019, '1,2', 'WW', '40378928', 1350),
(170, 2019, '1,2', 'TV', '57117825', 65),
(171, 2019, '1,2', 'AO', '01464328', 1225),
(172, 2019, '1,2', 'TG', '07656041', 1973),
(173, 2019, '1,2', 'FS', '45474382', 863),
(174, 2019, '1,2', 'OZ', '73595098', 1599),
(175, 2019, '1,2', 'DX', '66846748', 587),
(176, 2019, '1,2', 'PG', '24650654', 975),
(177, 2019, '1,2', 'DJ', '33824957', 1157),
(178, 2019, '1,2', 'CZ', '62049769', 551),
(179, 2019, '1,2', 'TP', '66515233', 1547),
(180, 2019, '1,2', 'FH', '66338607', 1206),
(181, 2019, '1,2', 'QP', '05597917', 334),
(182, 2019, '1,2', 'FM', '95999762', 1636),
(183, 2019, '1,2', 'SX', '45526662', 1319),
(184, 2019, '1,2', 'OG', '96153672', 68),
(185, 2019, '1,2', 'LV', '90828155', 1875),
(186, 2019, '1,2', 'GG', '74863234', 83),
(187, 2019, '1,2', 'XY', '35079630', 1913),
(188, 2019, '1,2', 'IE', '28796419', 443),
(189, 2019, '1,2', 'SA', '15161444', 1632),
(190, 2019, '1,2', 'PT', '79000303', 622),
(191, 2019, '1,2', 'OH', '64857350', 791),
(192, 2019, '1,2', 'VK', '29965092', 1512),
(193, 2019, '1,2', 'DK', '43196944', 146),
(194, 2019, '1,2', 'KE', '17042112', 1075),
(195, 2019, '1,2', 'WO', '55320552', 1660),
(196, 2019, '1,2', 'TB', '01736985', 204),
(197, 2019, '1,2', 'XA', '29507392', 166),
(198, 2019, '1,2', 'OM', '10061614', 1334),
(199, 2019, '1,2', 'OD', '98400404', 854),
(200, 2019, '1,2', 'HL', '73451025', 1076),
(201, 2019, '3,4', 'PB', '93875353', 1583),
(202, 2019, '3,4', 'TJ', '13303799', 320),
(203, 2019, '3,4', 'QW', '35085689', 513),
(204, 2019, '3,4', 'WF', '15044895', 1799),
(205, 2019, '3,4', 'CK', '36885782', 784),
(206, 2019, '3,4', 'PL', '75848029', 1219),
(207, 2019, '3,4', 'WN', '51752076', 1394),
(208, 2019, '3,4', 'RZ', '17449567', 809),
(209, 2019, '3,4', 'OY', '67468503', 598),
(210, 2019, '3,4', 'XG', '81024858', 774),
(211, 2019, '3,4', 'HU', '70075722', 1237),
(212, 2019, '3,4', 'YS', '66193562', 1704),
(213, 2019, '3,4', 'QA', '90332039', 248),
(214, 2019, '3,4', 'BE', '80617697', 1552),
(215, 2019, '3,4', 'GC', '33032450', 1386),
(216, 2019, '3,4', 'LT', '33628934', 1351),
(217, 2019, '3,4', 'UU', '02830372', 677),
(218, 2019, '3,4', 'JY', '08740555', 599),
(219, 2019, '3,4', 'YW', '42650181', 1944),
(220, 2019, '3,4', 'MC', '55974578', 1724),
(221, 2019, '3,4', 'SW', '12519557', 1351),
(222, 2019, '3,4', 'KI', '94988574', 1737),
(223, 2019, '3,4', 'XT', '78347100', 523),
(224, 2019, '3,4', 'MN', '49866159', 29),
(225, 2019, '3,4', 'HM', '72738134', 349),
(226, 2019, '3,4', 'HH', '54137057', 363),
(227, 2019, '3,4', 'OP', '87781071', 1507),
(228, 2019, '3,4', 'UZ', '55213656', 605),
(229, 2019, '3,4', 'QV', '54434837', 1067),
(230, 2019, '3,4', 'BB', '51337112', 898),
(231, 2019, '3,4', 'TG', '59278695', 684),
(232, 2019, '3,4', 'VC', '17926533', 946),
(233, 2019, '3,4', 'SL', '41350057', 1822),
(234, 2019, '3,4', 'FL', '06827840', 483),
(235, 2019, '3,4', 'CD', '23186560', 1495),
(236, 2019, '3,4', 'LA', '21541053', 1113),
(237, 2019, '3,4', 'VT', '51788080', 668),
(238, 2019, '3,4', 'GU', '97226560', 1762),
(239, 2019, '3,4', 'GK', '08742361', 1081),
(240, 2019, '3,4', 'KW', '96187371', 1812),
(241, 2019, '3,4', 'GO', '16708314', 1453),
(242, 2019, '3,4', 'OI', '21856368', 1983),
(243, 2019, '3,4', 'UV', '87725246', 910),
(244, 2019, '3,4', 'NM', '37664934', 1945),
(245, 2019, '3,4', 'EK', '46337256', 1751),
(246, 2019, '3,4', 'QL', '06638131', 922),
(247, 2019, '3,4', 'CT', '73268549', 209),
(248, 2019, '3,4', 'FP', '02751842', 49),
(249, 2019, '3,4', 'OH', '31676136', 1565),
(250, 2019, '3,4', 'AJ', '05875906', 989),
(251, 2019, '3,4', 'BG', '74678817', 95),
(252, 2019, '3,4', 'ST', '70308558', 1407),
(253, 2019, '3,4', 'VU', '61201240', 1310),
(254, 2019, '3,4', 'JA', '29780296', 1807),
(255, 2019, '3,4', 'KE', '90388258', 392),
(256, 2019, '3,4', 'IO', '59640558', 1679),
(257, 2019, '3,4', 'IH', '21231219', 984),
(258, 2019, '3,4', 'WU', '96294508', 1232),
(259, 2019, '3,4', 'HV', '04559006', 410),
(260, 2019, '3,4', 'WD', '67300011', 1921),
(261, 2019, '3,4', 'ES', '85412970', 515),
(262, 2019, '3,4', 'TA', '75580442', 666),
(263, 2019, '3,4', 'QI', '48719986', 1633),
(264, 2019, '3,4', 'RS', '95284737', 501),
(265, 2019, '3,4', 'FI', '60916726', 1140),
(266, 2019, '3,4', 'CJ', '76471312', 1929),
(267, 2019, '3,4', 'CF', '72988652', 1192),
(268, 2019, '3,4', 'EJ', '99045433', 1549),
(269, 2019, '3,4', 'AQ', '63716782', 1183),
(270, 2019, '3,4', 'YI', '97915261', 529),
(271, 2019, '3,4', 'BJ', '20674558', 678),
(272, 2019, '3,4', 'RA', '40037556', 858),
(273, 2019, '3,4', 'KR', '49804883', 60),
(274, 2019, '3,4', 'SG', '73644043', 1168),
(275, 2019, '3,4', 'YA', '86354284', 1287),
(276, 2019, '3,4', 'FU', '05925774', 1530),
(277, 2019, '3,4', 'AE', '02932586', 7),
(278, 2019, '3,4', 'MV', '46511107', 461),
(279, 2019, '3,4', 'ZZ', '26150965', 1697),
(280, 2019, '3,4', 'VK', '09344835', 754),
(281, 2019, '3,4', 'MH', '60302222', 744),
(282, 2019, '3,4', 'EV', '51976246', 1803),
(283, 2019, '3,4', 'UI', '29384851', 702),
(284, 2019, '3,4', 'MR', '54312161', 1708),
(285, 2019, '3,4', 'NN', '76870379', 1549),
(286, 2019, '3,4', 'DB', '58384724', 1560),
(287, 2019, '3,4', 'KG', '95471483', 919),
(288, 2019, '3,4', 'UY', '99968510', 1179),
(289, 2019, '3,4', 'ZF', '68003783', 1998),
(290, 2019, '3,4', 'IS', '37005567', 172),
(291, 2019, '3,4', 'ZE', '27387660', 1305),
(292, 2019, '3,4', 'FH', '22663043', 901),
(293, 2019, '3,4', 'LR', '08818419', 1330),
(294, 2019, '3,4', 'JQ', '18288860', 1760),
(295, 2019, '3,4', 'AH', '69059202', 914),
(296, 2019, '3,4', 'RS', '28927810', 1899),
(297, 2019, '3,4', 'KS', '47948765', 248),
(298, 2019, '3,4', 'XR', '61110879', 562),
(299, 2019, '3,4', 'OE', '42885694', 1307),
(300, 2019, '3,4', 'HS', '73995467', 875),
(301, 2019, '5,6', 'MI', '43861552', 1488),
(302, 2019, '5,6', 'SM', '62117016', 467),
(303, 2019, '5,6', 'MI', '40380715', 346),
(304, 2019, '5,6', 'JD', '75305916', 34),
(305, 2019, '5,6', 'JP', '56147510', 301),
(306, 2019, '5,6', 'WO', '29768515', 1152),
(307, 2019, '5,6', 'RN', '96231687', 1537),
(308, 2019, '5,6', 'MT', '31337046', 261),
(309, 2019, '5,6', 'QV', '66238949', 1645),
(310, 2019, '5,6', 'DZ', '02683857', 739),
(311, 2019, '5,6', 'PV', '82561303', 1454),
(312, 2019, '5,6', 'MG', '60688350', 895),
(313, 2019, '5,6', 'ME', '08956192', 1044),
(314, 2019, '5,6', 'CK', '41451356', 838),
(315, 2019, '5,6', 'MI', '58194371', 1882),
(316, 2019, '5,6', 'PW', '51670672', 1243),
(317, 2019, '5,6', 'MR', '67493235', 413),
(318, 2019, '5,6', 'IN', '89419932', 1382),
(319, 2019, '5,6', 'AG', '18329937', 502),
(320, 2019, '5,6', 'HT', '05314311', 401),
(321, 2019, '5,6', 'SI', '66020050', 1859),
(322, 2019, '5,6', 'OO', '58004979', 1730),
(323, 2019, '5,6', 'PD', '43127531', 436),
(324, 2019, '5,6', 'MF', '50256529', 798),
(325, 2019, '5,6', 'ZY', '71843517', 342),
(326, 2019, '5,6', 'RK', '56465713', 1343),
(327, 2019, '5,6', 'GL', '01535301', 483),
(328, 2019, '5,6', 'RV', '00480710', 1253),
(329, 2019, '5,6', 'GC', '45389758', 1363),
(330, 2019, '5,6', 'TA', '67220516', 341),
(331, 2019, '5,6', 'QN', '79513328', 1426),
(332, 2019, '5,6', 'ZN', '94329185', 361),
(333, 2019, '5,6', 'DH', '84401351', 983),
(334, 2019, '5,6', 'TM', '54107898', 192),
(335, 2019, '5,6', 'BY', '90997243', 618),
(336, 2019, '5,6', 'JU', '53726765', 139),
(337, 2019, '5,6', 'OS', '41471414', 486),
(338, 2019, '5,6', 'VP', '47452710', 399),
(339, 2019, '5,6', 'QH', '38213930', 842),
(340, 2019, '5,6', 'JP', '90626593', 297),
(341, 2019, '5,6', 'XR', '78595551', 1238),
(342, 2019, '5,6', 'PN', '37253542', 1049),
(343, 2019, '5,6', 'MK', '28628000', 66),
(344, 2019, '5,6', 'VQ', '72533261', 1631),
(345, 2019, '5,6', 'IH', '83287948', 652),
(346, 2019, '5,6', 'RJ', '05101745', 864),
(347, 2019, '5,6', 'CR', '44260793', 1504),
(348, 2019, '5,6', 'RS', '52991961', 243),
(349, 2019, '5,6', 'TR', '63953862', 1572),
(350, 2019, '5,6', 'HW', '20340850', 537),
(351, 2019, '5,6', 'GK', '74788255', 1048),
(352, 2019, '5,6', 'GM', '24614516', 540),
(353, 2019, '5,6', 'CG', '21394009', 1306),
(354, 2019, '5,6', 'QP', '06687924', 972),
(355, 2019, '5,6', 'DH', '71246803', 1139),
(356, 2019, '5,6', 'EI', '35350896', 1019),
(357, 2019, '5,6', 'CR', '71126343', 223),
(358, 2019, '5,6', 'EQ', '95830902', 884),
(359, 2019, '5,6', 'LQ', '53258821', 1821),
(360, 2019, '5,6', 'ZE', '77221637', 1124),
(361, 2019, '5,6', 'RW', '65028176', 326),
(362, 2019, '5,6', 'KA', '60083920', 1014),
(363, 2019, '5,6', 'GY', '19988903', 1528),
(364, 2019, '5,6', 'SG', '54565693', 1595),
(365, 2019, '5,6', 'OU', '17556619', 1154),
(366, 2019, '5,6', 'HN', '02638901', 822),
(367, 2019, '5,6', 'AT', '34278006', 1229),
(368, 2019, '5,6', 'ZZ', '14807734', 516),
(369, 2019, '5,6', 'MO', '98988611', 851),
(370, 2019, '5,6', 'AG', '55618515', 171),
(371, 2019, '5,6', 'HM', '67550791', 70),
(372, 2019, '5,6', 'VM', '68668389', 263),
(373, 2019, '5,6', 'PM', '30064782', 25),
(374, 2019, '5,6', 'KK', '89311493', 418),
(375, 2019, '5,6', 'FG', '92145636', 700),
(376, 2019, '5,6', 'ND', '99510582', 971),
(377, 2019, '5,6', 'LB', '59019036', 970),
(378, 2019, '5,6', 'LW', '11408708', 1043),
(379, 2019, '5,6', 'QV', '06992566', 736),
(380, 2019, '5,6', 'SS', '01071389', 560),
(381, 2019, '5,6', 'CU', '78810960', 235),
(382, 2019, '5,6', 'KU', '49696395', 1104),
(383, 2019, '5,6', 'TN', '78955000', 420),
(384, 2019, '5,6', 'VA', '35148945', 1973),
(385, 2019, '5,6', 'OA', '55846073', 714),
(386, 2019, '5,6', 'BK', '84217785', 217),
(387, 2019, '5,6', 'JA', '33929719', 422),
(388, 2019, '5,6', 'MG', '38501945', 1484),
(389, 2019, '5,6', 'IM', '33975899', 923),
(390, 2019, '5,6', 'PF', '52329410', 823),
(391, 2019, '5,6', 'UY', '27438741', 480),
(392, 2019, '5,6', 'VL', '75986684', 969),
(393, 2019, '5,6', 'VK', '59248266', 1529),
(394, 2019, '5,6', 'LV', '24562781', 604),
(395, 2019, '5,6', 'SW', '11479049', 587),
(396, 2019, '5,6', 'FR', '98833416', 30),
(397, 2019, '5,6', 'TH', '82908480', 400),
(398, 2019, '5,6', 'JI', '86264808', 70),
(399, 2019, '5,6', 'HH', '78208207', 1877),
(400, 2019, '5,6', 'ZT', '65224209', 1786),
(401, 2019, '7,8', 'JN', '48006750', 547),
(402, 2019, '7,8', 'FW', '26834787', 1510),
(403, 2019, '7,8', 'IY', '75150208', 1984),
(404, 2019, '7,8', 'TO', '06066665', 924),
(405, 2019, '7,8', 'ZT', '93371838', 517),
(406, 2019, '7,8', 'FJ', '97675272', 705),
(407, 2019, '7,8', 'GP', '35156291', 971),
(408, 2019, '7,8', 'KK', '99247581', 348),
(409, 2019, '7,8', 'KZ', '03587719', 1700),
(410, 2019, '7,8', 'VB', '03773132', 1224),
(411, 2019, '7,8', 'OV', '78657769', 1728),
(412, 2019, '7,8', 'NQ', '04122436', 1365),
(413, 2019, '7,8', 'HU', '99222375', 659),
(414, 2019, '7,8', 'CK', '96637534', 1778),
(415, 2019, '7,8', 'HI', '04509926', 646),
(416, 2019, '7,8', 'VO', '93340544', 1689),
(417, 2019, '7,8', 'IE', '71973496', 1275),
(418, 2019, '7,8', 'QN', '85899614', 388),
(419, 2019, '7,8', 'WX', '33636191', 258),
(420, 2019, '7,8', 'WU', '41172933', 435),
(421, 2019, '7,8', 'OK', '96796654', 333),
(422, 2019, '7,8', 'IX', '95801268', 1080),
(423, 2019, '7,8', 'KB', '43008529', 1392),
(424, 2019, '7,8', 'PV', '12869010', 384),
(425, 2019, '7,8', 'PF', '09857952', 1331),
(426, 2019, '7,8', 'GJ', '24223419', 576),
(427, 2019, '7,8', 'IA', '05583486', 553),
(428, 2019, '7,8', 'XK', '79515667', 779),
(429, 2019, '7,8', 'BI', '42259186', 1633),
(430, 2019, '7,8', 'DR', '19537523', 1007),
(431, 2019, '7,8', 'IS', '21043746', 195),
(432, 2019, '7,8', 'FA', '16989140', 1120),
(433, 2019, '7,8', 'HD', '60344167', 1672),
(434, 2019, '7,8', 'MC', '20456086', 776),
(435, 2019, '7,8', 'OF', '83973578', 1804),
(436, 2019, '7,8', 'UE', '05396557', 713),
(437, 2019, '7,8', 'IK', '92141631', 668),
(438, 2019, '7,8', 'CA', '47333628', 367),
(439, 2019, '7,8', 'BH', '30959347', 464),
(440, 2019, '7,8', 'TO', '24158118', 1280),
(441, 2019, '7,8', 'WN', '43645156', 890),
(442, 2019, '7,8', 'QD', '23506207', 388),
(443, 2019, '7,8', 'MW', '91744948', 664),
(444, 2019, '7,8', 'KQ', '95589054', 1032),
(445, 2019, '7,8', 'AC', '91559918', 1430),
(446, 2019, '7,8', 'BO', '83098360', 858),
(447, 2019, '7,8', 'VL', '01274932', 322),
(448, 2019, '7,8', 'XW', '63585231', 1966),
(449, 2019, '7,8', 'TC', '47007828', 765),
(450, 2019, '7,8', 'CF', '11770416', 1508),
(451, 2019, '7,8', 'UU', '19496144', 780),
(452, 2019, '7,8', 'TD', '63841615', 419),
(453, 2019, '7,8', 'IN', '77321302', 565),
(454, 2019, '7,8', 'PX', '25413959', 1397),
(455, 2019, '7,8', 'PX', '90576531', 1248),
(456, 2019, '7,8', 'KY', '48225724', 498),
(457, 2019, '7,8', 'QW', '04824252', 997),
(458, 2019, '7,8', 'AE', '91626663', 703),
(459, 2019, '7,8', 'RS', '81233354', 1303),
(460, 2019, '7,8', 'JK', '41843712', 1786),
(461, 2019, '7,8', 'LZ', '32426900', 388),
(462, 2019, '7,8', 'RI', '46100822', 378),
(463, 2019, '7,8', 'UN', '91061939', 1851),
(464, 2019, '7,8', 'ZT', '48493493', 1082),
(465, 2019, '7,8', 'HT', '40119669', 951),
(466, 2019, '7,8', 'FH', '20227483', 1931),
(467, 2019, '7,8', 'LE', '23683528', 1013),
(468, 2019, '7,8', 'QM', '49625085', 922),
(469, 2019, '7,8', 'VP', '48937624', 521),
(470, 2019, '7,8', 'MD', '92428822', 1877),
(471, 2019, '7,8', 'EV', '70084933', 1546),
(472, 2019, '7,8', 'YI', '76565316', 1825),
(473, 2019, '7,8', 'XH', '94051865', 1468),
(474, 2019, '7,8', 'WP', '53514742', 1127),
(475, 2019, '7,8', 'YQ', '43277884', 1491),
(476, 2019, '7,8', 'ML', '50305435', 1697),
(477, 2019, '7,8', 'OU', '59366104', 1007),
(478, 2019, '7,8', 'ZM', '23301994', 1757),
(479, 2019, '7,8', 'QQ', '09041262', 1048),
(480, 2019, '7,8', 'SI', '14254975', 1136),
(481, 2019, '7,8', 'HT', '54196514', 586),
(482, 2019, '7,8', 'FQ', '89952689', 1706),
(483, 2019, '7,8', 'KC', '09071901', 1599),
(484, 2019, '7,8', 'WL', '21608071', 37),
(485, 2019, '7,8', 'WG', '05866697', 1442),
(486, 2019, '7,8', 'TL', '87820255', 184),
(487, 2019, '7,8', 'KQ', '40425446', 1663),
(488, 2019, '7,8', 'NF', '93285765', 1133),
(489, 2019, '7,8', 'VU', '33659556', 1214),
(490, 2019, '7,8', 'IR', '30503179', 1440),
(491, 2019, '7,8', 'XV', '62750279', 1598),
(492, 2019, '7,8', 'XX', '64300725', 760),
(493, 2019, '7,8', 'HP', '39326537', 572),
(494, 2019, '7,8', 'AU', '21136273', 1412),
(495, 2019, '7,8', 'CL', '39610937', 1773),
(496, 2019, '7,8', 'EY', '47378786', 291),
(497, 2019, '7,8', 'PT', '70507540', 322),
(498, 2019, '7,8', 'DN', '07338141', 16),
(499, 2019, '7,8', 'JM', '24942462', 794),
(500, 2019, '7,8', 'DB', '55966183', 1506),
(501, 2019, '9,10', 'TQ', '55117644', 61),
(502, 2019, '9,10', 'GD', '12119624', 177),
(503, 2019, '9,10', 'OU', '03591072', 1457),
(504, 2019, '9,10', 'GD', '75179541', 1042),
(505, 2019, '9,10', 'CX', '04261370', 1074),
(506, 2019, '9,10', 'YK', '06591948', 452),
(507, 2019, '9,10', 'SN', '11955909', 1815),
(508, 2019, '9,10', 'TD', '72867533', 933),
(509, 2019, '9,10', 'PQ', '89326356', 1564),
(510, 2019, '9,10', 'SF', '06545806', 176),
(511, 2019, '9,10', 'KO', '57909076', 1817),
(512, 2019, '9,10', 'JT', '56289653', 1073),
(513, 2019, '9,10', 'KO', '68800392', 1166),
(514, 2019, '9,10', 'PA', '36004048', 1654),
(515, 2019, '9,10', 'YV', '36075021', 563),
(516, 2019, '9,10', 'IH', '46543966', 1685),
(517, 2019, '9,10', 'YX', '71877816', 1643),
(518, 2019, '9,10', 'CG', '06428892', 1240),
(519, 2019, '9,10', 'AN', '87789038', 972),
(520, 2019, '9,10', 'CE', '98046437', 87),
(521, 2019, '9,10', 'SA', '37549290', 1687),
(522, 2019, '9,10', 'PD', '57824175', 1794),
(523, 2019, '9,10', 'SM', '39208918', 1639),
(524, 2019, '9,10', 'YN', '13943436', 94),
(525, 2019, '9,10', 'EK', '87584403', 1126),
(526, 2019, '9,10', 'CA', '98484742', 621),
(527, 2019, '9,10', 'VY', '70915030', 1140),
(528, 2019, '9,10', 'YQ', '71054903', 1966),
(529, 2019, '9,10', 'UZ', '76932947', 1249),
(530, 2019, '9,10', 'QE', '06762428', 1007),
(531, 2019, '9,10', 'KN', '70710350', 1484),
(532, 2019, '9,10', 'LD', '64773683', 952),
(533, 2019, '9,10', 'GS', '81488948', 1398),
(534, 2019, '9,10', 'CF', '94692388', 7),
(535, 2019, '9,10', 'ES', '81145980', 238),
(536, 2019, '9,10', 'AH', '43253259', 915),
(537, 2019, '9,10', 'EX', '17861037', 146),
(538, 2019, '9,10', 'LT', '50927166', 818),
(539, 2019, '9,10', 'OH', '24510592', 933),
(540, 2019, '9,10', 'MM', '71330794', 415),
(541, 2019, '9,10', 'TI', '94253799', 1455),
(542, 2019, '9,10', 'TC', '16710657', 6),
(543, 2019, '9,10', 'OE', '11680766', 251),
(544, 2019, '9,10', 'LQ', '70599323', 1240),
(545, 2019, '9,10', 'FU', '83338156', 1422),
(546, 2019, '9,10', 'FQ', '55949361', 1502),
(547, 2019, '9,10', 'YV', '20752932', 265),
(548, 2019, '9,10', 'OE', '07862898', 722),
(549, 2019, '9,10', 'YL', '72575348', 1392),
(550, 2019, '9,10', 'CK', '80096078', 579),
(551, 2019, '9,10', 'VQ', '92620988', 967),
(552, 2019, '9,10', 'QU', '92404605', 1592),
(553, 2019, '9,10', 'PN', '67506724', 84),
(554, 2019, '9,10', 'LT', '23625451', 1174),
(555, 2019, '9,10', 'EO', '94837478', 366),
(556, 2019, '9,10', 'ZP', '52957650', 679),
(557, 2019, '9,10', 'FE', '84770363', 1954),
(558, 2019, '9,10', 'VQ', '61027206', 1246),
(559, 2019, '9,10', 'RH', '62567453', 1042),
(560, 2019, '9,10', 'VW', '20542238', 1393),
(561, 2019, '9,10', 'WN', '61024988', 236),
(562, 2019, '9,10', 'FF', '14093758', 1298),
(563, 2019, '9,10', 'LN', '40043552', 1610),
(564, 2019, '9,10', 'JM', '96176359', 782),
(565, 2019, '9,10', 'KD', '83241254', 1890),
(566, 2019, '9,10', 'ZZ', '03464986', 1696),
(567, 2019, '9,10', 'UB', '10980464', 150),
(568, 2019, '9,10', 'IJ', '38582879', 1144),
(569, 2019, '9,10', 'UX', '78594457', 202),
(570, 2019, '9,10', 'LG', '02530802', 347),
(571, 2019, '9,10', 'BC', '46132981', 784),
(572, 2019, '9,10', 'GH', '29761172', 1966),
(573, 2019, '9,10', 'JW', '53383136', 1250),
(574, 2019, '9,10', 'FV', '20352059', 1716),
(575, 2019, '9,10', 'SO', '05058960', 306),
(576, 2019, '9,10', 'IF', '56291647', 1858),
(577, 2019, '9,10', 'XG', '36613976', 325),
(578, 2019, '9,10', 'FM', '09528264', 1497),
(579, 2019, '9,10', 'UA', '01790609', 1816),
(580, 2019, '9,10', 'TT', '06781618', 1592),
(581, 2019, '9,10', 'ZX', '45553093', 604),
(582, 2019, '9,10', 'NT', '51965139', 1012),
(583, 2019, '9,10', 'BM', '58869076', 303),
(584, 2019, '9,10', 'XQ', '53901112', 68),
(585, 2019, '9,10', 'NX', '12178604', 1551),
(586, 2019, '9,10', 'OE', '30951033', 1217),
(587, 2019, '9,10', 'QZ', '73013937', 253),
(588, 2019, '9,10', 'QC', '73841398', 1235),
(589, 2019, '9,10', 'VO', '48052701', 989),
(590, 2019, '9,10', 'WO', '02102688', 1540),
(591, 2019, '9,10', 'PV', '24813225', 1132),
(592, 2019, '9,10', 'CN', '09643197', 1214),
(593, 2019, '9,10', 'QN', '02427138', 166),
(594, 2019, '9,10', 'BL', '07314611', 1507),
(595, 2019, '9,10', 'CN', '85248710', 556),
(596, 2019, '9,10', 'LQ', '39824651', 657),
(597, 2019, '9,10', 'WT', '30613956', 198),
(598, 2019, '9,10', 'SA', '24637012', 441),
(599, 2019, '9,10', 'EJ', '61053130', 577),
(600, 2019, '9,10', 'UP', '01234568', 909),
(601, 2019, '1,2', 'YM', '80941359', 308),
(602, 2019, '1,2', 'ZG', '17347654', 1063),
(603, 2019, '1,2', 'YK', '13367976', 85),
(604, 2019, '1,2', 'LP', '86507995', 1129),
(605, 2019, '1,2', 'LG', '36350093', 561),
(606, 2019, '1,2', 'PP', '65725151', 14),
(607, 2019, '1,2', 'IL', '58217790', 818),
(608, 2019, '1,2', 'DW', '19313541', 1646),
(609, 2019, '1,2', 'AQ', '98751814', 1312),
(610, 2019, '1,2', 'YA', '14989593', 970),
(611, 2019, '1,2', 'XM', '70296256', 34),
(612, 2019, '1,2', 'OR', '12070649', 1902),
(613, 2019, '1,2', 'HZ', '17005377', 1256),
(614, 2019, '1,2', 'UO', '81494406', 1976),
(615, 2019, '1,2', 'YB', '26196285', 400),
(616, 2019, '1,2', 'HQ', '01683365', 1067),
(617, 2019, '1,2', 'FM', '92683192', 1503),
(618, 2019, '1,2', 'UI', '17977043', 138),
(619, 2019, '1,2', 'BD', '70578524', 525),
(620, 2019, '1,2', 'KU', '44471294', 1082),
(621, 2019, '1,2', 'XI', '37673782', 515),
(622, 2019, '1,2', 'HI', '33925405', 80),
(623, 2019, '1,2', 'KF', '69266281', 372),
(624, 2019, '1,2', 'GW', '55753889', 1708),
(625, 2019, '1,2', 'TI', '60910319', 1517),
(626, 2019, '1,2', 'LC', '04808853', 1308),
(627, 2019, '1,2', 'UA', '09537940', 1412),
(628, 2019, '1,2', 'BS', '95535563', 806),
(629, 2019, '1,2', 'HI', '74299410', 691),
(630, 2019, '1,2', 'GS', '79134234', 243),
(631, 2019, '1,2', 'HI', '20556212', 873),
(632, 2019, '1,2', 'YX', '46227902', 1630),
(633, 2019, '1,2', 'YF', '27484445', 93),
(634, 2019, '1,2', 'SJ', '17309067', 1866),
(635, 2019, '1,2', 'UW', '11369504', 569),
(636, 2019, '1,2', 'ST', '33199804', 955),
(637, 2019, '1,2', 'PI', '93455111', 401),
(638, 2019, '1,2', 'MG', '55655528', 1923),
(639, 2019, '1,2', 'TH', '55457700', 383),
(640, 2019, '1,2', 'SC', '54008115', 1658),
(641, 2019, '1,2', 'FN', '34480082', 779),
(642, 2019, '1,2', 'RQ', '31031756', 413),
(643, 2019, '1,2', 'VK', '45152071', 1391),
(644, 2019, '1,2', 'KO', '85222138', 427),
(645, 2019, '1,2', 'UZ', '75463334', 127),
(646, 2019, '1,2', 'SO', '86597098', 1482),
(647, 2019, '1,2', 'VM', '42555650', 199),
(648, 2019, '1,2', 'TH', '80611884', 1483),
(649, 2019, '1,2', 'UH', '16283398', 1776),
(650, 2019, '1,2', 'UK', '96276741', 966),
(651, 2019, '1,2', 'GX', '27322847', 1014),
(652, 2019, '1,2', 'DE', '53852691', 1533),
(653, 2019, '1,2', 'ME', '48174756', 323),
(654, 2019, '1,2', 'UE', '39080354', 1736),
(655, 2019, '1,2', 'AD', '46368956', 1950),
(656, 2019, '1,2', 'FU', '27296048', 1256),
(657, 2019, '1,2', 'RK', '32554962', 1432),
(658, 2019, '1,2', 'BX', '16099020', 1274),
(659, 2019, '1,2', 'UP', '42577751', 1161),
(660, 2019, '1,2', 'LV', '18175020', 1769),
(661, 2019, '1,2', 'UN', '94130656', 1710),
(662, 2019, '1,2', 'DR', '73714457', 1854),
(663, 2019, '1,2', 'YK', '82261902', 953),
(664, 2019, '1,2', 'KS', '22335742', 325),
(665, 2019, '1,2', 'XI', '00101224', 1128),
(666, 2019, '1,2', 'CC', '47720573', 1410),
(667, 2019, '1,2', 'GE', '00531076', 373),
(668, 2019, '1,2', 'RW', '18456231', 1057),
(669, 2019, '1,2', 'PV', '44660619', 781),
(670, 2019, '1,2', 'TX', '71379819', 403),
(671, 2019, '1,2', 'BX', '40022566', 399),
(672, 2019, '1,2', 'XD', '50315594', 1528),
(673, 2019, '1,2', 'BJ', '14375798', 1790),
(674, 2019, '1,2', 'WA', '37311889', 1835),
(675, 2019, '1,2', 'NA', '52764426', 249),
(676, 2019, '1,2', 'WP', '96300246', 1484),
(677, 2019, '1,2', 'HP', '75095865', 1486),
(678, 2019, '1,2', 'DR', '73800854', 230),
(679, 2019, '1,2', 'DK', '50178109', 1271),
(680, 2019, '1,2', 'CL', '87268583', 554),
(681, 2019, '1,2', 'MG', '48827524', 1167),
(682, 2019, '1,2', 'DT', '98192712', 244),
(683, 2019, '1,2', 'ZH', '80166127', 991),
(684, 2019, '1,2', 'PG', '97599225', 1719),
(685, 2019, '1,2', 'GD', '43833722', 343),
(686, 2019, '1,2', 'GA', '24185668', 253),
(687, 2019, '1,2', 'HM', '01856663', 59),
(688, 2019, '1,2', 'YO', '27920381', 827),
(689, 2019, '1,2', 'RU', '06603600', 1265),
(690, 2019, '1,2', 'DW', '02706862', 1998),
(691, 2019, '1,2', 'SW', '60855000', 575),
(692, 2019, '1,2', 'YH', '10375037', 1361),
(693, 2019, '1,2', 'GG', '03535717', 1184),
(694, 2019, '1,2', 'SA', '11142211', 1304),
(695, 2019, '1,2', 'NH', '15047075', 1656),
(696, 2019, '1,2', 'JK', '66266322', 491),
(697, 2019, '1,2', 'EP', '08028093', 1970),
(698, 2019, '1,2', 'WW', '99762057', 1633),
(699, 2019, '1,2', 'VS', '94891210', 1674),
(700, 2019, '1,2', 'AR', '26913349', 1364),
(701, 2019, '3,4', 'CB', '33876409', 568),
(702, 2018, '11,12', 'NU', '01727883', 860),
(703, 2018, '11,12', 'KE', '27540462', 1729),
(704, 2018, '11,12', 'BP', '30225386', 1566),
(705, 2018, '11,12', 'JN', '21374121', 790),
(706, 2018, '11,12', 'AS', '81215782', 364),
(707, 2018, '11,12', 'YI', '33312626', 1468),
(708, 2018, '11,12', 'XP', '53416691', 1593),
(709, 2018, '11,12', 'TD', '03663617', 1133),
(710, 2018, '11,12', 'QZ', '17507068', 1887),
(711, 2018, '11,12', 'FR', '00609849', 565),
(712, 2018, '11,12', 'FE', '97483001', 182),
(713, 2018, '11,12', 'EC', '77540159', 1714),
(714, 2018, '11,12', 'UL', '10810068', 279),
(715, 2018, '11,12', 'BK', '31199258', 842),
(716, 2018, '11,12', 'KR', '39016374', 1288),
(717, 2018, '11,12', 'KN', '86746996', 693),
(718, 2018, '11,12', 'DF', '82740093', 1426),
(719, 2018, '11,12', 'PW', '96462885', 1666),
(720, 2018, '11,12', 'BK', '62759749', 1118),
(721, 2018, '11,12', 'DT', '57951327', 630),
(722, 2018, '11,12', 'KG', '60203920', 947),
(723, 2018, '11,12', 'VY', '17925642', 50),
(724, 2018, '11,12', 'IH', '08434648', 1538),
(725, 2018, '11,12', 'XZ', '28030243', 1380),
(726, 2018, '11,12', 'BS', '85670589', 1884),
(727, 2018, '11,12', 'AR', '16829517', 892),
(728, 2018, '11,12', 'QF', '25698091', 917),
(729, 2018, '11,12', 'NW', '14717598', 1182),
(730, 2018, '11,12', 'RS', '45613229', 933),
(731, 2018, '11,12', 'AE', '73636885', 1316),
(732, 2018, '11,12', 'SB', '33991065', 1967),
(733, 2018, '11,12', 'SV', '21279825', 414),
(734, 2018, '11,12', 'LU', '32015756', 1394),
(735, 2018, '11,12', 'RB', '61116650', 1953),
(736, 2018, '11,12', 'KZ', '51686767', 713),
(737, 2018, '11,12', 'FI', '57383986', 1805),
(738, 2018, '11,12', 'FV', '47048215', 1878),
(739, 2018, '11,12', 'NS', '21976148', 899),
(740, 2018, '11,12', 'PH', '62370520', 1647),
(741, 2018, '11,12', 'JL', '44648699', 1770),
(742, 2018, '11,12', 'DG', '47874507', 1971),
(743, 2018, '11,12', 'FM', '31399999', 1312),
(744, 2018, '11,12', 'WB', '48145835', 1732),
(745, 2018, '11,12', 'NF', '42999229', 1567),
(746, 2018, '11,12', 'NK', '88132212', 521),
(747, 2018, '11,12', 'RK', '76052439', 782),
(748, 2018, '11,12', 'OY', '81720733', 723),
(749, 2018, '11,12', 'CF', '18573947', 434),
(750, 2018, '11,12', 'MQ', '34081464', 1851),
(751, 2018, '11,12', 'NH', '55756159', 558),
(752, 2018, '11,12', 'TY', '13447332', 957),
(753, 2018, '11,12', 'BU', '84490417', 787),
(754, 2018, '11,12', 'VB', '89802992', 1192),
(755, 2018, '11,12', 'PP', '15695574', 1566),
(756, 2018, '11,12', 'UT', '11540421', 720),
(757, 2018, '11,12', 'EY', '69679624', 988),
(758, 2018, '11,12', 'RH', '92338544', 659),
(759, 2018, '11,12', 'ZM', '51411858', 1496),
(760, 2018, '11,12', 'PU', '05213854', 473),
(761, 2018, '11,12', 'LS', '88505841', 1611),
(762, 2018, '11,12', 'JD', '08873188', 157),
(763, 2018, '11,12', 'PH', '69629526', 1241),
(764, 2018, '11,12', 'OB', '82619791', 724),
(765, 2018, '11,12', 'SN', '02153937', 1791),
(766, 2018, '11,12', 'DJ', '56660541', 361),
(767, 2018, '11,12', 'IZ', '53956012', 15),
(768, 2018, '11,12', 'SU', '64036437', 1588),
(769, 2018, '11,12', 'JS', '07388131', 170),
(770, 2018, '11,12', 'AV', '25407457', 1362),
(771, 2018, '11,12', 'HE', '82126439', 344),
(772, 2018, '11,12', 'OS', '44934047', 1708),
(773, 2018, '11,12', 'CH', '96022206', 451),
(774, 2018, '11,12', 'GR', '59808080', 846),
(775, 2018, '11,12', 'JP', '07328854', 1235),
(776, 2018, '11,12', 'FQ', '49260036', 1131),
(777, 2018, '11,12', 'LK', '95664132', 294),
(778, 2018, '11,12', 'WS', '95667863', 1577),
(779, 2018, '11,12', 'VT', '87747531', 1319),
(780, 2018, '11,12', 'HM', '39271713', 892),
(781, 2018, '11,12', 'FS', '19511847', 1763),
(782, 2018, '11,12', 'IJ', '95134123', 1339),
(783, 2018, '11,12', 'TO', '40945599', 1163),
(784, 2018, '11,12', 'HA', '17169367', 614),
(785, 2018, '11,12', 'YX', '17013802', 248),
(786, 2018, '11,12', 'KV', '81980230', 996),
(787, 2018, '11,12', 'KY', '51831431', 1821),
(788, 2018, '11,12', 'WQ', '68757971', 1450),
(789, 2018, '11,12', 'OJ', '42206574', 750),
(790, 2018, '11,12', 'RK', '11378831', 39),
(791, 2018, '11,12', 'EU', '90414504', 224),
(792, 2018, '11,12', 'OL', '98489917', 1732),
(793, 2018, '11,12', 'CD', '97134148', 889),
(794, 2018, '11,12', 'BN', '95655274', 1498),
(795, 2018, '11,12', 'DZ', '25264451', 727),
(796, 2018, '11,12', 'YM', '42747205', 538),
(797, 2018, '11,12', 'RG', '66501142', 533),
(798, 2018, '11,12', 'QI', '93464608', 620),
(799, 2018, '11,12', 'LZ', '67633631', 631),
(800, 2018, '11,12', 'XR', '36150352', 1768),
(801, 2018, '11,12', 'HY', '00909223', 720);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `lottery`
--
ALTER TABLE `lottery`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `receipt`
--
ALTER TABLE `receipt`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `lottery`
--
ALTER TABLE `lottery`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `receipt`
--
ALTER TABLE `receipt`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=802;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
