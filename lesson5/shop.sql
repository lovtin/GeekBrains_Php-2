-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3307
-- Время создания: Сен 10 2018 г., 17:41
-- Версия сервера: 5.6.38
-- Версия PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `shop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `fio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `fio`, `email`, `text`, `date`) VALUES
(14, 'qwerty', 'qwerty@mail.ru', 'Good', '2017-11-05 11:21:57');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `price`, `src`, `small_src`, `is_active`) VALUES
(1, 'Ноутбук Lenovo IdeaPad 110-15IBR (80T700С2RK)', 'Устройство справится с любыми профессиональными, бытовыми и учебными задачами, включая просмотр качественного видео и работу с офисными приложениями. Оно снабжено современным процессором Intel и оперативной памятью с большим объёмом.', 18990, 'uploads/6_a045782f9ae32761dbd0f7393abaf54a_1.jpg', 'uploads/mini/6_a045782f9ae32761dbd0f7393abaf54a_1.jpg', 1),
(16, 'Test', 'тест', 11111, 'uploads/22115469.jpg', 'uploads/mini/22115469.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `src`, `small_src`, `size`, `count`) VALUES
(38, '6_a045782f9ae32761dbd0f7393abaf54a_1.jpg', 'uploads/6_a045782f9ae32761dbd0f7393abaf54a_1.jpg', 'uploads/mini/6_a045782f9ae32761dbd0f7393abaf54a_1.jpg', 257406, 0),
(39, '22115469.jpg', 'uploads/22115469.jpg', 'uploads/mini/22115469.jpg', 111295, 0),
(40, '1.jpg', 'uploads/1.jpg', 'uploads/mini/1.jpg', 50232, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `temp_orders`
--

CREATE TABLE `temp_orders` (
  `id` int(11) NOT NULL,
  `id_good` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `login` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `temp_orders`
--

INSERT INTO `temp_orders` (`id`, `id_good`, `name`, `price`, `count`, `login`) VALUES
(20, 16, 'Test', 11111, 2, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `email`, `pass`, `date`, `admin`) VALUES
(21, 'qwerty', 'erer@mail.ru', 'd8578edf8458ce06fbc5bb76a58c5ca4', '2017-11-04 16:31:22', 0),
(22, 'admin', 'admin@mail.ru', '21232f297a57a5a743894a0e4a801fc3', '2017-11-04 16:47:27', 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `NAME` (`name`);
ALTER TABLE `goods` ADD FULLTEXT KEY `description` (`description`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `src` (`src`);

--
-- Индексы таблицы `temp_orders`
--
ALTER TABLE `temp_orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT для таблицы `temp_orders`
--
ALTER TABLE `temp_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
