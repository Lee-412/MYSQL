-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 25, 2023 lúc 05:56 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `classicmodels123`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rfm_model`
--

CREATE TABLE `rfm_model` (
  `CustomerNumber` int(11) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Recency` int(11) DEFAULT NULL,
  `Frequency` int(11) NOT NULL,
  `Monetary` double NOT NULL,
  `Recency_score` double DEFAULT NULL,
  `Frequency_score` double DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Đang đổ dữ liệu cho bảng `rfm_model`
--

INSERT INTO `rfm_model` (`CustomerNumber`, `CustomerName`, `Recency`, `Frequency`, `Monetary`, `Recency_score`, `Frequency_score`, `Type`) VALUES
(103, 'Atelier graphique', 189, 3, 22314.36, 3.632541133, 1.32, 'Potential Loyallists'),
(112, 'Signal Gift Stores', 185, 3, 80180.98, 3.66179159, 1.32, 'Potential Loyallists'),
(114, 'Australian Collectors, Co.', 185, 5, 180585.07, 3.66179159, 1.64, 'Potential Loyallists'),
(119, 'La Rochelle Gifts', 2, 4, 158573.12, 5, 1.48, 'Potential Loyallists'),
(121, 'Baane Mini Imports', 209, 4, 104224.79, 3.486288848, 1.48, 'Potential Loyallists'),
(124, 'Mini Gifts Distributors Ltd.', 4, 17, 591827.34, 4.985374771, 3.56, 'Champions'),
(125, 'Havel & Zbyszek Co', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(128, 'Blauer See Auto, Co.', 209, 4, 75937.76, 3.486288848, 1.48, 'Potential Loyallists'),
(129, 'Mini Wheels Co.', 196, 3, 66710.56, 3.581352833, 1.32, 'Potential Loyallists'),
(131, 'Land of Toys Inc.', 199, 4, 149085.15, 3.55941499, 1.48, 'Potential Loyallists'),
(141, 'Euro+ Shopping Channel', 2, 26, 820689.54, 5, 5, 'Champions'),
(144, 'Volvo Model Replicas, Co', 195, 4, 66694.82, 3.588665447, 1.48, 'Potential Loyallists'),
(145, 'Danish Wholesale Imports', 48, 5, 129085.12, 4.663619744, 1.64, 'Potential Loyallists'),
(146, 'Saveley & Henriot, Co.', 457, 3, 130305.35, 1.672760511, 1.32, 'Hibernating'),
(148, 'Dragon Souveniers, Ltd.', 92, 5, 156251.03, 4.341864716, 1.64, 'Potential Loyallists'),
(151, 'Muscle Machine Inc', 183, 4, 177913.95, 3.676416819, 1.48, 'Potential Loyallists'),
(157, 'Diecast Classics Inc.', 3, 4, 104358.69, 4.992687385, 1.48, 'Potential Loyallists'),
(161, 'Technics Stores Inc.', 148, 4, 104545.22, 3.932358318, 1.48, 'Potential Loyallists'),
(166, 'Handji Gifts& Co', 40, 4, 107746.75, 4.722120658, 1.48, 'Potential Loyallists'),
(167, 'Herkku Gifts', 272, 3, 97562.47, 3.025594149, 1.32, 'Potential Loyallists'),
(168, 'American Souvenirs Inc', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(169, 'Porto Imports Co.', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(171, 'Daedalus Designs Imports', 467, 2, 61781.7, 1.599634369, 1.16, 'Hibernating'),
(172, 'La Corne D\'abondance, Co.', 194, 3, 86553.52, 3.595978062, 1.32, 'Potential Loyallists'),
(173, 'Cambridge Collectables Co.', 390, 2, 32198.69, 2.162705667, 1.16, 'About To Sleep'),
(175, 'Gift Depot Inc.', 28, 3, 95424.63, 4.809872029, 1.32, 'Potential Loyallists'),
(177, 'Osaka Souveniers Co.', 415, 2, 62361.22, 1.97989031, 1.16, 'Hibernating'),
(181, 'Vitachrome Inc.', 209, 3, 72497.64, 3.486288848, 1.32, 'Potential Loyallists'),
(186, 'Toys of Finland, Co.', 113, 3, 95546.46, 4.188299817, 1.32, 'Potential Loyallists'),
(187, 'AV Stores, Co.', 197, 3, 148410.09, 3.574040219, 1.32, 'Potential Loyallists'),
(189, 'Clover Collections, Co.', 259, 2, 49898.27, 3.120658135, 1.16, 'Potential Loyallists'),
(198, 'Auto-Moto Classics Inc.', 181, 3, 21554.26, 3.691042047, 1.32, 'Potential Loyallists'),
(201, 'UK Collectables, Ltd.', 55, 3, 106610.72, 4.612431444, 1.32, 'Potential Loyallists'),
(202, 'Canadian Gift Exchange Network', 223, 2, 70122.19, 3.383912248, 1.16, 'Potential Loyallists'),
(204, 'Online Mini Collectables', 265, 2, 55577.26, 3.076782449, 1.16, 'Potential Loyallists'),
(205, 'Toys4GrownUps.com', 141, 3, 93803.3, 3.983546617, 1.32, 'Potential Loyallists'),
(206, 'Asian Shopping Network, Co', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(209, 'Mini Caravy', 49, 3, 75859.32, 4.656307129, 1.32, 'Potential Loyallists'),
(211, 'King Kong Collectables, Co.', 549, 2, 45480.79, 1, 1.16, 'Hibernating'),
(216, 'Enaco Distributors', 190, 3, 68520.47, 3.625228519, 1.32, 'Potential Loyallists'),
(219, 'Boards & Toys Co.', 114, 2, 7918.6, 4.180987202, 1.16, 'Potential Loyallists'),
(223, 'Natürlich Autos', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(227, 'Heintze Collectables', 223, 2, 89909.8, 3.383912248, 1.16, 'Potential Loyallists'),
(233, 'Québec Home Shopping Network', 32, 3, 68977.67, 4.780621572, 1.32, 'Potential Loyallists'),
(237, 'ANG Resellers', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(239, 'Collectable Mini Designs Co.', 462, 2, 80375.24, 1.63619744, 1.16, 'Hibernating'),
(240, 'giftsbymail.co.uk', 213, 2, 71783.75, 3.457038391, 1.16, 'Potential Loyallists'),
(242, 'Alpha Cognac', 66, 3, 60483.36, 4.531992687, 1.32, 'Potential Loyallists'),
(247, 'Messner Shopping Network', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(249, 'Amica Models & Co.', 266, 2, 82223.23, 3.069469835, 1.16, 'Potential Loyallists'),
(250, 'Lyon Souveniers', 77, 3, 67659.19, 4.45155393, 1.32, 'Potential Loyallists'),
(256, 'Auto Associés & Cie.', 234, 2, 58876.41, 3.303473491, 1.16, 'Potential Loyallists'),
(259, 'Toms Spezialitäten, Ltd', 229, 2, 89223.14, 3.340036563, 1.16, 'Potential Loyallists'),
(260, 'Royal Canadian Collectables, Ltd.', 286, 2, 66812, 2.92321755, 1.16, 'About To Sleep'),
(273, 'Franken Gifts, Co', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(276, 'Anna\'s Decorations, Ltd', 85, 4, 137034.22, 4.393053016, 1.48, 'Potential Loyallists'),
(278, 'Rovelli Gifts', 202, 3, 127529.69, 3.537477148, 1.32, 'Potential Loyallists'),
(282, 'Souveniers And Things Co.', 4, 4, 133907.12, 4.985374771, 1.48, 'Potential Loyallists'),
(286, 'Marta\'s Replicas Co.', 232, 2, 90545.37, 3.31809872, 1.16, 'Potential Loyallists'),
(293, 'BG&E Collectables', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(298, 'Vida Sport, Ltd', 276, 2, 108777.92, 2.996343692, 1.16, 'About To Sleep'),
(299, 'Norway Gifts By Mail, Co.', 285, 2, 69059.04, 2.930530164, 1.16, 'About To Sleep'),
(303, 'Schuyler Imports', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(307, 'Der Hund Imports', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(311, 'Oulu Toy Supplies, Inc.', 122, 3, 95706.15, 4.122486288, 1.32, 'Potential Loyallists'),
(314, 'Petit Auto', 3, 3, 70851.58, 4.992687385, 1.32, 'Potential Loyallists'),
(319, 'Mini Classics', 230, 2, 78432.16, 3.332723948, 1.16, 'Potential Loyallists'),
(320, 'Mini Creations Ltd.', 146, 3, 101872.52, 3.946983546, 1.32, 'Potential Loyallists'),
(321, 'Corporate Gift Ideas Co.', 99, 4, 132340.78, 4.290676416, 1.48, 'Potential Loyallists'),
(323, 'Down Under Souveniers, Inc', 55, 5, 154622.08, 4.612431444, 1.64, 'Potential Loyallists'),
(324, 'Stylish Desk Decors, Co.', 181, 3, 80556.73, 3.691042047, 1.32, 'Potential Loyallists'),
(328, 'Tekni Collectables Inc.', 60, 3, 81806.55, 4.575868372, 1.32, 'Potential Loyallists'),
(333, 'Australian Gift Network, Co', 120, 3, 55190.16, 4.137111517, 1.32, 'Potential Loyallists'),
(334, 'Suominen Souveniers', 147, 3, 103896.74, 3.939670932, 1.32, 'Potential Loyallists'),
(335, 'Cramer Spezialitäten, Ltd', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(339, 'Classic Gift Ideas, Inc', 231, 2, 57939.34, 3.325411334, 1.16, 'Potential Loyallists'),
(344, 'CAF Imports', 440, 2, 46751.14, 1.797074954, 1.16, 'Hibernating'),
(347, 'Men \'R\' US Retailers, Ltd.', 510, 2, 41506.19, 1.285191956, 1.16, 'Hibernating'),
(348, 'Asian Treasures, Inc.', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(350, 'Marseille Mini Autos', 147, 3, 71547.53, 3.939670932, 1.32, 'Potential Loyallists'),
(353, 'Reims Collectables', 64, 5, 126983.19, 4.546617915, 1.64, 'Potential Loyallists'),
(356, 'SAR Distributors, Co', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(357, 'GiftsForHim.com', 34, 3, 94431.76, 4.765996343, 1.32, 'Potential Loyallists'),
(361, 'Kommission Auto', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(362, 'Gifts4AllAges.com', 27, 3, 84340.32, 4.817184643, 1.32, 'Potential Loyallists'),
(363, 'Online Diecast Creations Co.', 210, 3, 116449.29, 3.478976234, 1.32, 'Potential Loyallists'),
(369, 'Lisboa Souveniers, Inc', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(376, 'Precious Collectables', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(379, 'Collectables For Less Inc.', 133, 3, 73533.65, 4.042047531, 1.32, 'Potential Loyallists'),
(381, 'Royale Belge', 143, 4, 29217.18, 3.968921389, 1.48, 'Potential Loyallists'),
(382, 'Salzburg Collectables', 16, 4, 137480.07, 4.8976234, 1.48, 'Potential Loyallists'),
(385, 'Cruz & Sons Co.', 198, 3, 87468.3, 3.566727605, 1.32, 'Potential Loyallists'),
(386, 'L\'ordine Souveniers', 23, 3, 125505.57, 4.8464351, 1.32, 'Potential Loyallists'),
(398, 'Tokyo Collectables, Ltd', 41, 4, 105548.73, 4.714808043, 1.48, 'Potential Loyallists'),
(406, 'Auto Canal+ Petit', 56, 3, 86436.97, 4.605118829, 1.32, 'Potential Loyallists'),
(409, 'Stuttgart Collectable Exchange', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(412, 'Extreme Desk Decorations, Ltd', 17, 3, 90332.38, 4.890310786, 1.32, 'Potential Loyallists'),
(415, 'Bavarian Collectables Imports, Co.', 260, 1, 31310.09, 3.113345521, 1, 'Potential Loyallists'),
(424, 'Classic Legends Inc.', 193, 3, 69214.33, 3.603290676, 1.32, 'Potential Loyallists'),
(443, 'Feuer Online Stores, Inc', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(447, 'Gift Ideas Corp.', 180, 3, 49967.78, 3.698354661, 1.32, 'Potential Loyallists'),
(448, 'Scandinavian Gift Ideas', 91, 3, 120943.53, 4.34917733, 1.32, 'Potential Loyallists'),
(450, 'The Sharp Gifts Warehouse', 41, 4, 143536.27, 4.714808043, 1.48, 'Potential Loyallists'),
(452, 'Mini Auto Werke', 84, 3, 51059.99, 4.40036563, 1.32, 'Potential Loyallists'),
(455, 'Super Scale Inc.', 394, 2, 70378.65, 2.13345521, 1.16, 'About To Sleep'),
(456, 'Microscale Inc.', 211, 2, 29230.43, 3.471663619, 1.16, 'Potential Loyallists'),
(458, 'Corrida Auto Replicas, Ltd', 213, 3, 112440.09, 3.457038391, 1.32, 'Potential Loyallists'),
(459, 'Warburg Exchange', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(462, 'FunGiftIdeas.com', 91, 3, 88627.49, 4.34917733, 1.32, 'Potential Loyallists'),
(465, 'Anton Designs, Ltd.', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(471, 'Australian Collectables, Ltd', 24, 3, 55866.02, 4.839122486, 1.32, 'Potential Loyallists'),
(473, 'Frau da Collezione', 479, 2, 25358.32, 1.511882998, 1.16, 'Hibernating'),
(475, 'West Coast Collectables Co.', 490, 2, 43748.72, 1.431444241, 1.16, 'Hibernating'),
(477, 'Mit Vergnügen & Co.', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(480, 'Kremlin Collectables, Co.', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(481, 'Raanan Stores, Inc', NULL, 0, 0, 0, 0.84, 'Hibernating'),
(484, 'Iberia Gift Imports, Corp.', 239, 2, 50987.85, 3.26691042, 1.16, 'Potential Loyallists'),
(486, 'Motor Mint Distributors Inc.', 197, 3, 77726.59, 3.574040219, 1.32, 'Potential Loyallists'),
(487, 'Signal Collectibles Ltd.', 478, 2, 42570.37, 1.519195612, 1.16, 'Hibernating'),
(489, 'Double Decker Gift Stores, Ltd', 497, 2, 29586.15, 1.380255941, 1.16, 'Hibernating'),
(495, 'Diecast Collectables', 402, 2, 65541.74, 2.074954296, 1.16, 'About To Sleep'),
(496, 'Kelly\'s Gift Shop', 62, 4, 137460.79, 4.561243144, 1.48, 'Potential Loyallists');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `rfm_model`
--
ALTER TABLE `rfm_model`
  ADD PRIMARY KEY (`CustomerNumber`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
