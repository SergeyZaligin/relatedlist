-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Май 31 2017 г., 06:21
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rlist`
--

-- --------------------------------------------------------

--
-- Структура таблицы `league`
--

CREATE TABLE `league` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `league`
--

INSERT INTO `league` (`id`, `title`) VALUES
(1, 'РФПЛ'),
(2, 'УПЛ'),
(3, 'АПЛ'),
(4, 'Серия А'),
(5, 'Испанская примера');

-- --------------------------------------------------------

--
-- Структура таблицы `team`
--

CREATE TABLE `team` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `id_league` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `team`
--

INSERT INTO `team` (`id`, `title`, `id_league`) VALUES
(1, 'Зенит', 1),
(2, 'Спартак', 1),
(3, 'Локомотив', 1),
(4, 'Нальчик', 1),
(5, 'Газмяс', 1),
(6, 'Шахтер Укр', 2),
(7, 'Луганск', 2),
(8, 'Донецк', 2),
(9, 'English', 3),
(10, 'London', 3),
(11, 'Manchester', 4),
(12, 'Barselona', 4),
(13, 'Chelsi', 5),
(14, 'Bagua', 5);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `league`
--
ALTER TABLE `league`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `league`
--
ALTER TABLE `league`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `team`
--
ALTER TABLE `team`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
