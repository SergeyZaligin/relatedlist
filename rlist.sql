-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 31, 2017 at 03:22 
-- Server version: 5.7.13
-- PHP Version: 5.5.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE IF NOT EXISTS `tbl_city` (
  `id_city` int(11) NOT NULL,
  `id_region` int(11) NOT NULL,
  `city` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`id_city`, `id_region`, `city`) VALUES
(2, 4, 'Макеевка'),
(5, 4, 'Донецк'),
(6, 4, 'Енакиево');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
  `id_country` int(11) NOT NULL,
  `country` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`id_country`, `country`) VALUES
(3, 'Белоруссия'),
(4, 'Израиль'),
(2, 'Россия'),
(1, 'Украина');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_region`
--

CREATE TABLE IF NOT EXISTS `tbl_region` (
  `id_region` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `region` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_region`
--

INSERT INTO `tbl_region` (`id_region`, `id_country`, `region`) VALUES
(1, 1, 'АР Крым'),
(2, 1, 'Винницкая обл.'),
(3, 1, 'Днепропетровская обл.'),
(4, 1, 'Донецкая обл.'),
(5, 1, 'Житомирская обл.'),
(6, 1, 'Закарпатская обл.'),
(7, 1, 'Запорожская обл.'),
(8, 1, 'Ивано-Франковская обл.'),
(9, 1, 'Киевская обл.'),
(10, 1, 'Кировоградская обл.'),
(11, 1, 'Луганская обл.'),
(12, 1, 'Волынская обл.'),
(13, 1, 'Львовская обл.'),
(14, 1, 'Николаевская обл.'),
(15, 1, 'Одесская обл.'),
(16, 1, 'Полтавская обл.'),
(17, 1, 'Ровенская обл.'),
(18, 1, 'Сумская обл.'),
(19, 1, 'Тернопольская обл.'),
(20, 1, 'Харьковская обл.'),
(21, 1, 'Херсонская обл.'),
(22, 1, 'Хмельницкая обл.'),
(23, 1, 'Черкасская обл.'),
(24, 1, 'Черниговская обл.'),
(25, 1, 'Черновецкая обл.'),
(27, 3, 'Минская обл.'),
(28, 3, 'Брестская обл.'),
(29, 3, 'Гомельская обл.'),
(30, 3, 'Гродненская обл.'),
(31, 3, 'Могилёвская обл.'),
(32, 3, 'Витебская обл.'),
(33, 4, 'Центральный округ'),
(34, 4, 'Хайфский округ'),
(35, 4, 'Северный округ'),
(36, 4, 'Иерусалимский округ'),
(37, 4, 'Южный округ'),
(38, 4, 'Тель-Авивский округ'),
(39, 4, 'Голанские высоты'),
(40, 4, 'Западный берег'),
(41, 4, 'Сектор Газа'),
(42, 2, 'Адыгея'),
(43, 2, 'Алтайский край'),
(44, 2, 'Амурская обл.'),
(45, 2, 'Архангельская обл.'),
(46, 2, 'Астраханская обл.'),
(47, 2, 'Башкортостан'),
(48, 2, 'Белгородская обл.'),
(49, 2, 'Брянская обл.'),
(50, 2, 'Бурятия'),
(51, 2, 'Владимирская обл.'),
(52, 2, 'Волгоградская обл.'),
(53, 2, 'Вологодская обл.'),
(54, 2, 'Воронежская обл.'),
(55, 2, 'Дагестан'),
(56, 2, 'Еврейская АО'),
(57, 2, 'Ивановская обл.'),
(58, 2, 'Иркутская обл.'),
(59, 2, 'Кабардино-Балкария'),
(60, 2, 'Калининградская обл.'),
(61, 2, 'Калмыкия'),
(62, 2, 'Калужская обл.'),
(63, 2, 'Камчатская обл.'),
(64, 2, 'Карачаево-Черкессия'),
(65, 2, 'Карелия'),
(66, 2, 'Кемеровская обл.'),
(67, 2, 'Кировская обл.'),
(68, 2, 'Коми'),
(69, 2, 'Корякский АО'),
(70, 2, 'Костромская обл.'),
(71, 2, 'Краснодарский край'),
(72, 2, 'Красноярский край'),
(73, 2, 'Курганская обл.'),
(74, 2, 'Курская обл.'),
(75, 2, 'Ленинградская обл.'),
(76, 2, 'Липецкая обл.'),
(77, 2, 'Магаданская обл.'),
(78, 2, 'Марий Эл'),
(79, 2, 'Мордовия'),
(80, 2, 'Московская обл.'),
(81, 2, 'Мурманская обл.'),
(82, 2, 'Ненецкий АО'),
(83, 2, 'Нижегородская обл.'),
(84, 2, 'Новгородская обл.'),
(85, 2, 'Новосибирская обл.'),
(86, 2, 'Омская обл.'),
(87, 2, 'Оренбургская обл.'),
(88, 2, 'Орловская обл.'),
(89, 2, 'Пензенская обл.'),
(90, 2, 'Пермская обл.'),
(91, 2, 'Приморский край'),
(92, 2, 'Псковская обл.'),
(93, 2, 'Республика Ингушетия'),
(94, 2, 'Ростовская обл.'),
(95, 2, 'Рязанская обл.'),
(96, 2, 'Самарская обл.'),
(97, 2, 'Саратовская обл.'),
(98, 2, 'Саха (Якутия)'),
(99, 2, 'Сахалинская обл.'),
(100, 2, 'Свердловская обл.'),
(101, 2, 'Северная Осетия'),
(102, 2, 'Смоленская обл.'),
(103, 2, 'Ставропольский край'),
(104, 2, 'Таймырский АО'),
(105, 2, 'Тамбовская обл.'),
(106, 2, 'Татарстан'),
(107, 2, 'Тверская обл.'),
(108, 2, 'Томская обл.'),
(109, 2, 'Тульская обл.'),
(110, 2, 'Тыва'),
(111, 2, 'Тюменская обл.'),
(112, 2, 'Удмуртия'),
(113, 2, 'Ульяновская обл.'),
(114, 2, 'Хабаровский край'),
(115, 2, 'Хакасия'),
(116, 2, 'Ханты-Мансийский АО'),
(117, 2, 'Челябинская обл.'),
(118, 2, 'Чеченская Республика'),
(119, 2, 'Читинская обл.'),
(120, 2, 'Чувашия'),
(121, 2, 'Чукотский АО'),
(122, 2, 'Эвенкийский АО'),
(123, 2, 'Ямало-Ненецкий АО'),
(124, 2, 'Ярославская обл.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`id_city`),
  ADD UNIQUE KEY `city` (`city`),
  ADD KEY `id_region` (`id_region`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
  ADD PRIMARY KEY (`id_country`),
  ADD UNIQUE KEY `country` (`country`);

--
-- Indexes for table `tbl_region`
--
ALTER TABLE `tbl_region`
  ADD PRIMARY KEY (`id_region`),
  ADD UNIQUE KEY `region` (`region`),
  ADD KEY `id_country` (`id_country`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_region`
--
ALTER TABLE `tbl_region`
  MODIFY `id_region` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=125;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
