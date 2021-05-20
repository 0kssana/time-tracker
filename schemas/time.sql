-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 20 2021 г., 07:57
-- Версия сервера: 8.0.19
-- Версия PHP: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `time`
--

-- --------------------------------------------------------

--
-- Структура таблицы `email_confirmations`
--

CREATE TABLE `email_confirmations` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED NOT NULL,
  `code` char(32) NOT NULL,
  `createdAt` int UNSIGNED NOT NULL,
  `modifiedAt` int UNSIGNED DEFAULT NULL,
  `confirmed` char(1) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email_confirmations`
--

INSERT INTO `email_confirmations` (`id`, `usersId`, `code`, `createdAt`, `modifiedAt`, `confirmed`) VALUES
(1, 5, '6dvDZYtMpX1a8ngquvcFS9IbTxFDIAdQ', 1621224947, NULL, 'N'),
(2, 6, 'VCsbhJtKTf5eRypUUJqXX2H4AG8qIg', 1621225823, NULL, 'N'),
(3, 7, 'WCBzNT1UvvYwpf4efZF69yB9JaiO4IG', 1621228781, NULL, 'N'),
(4, 8, 'aYUBGjb4t8wRRBqryATOkoRqjZhYF4v', 1621233646, NULL, 'N'),
(5, 9, 'zKQBefbVFfIJrEasIBkoeuujo9ImAeQ', 1621233693, NULL, 'N');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_logins`
--

CREATE TABLE `failed_logins` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED DEFAULT NULL,
  `ipAddress` char(15) NOT NULL,
  `attempted` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `failed_logins`
--

INSERT INTO `failed_logins` (`id`, `usersId`, `ipAddress`, `attempted`) VALUES
(1, 10, '127.0.0.1', 1621234046),
(2, 10, '127.0.0.1', 1621234050),
(3, 7, '127.0.0.1', 1621234063),
(4, 11, '127.0.0.1', 1621248092),
(5, 10, '127.0.0.1', 1621248135),
(6, 10, '127.0.0.1', 1621248145),
(7, 7, '127.0.0.1', 1621248160),
(8, 13, '127.0.0.1', 1621248254),
(9, 13, '127.0.0.1', 1621248306),
(10, 13, '127.0.0.1', 1621248529),
(11, 13, '127.0.0.1', 1621248765),
(12, 5, '127.0.0.1', 1621248922),
(13, 5, '127.0.0.1', 1621248961),
(14, 5, '127.0.0.1', 1621248969),
(15, 5, '127.0.0.1', 1621249201),
(16, 5, '127.0.0.1', 1621249212),
(17, 13, '127.0.0.1', 1621249226),
(18, 13, '127.0.0.1', 1621249271),
(19, 13, '127.0.0.1', 1621249331),
(20, 13, '127.0.0.1', 1621249346),
(21, 13, '127.0.0.1', 1621249377),
(22, 13, '127.0.0.1', 1621249397),
(23, 14, '127.0.0.1', 1621307081),
(24, 14, '127.0.0.1', 1621307119),
(25, 13, '127.0.0.1', 1621310491),
(26, 16, '127.0.0.1', 1621310519),
(27, 16, '127.0.0.1', 1621310533),
(28, 12, '127.0.0.1', 1621321497),
(29, 12, '127.0.0.1', 1621321505),
(30, 11, '127.0.0.1', 1621321649),
(31, 11, '127.0.0.1', 1621321657),
(32, 1, '127.0.0.1', 1621321675),
(33, 7, '127.0.0.1', 1621321722),
(34, 7, '127.0.0.1', 1621321730),
(35, 7, '127.0.0.1', 1621321788),
(36, 18, '127.0.0.1', 1621321853),
(37, 18, '127.0.0.1', 1621321971),
(38, 18, '127.0.0.1', 1621321995),
(39, 18, '127.0.0.1', 1621322130),
(40, 7, '127.0.0.1', 1621328495),
(41, 3, '127.0.0.1', 1621340234);

-- --------------------------------------------------------

--
-- Структура таблицы `holiday`
--

CREATE TABLE `holiday` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `day` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `active` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `holiday`
--

