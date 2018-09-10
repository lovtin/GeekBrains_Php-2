-- --------------------------------------------------------
-- Хост:                         172.19.55.38
-- Версия сервера:               5.6.23 - MySQL Community Server (GPL)
-- ОС Сервера:                   Linux
-- HeidiSQL Версия:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- Дамп данных таблицы test2.categories: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id_category`, `status`, `name`, `parent_id`) VALUES
	(1, 1, 'Category 1', 0),
	(2, 1, 'Category 2', 1),
	(3, 1, 'Category 3', 1),
	(4, 1, 'Category 4', 0),
	(5, 1, 'Category 5', 2),
	(6, 1, 'Category 6', 5);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Дамп данных таблицы test2.goods: ~8 rows (приблизительно)
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` (`id_good`, `name`, `price`, `id_category`, `status`) VALUES
	(1, 'Good 1', 100.2, 1, 1),
	(2, 'Good 2', 120, 2, 1),
	(3, 'Good 3', 47.8, 2, 1),
	(4, 'Good 4', 100500, 2, 1),
	(5, 'Good 5', 2001, 3, 4),
	(6, 'Good 6', 1020.2, 4, 1),
	(7, 'Good 7', 1.2, 4, 1),
	(8, 'Good 8', 800.1, 5, 1);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;

-- Дамп данных таблицы test2.pages: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` (`id`, `name`) VALUES
	(1, 'Главная'),
	(2, 'О Магазине'),
	(3, 'Каталог');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
