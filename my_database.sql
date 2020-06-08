-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 08 2020 г., 11:25
-- Версия сервера: 10.3.13-MariaDB-log
-- Версия PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `my_database`
--

-- --------------------------------------------------------

--
-- Структура таблицы `clients`
--

CREATE TABLE `clients` (
  `id_cl` int(11) NOT NULL,
  `name_cl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `clients`
--

INSERT INTO `clients` (`id_cl`, `name_cl`) VALUES
(1, 'Рудопысов Игорь'),
(2, 'Косов Сергей');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `h` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `p` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `img`, `h`, `p`) VALUES
(3, 'images/yellowhook.png', 'Новинка! Крючок \"ОПАРЫШ\"', 'На подобную наживку клюют окунь, ерш, судак, \r\nфорель и многие другие представители рыбы. К \r\nплюсам можно отнести такую же универсальность,\r\nа к минусам - более сложную доступность. Поэто-\r\nму такие крючки в нашем магазине стоят дороже.'),
(4, 'images/greenhook.png', 'Новинка! Крючок «ЛЯГУШКА»', ' Уникальный крючок. На него просто отлично \r\nловится хищная рыба, в чем ему уступают преды-\r\nдущие представители. Также этот крючок сделан\r\nнастолько качественно и естественно, что рыба не\r\nможет отличить его от настоящей наживки и \r\nотлично клюет.'),
(6, 'images/redhook.png', 'Новинка! Крючок «ДОЖДЕВЫЕ ЧЕРВИ»', ' На такой крючок отлично ловится речная рыба \r\n(плотва, карась, а также крупная рыба - сазан, лещ). \r\nДля рыболовов это стандартная наживка \r\nи практически универсальная, т.к. даже некоторые \r\nпредставители хищной рыбы клюют на нее.'),
(13, 'images/redhook.png', 'гавно', ' g'),
(14, 'greenhook.png', 'dewd', ' eds'),
(16, 'images/greenhook.png', '', ' ');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id_ord` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  `id_tov` int(11) NOT NULL,
  `kolvo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id_ord`, `id_us`, `id_tov`, `kolvo`) VALUES
(1, 2, 2, 3),
(2, 1, 1, 3),
(3, 1, 1, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id_prod` int(11) NOT NULL,
  `name_tov` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id_prod`, `name_tov`, `price`) VALUES
(1, 'Апельсины', 100),
(2, 'Яблоки', 200);

-- --------------------------------------------------------

--
-- Структура таблицы `telep`
--

CREATE TABLE `telep` (
  `id` int(11) NOT NULL,
  `mark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `telep`
--

INSERT INTO `telep` (`id`, `mark`, `price`) VALUES
(1, 'Samsung', '25000'),
(2, 'Iphone', '100000'),
(5, 'Honor', '2500'),
(6, 'Xiaomi', '42500'),
(15, 'Samsung', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'arseniy', '12345678Ars'),
(3, 'sergey', 'sergey123'),
(4, 'ongelina', 'igordurak150'),
(5, 'iigor', '313674'),
(6, 'kokrina', 'boguta17'),
(13, 'maksim', '123'),
(15, 'admin', 'admin158');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id_cl`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_ord`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_prod`);

--
-- Индексы таблицы `telep`
--
ALTER TABLE `telep`
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
-- AUTO_INCREMENT для таблицы `clients`
--
ALTER TABLE `clients`
  MODIFY `id_cl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id_ord` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `telep`
--
ALTER TABLE `telep`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
