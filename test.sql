-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 10 2017 г., 16:54
-- Версия сервера: 5.6.37
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `test`
--

-- --------------------------------------------------------

--
-- Структура таблицы `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Иванов'),
(2, 'Петров');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `lead` text NOT NULL,
  `author_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `lead`, `author_id`) VALUES
(1, 'Слоны идут на север', 'Слоны идут на север', 1),
(2, 'Украинцы проголосовали за возвращение «преступного режима» Януковича', '92 процента зрителей украинского телеканала NewsOne проголосовали за возвращение режима прошлого президента Виктора Януковича. Об этом сообщает портал «Политнавигатор».', 2),
(3, 'Полсотни адептов Новороссии ворвались в кинотеатр «Октябрь»', 'Около 50 сторонников ополчения Донбасса ворвались в московский кинотеатр «Октябрь», где на 10 декабря был запланирован показ фильма «Полет пули» о войне на юго-востоке Украины. Об этом сообщает «Русская служба Би-би-си».\r\n\r\nОдин из активистов облил экран мочой. РЕН ТВ пишет, что группа потребовала прекратить показ ленты, «пропагандирующей убийства». Судя по кадрам, на одном из ворвавшихся в зал была одежда с символикой Новороссии, также активисты выкрикивали: «Долой фашистов!».\r\n\r\nЗрителей вывели, а полиции пришлось вызвать подкрепление.', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `name`) VALUES
(1, 'nick@mail.ru', 'Nick Var'),
(2, 'Mick@mail.ru', 'Mike'),
(3, 'nick2@mail.ru', 'Nick2 Var'),
(4, 'Mick2@mail.ru', 'Mike2'),
(5, 'Vasya@mail.ru', 'Vasya'),
(6, 'Vasya@mail.ru', 'Vasya'),
(7, 'Vasya@mail.ru', 'Vasya');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `authors`
--
ALTER TABLE `authors`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
