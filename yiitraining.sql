-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 12 2019 г., 23:57
-- Версия сервера: 8.0.12
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `yiitraining`
--

-- --------------------------------------------------------

--
-- Структура таблицы `book`
--

CREATE TABLE `book` (
  `b_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `book`
--

INSERT INTO `book` (`b_id`, `title`) VALUES
(2, 'Руслан и Людмила'),
(2, 'Евгений Онегин'),
(2, 'Скупой рыцарь'),
(2, 'Пиковая дама'),
(3, 'Война и мир'),
(3, 'Анна Каренина'),
(3, 'Воскресение'),
(4, 'Мещане'),
(4, 'На дне'),
(4, 'Жизнь Клима Самгина'),
(5, 'Три сестры'),
(5, 'Вишнёвый сад'),
(6, 'Тарас Бульба'),
(6, 'Ревизор'),
(7, 'Герой нашего времени'),
(7, 'Мцыри');

-- --------------------------------------------------------

--
-- Структура таблицы `writer`
--

CREATE TABLE `writer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `patronymic` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `surname` varchar(20) NOT NULL,
  `book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `writer`
--

INSERT INTO `writer` (`id`, `name`, `patronymic`, `surname`, `book_id`) VALUES
(5, 'Александр ', 'Сергеевич', 'Пушкин ', 2),
(9, 'Лев', 'Николаевич', 'Толстой', 3),
(10, 'Максим', 'Максимович', 'Горький ', 4),
(11, 'Антон', 'Павлович', 'Чехов', 5),
(12, 'Николай', 'Васильевич', 'Гоголь', 6),
(13, 'Михаил', 'Юрьевич', 'Лермонтов', 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `book`
--
ALTER TABLE `book`
  ADD KEY `b_id` (`b_id`);

--
-- Индексы таблицы `writer`
--
ALTER TABLE `writer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `writer`
--
ALTER TABLE `writer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `writer`
--
ALTER TABLE `writer`
  ADD CONSTRAINT `writer_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`b_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
