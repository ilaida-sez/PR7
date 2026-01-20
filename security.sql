-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 12 2026 г., 09:58
-- Версия сервера: 5.7.39-log
-- Версия PHP: 8.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `security`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `Id` int(11) NOT NULL COMMENT 'Код',
  `IdUser` int(11) NOT NULL COMMENT 'Код пользователя',
  `IdPost` int(11) NOT NULL COMMENT 'Код поста',
  `Messages` varchar(1000) NOT NULL COMMENT 'Сообщение'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `Id` int(11) NOT NULL COMMENT 'Код',
  `Ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ИП пользователя',
  `IdUser` int(11) NOT NULL COMMENT 'ID пользователя',
  `Date` datetime NOT NULL COMMENT 'Дата и время события',
  `TimeOnline` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Время в сети',
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'INFO' COMMENT 'Статус события',
  `Event` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`Id`, `Ip`, `IdUser`, `Date`, `TimeOnline`, `Status`, `Event`) VALUES
(1, '127.0.0.1', 24, '2025-12-08 11:11:02', '00:00:00', 'SUCCESS', 'Пользователь minji авторизовался.'),
(2, '127.0.0.1', 24, '2025-12-08 11:11:10', '00:00:08', 'INFO', 'Пользователь minji вышел из системы.'),
(3, '127.0.0.1', 1, '2025-12-08 11:11:14', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(4, '127.0.0.1', 1, '2026-01-12 06:13:21', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(5, '127.0.0.1', 1, '2026-01-12 06:17:05', '00:03:44', 'INFO', 'Пользователь admin вышел из системы.'),
(6, '127.0.0.1', 1, '2026-01-12 06:17:12', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(7, '127.0.0.1', 1, '2026-01-12 06:18:57', '00:01:45', 'INFO', 'Пользователь admin вышел из системы.'),
(8, '127.0.0.1', 1, '2026-01-12 06:18:59', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(9, '127.0.0.1', 1, '2026-01-12 06:20:13', '00:01:14', 'INFO', 'Пользователь admin вышел из системы.'),
(10, '127.0.0.1', 24, '2026-01-12 06:20:15', '00:00:00', 'SUCCESS', 'Пользователь minji авторизовался.'),
(11, '127.0.0.1', 24, '2026-01-12 06:20:22', '00:00:07', 'INFO', 'Пользователь minji вышел из системы.'),
(12, '127.0.0.1', 1, '2026-01-12 06:20:25', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(13, '127.0.0.1', 1, '2026-01-12 06:23:02', '00:02:37', 'INFO', 'Пользователь admin вышел из системы.'),
(14, '127.0.0.1', 1, '2026-01-12 09:46:21', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(15, '127.0.0.1', 24, '2026-01-12 09:46:32', '00:00:00', 'SUCCESS', 'Пользователь minji авторизовался.'),
(16, '127.0.0.1', 1, '2026-01-12 09:46:38', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(17, '127.0.0.1', 24, '2026-01-12 09:46:42', '00:00:00', 'SUCCESS', 'Пользователь minji авторизовался.'),
(18, '127.0.0.1', 1, '2026-01-12 09:46:47', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(19, '127.0.0.1', 1, '2026-01-12 09:49:03', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался.'),
(20, '127.0.0.1', 1, '2026-01-12 09:55:30', '00:00:00', 'SUCCESS', 'Пользователь admin авторизовался');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `text`, `img`) VALUES
(1, 'Внимание! Режим работы на 11 и 12 сентября 2020 г.', '11.09.2020 г. (пятница) занятия проводятся по расписанию звонков «пара-час». 12.09.2020 г. (суббота) занятия проводятся в дистанционном формате (в техникум приходить не нужно).', './img/img831.jpg\r\n'),
(2, 'Продолжается прием на заочное обучение', 'Пермский авиационный техникум продолжает прием документов на заочное обучение по специальностям «Производство авиационных двигателей», «Технология машиностроения», «Управление качеством продукции, процессов и услуг (по отраслям)» и «Прикладная информатика (по отраслям)».\r\n\r\nДокументы принимаются до 15 сентября 2020 г. включительно с 15:00 до 17:00. При себе иметь оригиналы и копии паспорта, документа об образовании, ИНН, СНИЛС и фотографии. Справки по телефону (342) 212-14-92.', './img/img830.jpg\r\n'),
(3, 'Расписание звонков', 'Расписание звонков в разных корпусах (Корпус А (1-2 и 3 этаж), Корпус В, Корпус С)\r\n<a href=\"./documents/Расписание звонков.docx\">Скачать</a>', './img/img831.jpg'),
(4, 'Основные принципы построения безопасных сайтов. Понятие безопасности приложений и классификация опасностей', 'Основные принципы построения безопасных сайтов. Понятие безопасности приложений и классификация опасностей\r\n<a href=\"./documents/1.docx\">Скачать</a>', './img/docx.png'),
(5, 'Источники угроз информационной безопасности и меры по их предотвращению', 'Источники угроз информационной безопасности и меры по их предотвращению\r\n<a href=\"./documents/2.doc\">Скачать</a>', './img/docx.png'),
(6, 'Регламенты и методы разработки безопасных веб-приложений', 'Регламенты и методы разработки безопасных веб-приложений\r\n<a href=\"./documents/3.pdf\">Скачать</a>', './img/docx.png');

-- --------------------------------------------------------

--
-- Структура таблицы `session`
--

CREATE TABLE `session` (
  `Id` int(11) NOT NULL COMMENT 'Код',
  `IdUser` int(11) NOT NULL COMMENT 'Код пользователя',
  `Ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'IP адрес',
  `DateStart` datetime NOT NULL COMMENT 'Время входа',
  `DateNow` datetime NOT NULL COMMENT 'Текущее время сессии'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `session`
