-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 03 2017 г., 22:08
-- Версия сервера: 10.1.25-MariaDB
-- Версия PHP: 7.1.7

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
-- Структура таблицы `basket`
--

CREATE TABLE `basket` (
  `order_id` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `product_id` varchar(11) NOT NULL,
  `count` varchar(55) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `basket`
--

INSERT INTO `basket` (`order_id`, `user_id`, `product_id`, `count`, `status`) VALUES
(3, '6', '1', '4', 0),
(4, '6', '3', '1', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `image` varchar(55) NOT NULL,
  `title` varchar(55) NOT NULL,
  `content` varchar(255) NOT NULL,
  `price` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `image`, `title`, `content`, `price`) VALUES
(1, 'img/1.jpg', 'product 1', 'first product', '10'),
(2, 'img/2.jpg', 'product 2', 'second product', '20'),
(3, 'img/3.jpg', 'product 3', 'third product', '30'),
(4, 'img/4.jpg', 'product 4', '4 product', '22'),
(5, 'img/5.jpg', 'product 5', '5 product', '55'),
(6, 'img/6.jpg', 'product 6', '6 product', '66'),
(7, 'img/7.jpg', 'product 7', '7 product', '77'),
(8, 'img/8.jpg', 'product 8', '8 product', '88'),
(9, 'img/9.jpg', 'product 9', '9 product', '99'),
(10, 'img/10.jpg', 'product 10', '10 product', '1010'),
(11, 'img/11.jpg', 'product 11', '11 product', '1111'),
(12, 'img/12.jpg', 'product 12', '12 product', '1212'),
(13, 'img/13.jpg', 'product 13', '13 product', '1313'),
(14, 'img/14.jpg', 'product 14', '14 product', '1414'),
(15, 'img/15.jpg', 'product 15', '15 product', '1515');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `login` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `login`, `password`, `role`) VALUES
(6, 'aidar', 'admin', 'f0d587897834a73c4ca8290d3b13742781dc9bdb52d04dc20036dbd8313ed055', 1),
(7, 'asdasd', 'dvvd', 'c011728eed899c6e4694f44f761f5f8a81dc9bdb52d04dc20036dbd8313ed055', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `basket`
--
ALTER TABLE `basket`
  ADD PRIMARY KEY (`order_id`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT для таблицы `basket`
--
ALTER TABLE `basket`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