INSERT INTO `holiday` (`id`, `name`, `day`, `month`, `active`) VALUES
(15, '0', '04', '04', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `holidays`
--

CREATE TABLE `holidays` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `day` varchar(255) NOT NULL,
  `month` varchar(255) NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `holidays`
--

INSERT INTO `holidays` (`id`, `name`, `day`, `month`, `active`) VALUES
(1, 'New Year', '12', '12', '2'),
(2, 'Victory day', '09', '05', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `late`
--

CREATE TABLE `late` (
  `id` int NOT NULL,
  `time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_changes`
--

CREATE TABLE `password_changes` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `password_changes`
--

INSERT INTO `password_changes` (`id`, `usersId`, `ipAddress`, `userAgent`, `createdAt`) VALUES
(1, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621228885),
(2, 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36', 1621308757);

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `profilesId` int UNSIGNED NOT NULL,
  `resource` varchar(16) NOT NULL,
  `action` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `profilesId`, `resource`, `action`) VALUES
(1, 3, 'users', 'index'),
(2, 3, 'users', 'search'),
(3, 3, 'profiles', 'index'),
(4, 3, 'profiles', 'search'),
(5, 1, 'users', 'index'),
(6, 1, 'users', 'search'),
(7, 1, 'users', 'edit'),
(8, 1, 'users', 'create'),
(9, 1, 'users', 'delete'),
(10, 1, 'users', 'changePassword'),
(11, 1, 'profiles', 'index'),
(12, 1, 'profiles', 'search'),
(13, 1, 'profiles', 'edit'),
(14, 1, 'profiles', 'create'),
(15, 1, 'profiles', 'delete'),
(16, 1, 'permissions', 'index'),
(23, 2, 'users', 'index');

-- --------------------------------------------------------

--
-- Структура таблицы `profiles`
--

CREATE TABLE `profiles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(64) NOT NULL,
  `active` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `active`) VALUES
(1, 'Administrators', 'Y'),
(2, 'Users', 'Y'),
(3, 'Read-Only', 'Y');

-- --------------------------------------------------------

--
-- Структура таблицы `remember_tokens`
--

CREATE TABLE `remember_tokens` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED NOT NULL,
  `token` char(32) NOT NULL,
  `userAgent` text NOT NULL,
  `createdAt` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `reset_passwords`
--

CREATE TABLE `reset_passwords` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED NOT NULL,
  `code` varchar(48) NOT NULL,
  `createdAt` int UNSIGNED NOT NULL,
  `modifiedAt` int UNSIGNED DEFAULT NULL,
  `reset` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `success_logins`
--

CREATE TABLE `success_logins` (
  `id` int UNSIGNED NOT NULL,
  `usersId` int UNSIGNED NOT NULL,
  `ipAddress` char(15) NOT NULL,
  `userAgent` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `success_logins`
--

INSERT INTO `success_logins` (`id`, `usersId`, `ipAddress`, `userAgent`) VALUES
(1, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(2, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(3, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(4, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(5, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(6, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(7, 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(8, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(9, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(10, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(11, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(12, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(13, 15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(14, 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(15, 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(16, 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(17, 16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(18, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(19, 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(20, 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(21, 17, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(22, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(23, 18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(24, 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(25, 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(26, 19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(27, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(28, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(29, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(30, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(31, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(32, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(33, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(34, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(35, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(36, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(37, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(38, 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(39, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(40, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(41, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(42, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(43, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(44, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(45, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(46, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(47, 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(48, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(49, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(50, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(51, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(52, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(53, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(54, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(55, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(56, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(57, 21, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(58, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(59, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(60, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(61, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36'),
(62, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.212 Safari/537.36');

-- --------------------------------------------------------

--
-- Структура таблицы `time_data`
--

CREATE TABLE `time_data` (
  `id` int NOT NULL,
  `start_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `end_time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `work_time` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `total_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `time_data`
--

INSERT INTO `time_data` (`id`, `start_time`, `end_time`, `state`, `user_id`, `work_time`, `date`, `total_time`) VALUES
(17, '16:42', '16:42', 'stop', 1, NULL, '2021-05-20', NULL),
(33, '09:12', '09:12', 'stop', 3, NULL, '2021-05-18', NULL),
(34, '09:20', '09:20', 'stop', 3, NULL, '2021-05-04', NULL),
(35, '09:32', '09:32', 'stop', 3, NULL, '2021-05-11', NULL),
(36, '09:33', '09:33', 'stop', 3, NULL, '2021-05-13', NULL),
(37, '09:33', '09:34', 'stop', 3, NULL, '2021-05-17', NULL),
(38, '09:36', '09:36', 'stop', 3, NULL, '2021-05-11', NULL),
(39, '09:58', '09:58', 'stop', 1, NULL, '2021-05-27', NULL),
(40, '10:13', '10:13', 'stop', 21, NULL, '2021-05-11', NULL),
(41, '11:02', '11:02', 'stop', 3, NULL, '2021-05-03', NULL),
(42, '14:20', '14:20', 'stop', 1, '0', '2021-05-19', ' '),
(43, '14:20', '14:20', 'stop', 1, '0', '2021-05-19', ' '),
(44, '15:06', '15:06', 'stop', 1, '0', '2021-05-19', ' '),
(45, '15:13', '15:13', 'stop', 1, '0', '2021-05-19', ' '),
(46, '15:18', '15:18', 'stop', 21, '0', '2021-05-19', ' '),
(47, '15:25', '15:25', 'stop', 21, '0', '2021-05-19', ' '),
(48, '15:40', '15:40', 'stop', 21, '0', '2021-05-19', ' '),
(49, '15:46', '15:46', 'stop', 21, '0', '2021-05-19', ' '),
(50, '15:47', '15:47', 'stop', 1, '0', '2021-05-19', ' '),
(51, '16:00', '16:00', 'stop', 7, '0', '2021-05-19', ' '),
(52, '16:25', '16:25', 'stop', 7, '0', '2021-05-19', ' '),
(53, '16:25', '16:25', 'stop', 7, '0', '2021-05-19', ' '),
(54, '08:55', '08:56', 'stop', 1, '1', '2021-05-20', ' '),
(55, '10:19', '10:25', 'stop', 1, '6', '2021-05-20', '00:01'),
(56, '10:25', '10:26', 'stop', 1, '1', '2021-05-20', '00:07'),
(57, '10:29', '10:33', 'stop', 1, '4', '2021-05-20', '00:08'),
(58, '10:42', '10:42', 'stop', 1, '0', '2021-05-20', '00:12'),
(59, '10:43', '10:45', 'stop', 3, '2', '2021-05-20', ' '),
(60, '10:45', '10:45', 'stop', 3, '0', '2021-05-20', '00:02');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` char(60) NOT NULL,
  `mustChangePassword` char(1) DEFAULT NULL,
  `profilesId` int UNSIGNED NOT NULL,
  `banned` char(1) NOT NULL,
  `suspended` char(1) NOT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mustChangePassword`, `profilesId`, `banned`, `suspended`, `active`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$08$OXRtdkZpeVlhbXlhUklybemGU54EZK4X69CLeux6peV3XwToKR.Ue', 'N', 1, 'N', 'N', 'Y'),
(2, 'Maks', 'maks@tik.ru', '123456789', 'N', 2, 'N', 'N', 'Y'),
(3, 'Polina', 'polina@gmail.com', '$2y$08$aFA3aEhhb1poRFh3Z1pRcuaPssYr3H4dQ37/p95NfL/84TYBfDNYi', 'N', 2, 'N', 'N', 'Y'),
(7, 'John Dorian', 'dr.acula@scrub.com', '$2y$08$OXRtdkZpeVlhbXlhUklybemGU54EZK4X69CLeux6peV3XwToKR.Ue', 'N', 2, 'N', 'N', 'Y'),
(21, 'Egor', 'egor@tik.ru', '$2y$08$TjZ6ZGVaR21kYk1zdVdwSO6lk3hhlqEXxz3TEUVPoDbv6rLliww4y', 'N', 2, 'N', 'N', 'N');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `email_confirmations`
--
ALTER TABLE `email_confirmations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_logins`
--
ALTER TABLE `failed_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Индексы таблицы `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `late`
--
ALTER TABLE `late`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_changes`
--
ALTER TABLE `password_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- Индексы таблицы `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `active` (`active`);

--
-- Индексы таблицы `remember_tokens`
--
ALTER TABLE `remember_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `token` (`token`);

--
-- Индексы таблицы `reset_passwords`
--
ALTER TABLE `reset_passwords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Индексы таблицы `success_logins`
--
ALTER TABLE `success_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersId` (`usersId`);

--
-- Индексы таблицы `time_data`
--
ALTER TABLE `time_data`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profilesId` (`profilesId`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `email_confirmations`
--
ALTER TABLE `email_confirmations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `failed_logins`
--
ALTER TABLE `failed_logins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT для таблицы `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `late`
--
ALTER TABLE `late`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `password_changes`
--
ALTER TABLE `password_changes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT для таблицы `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `remember_tokens`
--
ALTER TABLE `remember_tokens`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `reset_passwords`
--
ALTER TABLE `reset_passwords`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `success_logins`
--
ALTER TABLE `success_logins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT для таблицы `time_data`
--
ALTER TABLE `time_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