--

INSERT INTO `session` (`Id`, `IdUser`, `Ip`, `DateStart`, `DateNow`) VALUES
(1, 24, '127.0.0.1', '2025-12-08 11:11:02', '2025-12-08 11:11:04'),
(2, 1, '127.0.0.1', '2025-12-08 11:11:14', '2025-12-08 11:11:20'),
(3, 1, '127.0.0.1', '2026-01-12 06:13:21', '2026-01-12 06:17:00'),
(4, 1, '127.0.0.1', '2026-01-12 06:17:12', '2026-01-12 06:17:39'),
(5, 1, '127.0.0.1', '2026-01-12 06:18:59', '2026-01-12 06:20:10'),
(6, 24, '127.0.0.1', '2026-01-12 06:20:15', '2026-01-12 06:20:15'),
(7, 1, '127.0.0.1', '2026-01-12 06:20:25', '2026-01-12 06:22:48'),
(8, 1, '127.0.0.1', '2026-01-12 09:46:21', '2026-01-12 09:46:29'),
(9, 24, '127.0.0.1', '2026-01-12 09:46:32', '2026-01-12 09:46:32'),
(10, 1, '127.0.0.1', '2026-01-12 09:46:38', '2026-01-12 09:46:38'),
(11, 24, '127.0.0.1', '2026-01-12 09:46:42', '2026-01-12 09:46:42'),
(12, 1, '127.0.0.1', '2026-01-12 09:46:47', '2026-01-12 09:48:59'),
(13, 1, '127.0.0.1', '2026-01-12 09:49:03', '2026-01-12 09:55:03'),
(14, 1, '127.0.0.1', '2026-01-12 09:55:30', '2026-01-12 09:57:31');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `roll`) VALUES
(1, 'admin', 'Asdfg123', 1),
(8, 'user', 'Asdfg123', 0),
(24, 'minji', 'minji', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код';

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `session`
--
ALTER TABLE `session`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
