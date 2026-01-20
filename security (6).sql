-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 20 2026 г., 16:40
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

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`Id`, `IdUser`, `IdPost`, `Messages`) VALUES
(17, 8, 1, 'coment');

-- --------------------------------------------------------

--
-- Структура таблицы `logs`
--

CREATE TABLE `logs` (
  `Id` int(11) NOT NULL COMMENT 'Код',
  `Ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ИП пользователя',
  `IdUser` int(11) NOT NULL COMMENT 'Код пользователя',
  `Date` datetime NOT NULL,
  `TimeOnline` time NOT NULL COMMENT 'Время в сети',
  `Event` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Событие',
  `Status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'INFO',
  `session_start` datetime DEFAULT NULL,
  `session_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `logs`
--

INSERT INTO `logs` (`Id`, `Ip`, `IdUser`, `Date`, `TimeOnline`, `Event`, `Status`, `session_start`, `session_end`) VALUES
(1, '127.0.0.1', 1, '2026-01-20 16:33:46', '00:00:00', 'Пользователь admin авторизовался', 'SUCCESS', NULL, NULL),
(2, '127.0.0.1', 1, '2026-01-20 16:34:23', '00:00:00', 'Пользователь admin авторизовался', 'SUCCESS', NULL, NULL);

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
  `Ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ИП адрес',
  `DateStart` datetime NOT NULL COMMENT 'Время входа',
  `DateNow` int(11) NOT NULL COMMENT 'Время на сайте'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(8, 'user', 'Asdfg123', 0);

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
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `logs`
--
ALTER TABLE `logs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `session`
--
ALTER TABLE `session`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Код';

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
