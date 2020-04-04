-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 04 2020 г., 10:57
-- Версия сервера: 5.7.27-0ubuntu0.16.04.1
-- Версия PHP: 7.0.33-0ubuntu0.16.04.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `user1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `albums`
--

CREATE TABLE `albums` (
  `album_id` int(11) NOT NULL,
  `album_title` varchar(30) NOT NULL,
  `album_year` varchar(30) NOT NULL,
  `album_tracks` varchar(10) DEFAULT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `albums`
--

INSERT INTO `albums` (`album_id`, `album_title`, `album_year`, `album_tracks`, `artist_id`) VALUES
(1, 'Come on Over', '2003', '7', 2),
(2, 'Millennium', '2005', '5', 3),
(3, 'Saturday Night Fever', '2002', '4', 5),
(4, 'Rumours', '1998', '8', 4),
(5, 'Dangerous', '1995', '9', 6),
(6, 'Music Box', '2010', '10', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `albums_songs`
--

CREATE TABLE `albums_songs` (
  `album_song_id` int(11) NOT NULL,
  `album_id` int(11) DEFAULT NULL,
  `song_id` int(11) DEFAULT NULL,
  `track_number` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `albums_songs`
--

INSERT INTO `albums_songs` (`album_song_id`, `album_id`, `song_id`, `track_number`) VALUES
(1, 1, 2, '3'),
(2, 2, 1, '4'),
(3, 3, 5, '1'),
(4, 5, 4, '3'),
(5, 6, 3, '2'),
(6, 4, 6, '1');

-- --------------------------------------------------------

--
-- Структура таблицы `artists`
--

CREATE TABLE `artists` (
  `artist_id` int(11) NOT NULL,
  `artist_site_url` varchar(200) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_site_url`, `genre_id`, `country_id`) VALUES
(1, 'https://www.ivanov.ru', 1, 2),
(2, 'https://www.petrov.ru', 2, 1),
(3, 'https://www.sidorov.ru', 4, 3),
(4, 'https://www.popov.ru', 3, 5),
(5, 'https://www.sokolov.ru', 5, 4),
(6, 'https://www.smirnov.ru', 6, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
(1, 'Brazil'),
(2, 'Egypt'),
(3, 'England'),
(4, 'Japan'),
(5, 'Poland'),
(6, 'Russia');

-- --------------------------------------------------------

--
-- Структура таблицы `genres`
--

CREATE TABLE `genres` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `genres`
--

INSERT INTO `genres` (`genre_id`, `genre_name`) VALUES
(1, 'Rock Music'),
(2, 'Techno'),
(3, 'Jazz'),
(4, 'Dubstep'),
(5, 'Pop Music'),
(6, 'Electro');

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) NOT NULL,
  `group_name` varchar(30) NOT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`group_id`, `group_name`, `artist_id`) VALUES
(1, 'Nirvana', 1),
(2, 'The Beatles', 4),
(3, 'Thirty Seconds to Mars', 3),
(4, 'Linkin Park', 5),
(5, 'The Rolling Stones', 6),
(6, 'ABBA', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `persons`
--

CREATE TABLE `persons` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `second_name` varchar(30) NOT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `sex` varchar(30) NOT NULL,
  `artist_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `persons`
--

INSERT INTO `persons` (`person_id`, `first_name`, `second_name`, `birthday`, `sex`, `artist_id`) VALUES
(1, 'Ivan', 'Ivanov', '11.02.2001', 'male', 1),
(2, 'Petr', 'Petrov', '09.03.1998', 'male', 2),
(3, 'Andrew', 'Sidorov', '13.04.1986', 'male', 3),
(4, 'Aleksey', 'Popov', '17.05.1993', 'male', 4),
(5, 'Anton', 'Sokolov', '18.07.1996', 'male', 5),
(6, 'Vladimir', 'Smirnov', '28.02.1991', 'male', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `songs`
--

CREATE TABLE `songs` (
  `song_id` int(11) NOT NULL,
  `song_title` varchar(30) NOT NULL,
  `song_duration` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `songs`
--

INSERT INTO `songs` (`song_id`, `song_title`, `song_duration`) VALUES
(1, 'Dont Speak', '1 minute 40 second'),
(2, 'Happy Nation', '1 minute 30 second'),
(3, 'Mother Love', '1 minute 20 second'),
(4, 'Losing My Religion', '1 minute 50 second'),
(5, 'Wonderwall', '2 minute 10 second'),
(6, 'Ordinary World', '2 minute 20 second');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Индексы таблицы `albums_songs`
--
ALTER TABLE `albums_songs`
  ADD PRIMARY KEY (`album_song_id`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `song_id` (`song_id`);

--
-- Индексы таблицы `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`),
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Индексы таблицы `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Индексы таблицы `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`genre_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Индексы таблицы `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`person_id`),
  ADD KEY `artist_id` (`artist_id`);

--
-- Индексы таблицы `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `albums`
--
ALTER TABLE `albums`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `albums_songs`
--
ALTER TABLE `albums_songs`
  MODIFY `album_song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `genres`
--
ALTER TABLE `genres`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `persons`
--
ALTER TABLE `persons`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `albums`
--
ALTER TABLE `albums`
  ADD CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);

--
-- Ограничения внешнего ключа таблицы `albums_songs`
--
ALTER TABLE `albums_songs`
  ADD CONSTRAINT `albums_songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`),
  ADD CONSTRAINT `albums_songs_ibfk_2` FOREIGN KEY (`song_id`) REFERENCES `songs` (`song_id`);

--
-- Ограничения внешнего ключа таблицы `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `artists_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  ADD CONSTRAINT `artists_ibfk_2` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`);

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);

--
-- Ограничения внешнего ключа таблицы `persons`
--
ALTER TABLE `persons`
  ADD CONSTRAINT `persons_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`artist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
