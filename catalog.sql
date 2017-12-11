-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.53 - MySQL Community Server (GPL)
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.4.0.5174
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица catalog.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы catalog.category: ~4 rows (приблизительно)
DELETE FROM `category`;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `name`, `sort_order`, `status`) VALUES
	(13, 'Ноутбуки', 1, 1),
	(14, 'Планшеты', 2, 1),
	(15, 'Мониторы', 3, 1),
	(16, 'Игровые компьютеры', 4, 1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Дамп структуры для таблица catalog.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Индентификатор товара',
  `tittle` varchar(255) DEFAULT NULL COMMENT 'Название товара',
  `category_id` int(11) NOT NULL COMMENT 'Категории товара//Их может быть несколько',
  `code` int(11) NOT NULL COMMENT 'Код товара',
  `price` float NOT NULL COMMENT 'Цена товара',
  `price_new` float NOT NULL COMMENT 'Акционная цена',
  `availability` int(11) NOT NULL COMMENT 'Доступность товара',
  `brand` varchar(255) NOT NULL COMMENT 'Бренд или марка которой принадлежит товар',
  `description` text NOT NULL COMMENT 'Полное описание товара',
  `is_new` int(11) NOT NULL DEFAULT '0' COMMENT 'Отвечает за поялвение ярлыка NEW на изображении товара',
  `is_recommended` int(11) NOT NULL DEFAULT '0' COMMENT 'Отвечает за поялвение в разделе рекомендованных',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Отображать товар в списках или нет',
  `breadcrumbs` varchar(255) NOT NULL COMMENT 'Хлебные крошки для СЕО',
  `metatags` varchar(255) NOT NULL COMMENT 'Метатеги для подстановки в шапку сайта',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы catalog.products: ~12 rows (приблизительно)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `tittle`, `category_id`, `code`, `price`, `price_new`, `availability`, `brand`, `description`, `is_new`, `is_recommended`, `status`, `breadcrumbs`, `metatags`) VALUES
	(34, 'Ноутбук Asus X200MA (X200MA-KX315D)', 13, 1839707, 395, 0, 1, 'Asus', 'Экран 11.6" (1366x768) HD LED, глянцевый / Intel Pentium N3530 (2.16 - 2.58 ГГц) / RAM 4 ГБ / HDD 750 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / синий', 0, 0, 1, '', ''),
	(35, 'Ноутбук HP Stream 11-d050nr', 13, 2343847, 305, 0, 0, 'Hewlett Packard', 'Экран 11.6” (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / eMMC 32 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 + MS Office 365 / 1.28 кг / синий', 1, 1, 1, '', ''),
	(36, 'Ноутбук Asus X200MA White ', 13, 2028027, 270, 0, 1, 'Asus', 'Экран 11.6" (1366x768) HD LED, глянцевый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Bluetooth 4.0 / Wi-Fi / LAN / веб-камера / без ОС / 1.24 кг / белый', 0, 1, 1, '', ''),
	(37, 'Ноутбук Acer Aspire E3-112-C65X', 13, 2019487, 325, 0, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth / веб-камера / Linpus / 1.29 кг / серебристый', 0, 1, 1, '', ''),
	(38, 'Ноутбук Acer TravelMate TMB115', 13, 1953212, 275, 0, 1, 'Acer', 'Экран 11.6\'\' (1366x768) HD LED, матовый / Intel Celeron N2840 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / Linpus / 1.32 кг / черный', 0, 0, 1, '', ''),
	(39, 'Ноутбук Lenovo Flex 10', 13, 1602042, 370, 0, 0, 'Lenovo', 'Экран 10.1" (1366x768) HD LED, сенсорный, глянцевый / Intel Celeron N2830 (2.16 ГГц) / RAM 2 ГБ / HDD 500 ГБ / Intel HD Graphics / без ОД / Wi-Fi / Bluetooth / веб-камера / Windows 8.1 / 1.2 кг / черный', 0, 0, 1, '', ''),
	(40, 'Ноутбук Asus X751MA', 13, 2028367, 430, 0, 1, 'Asus', 'Экран 17.3" (1600х900) HD+ LED, глянцевый / Intel Pentium N3540 (2.16 - 2.66 ГГц) / RAM 4 ГБ / HDD 1 ТБ / Intel HD Graphics / DVD Super Multi / LAN / Wi-Fi / Bluetooth 4.0 / веб-камера / DOS / 2.6 кг / белый', 0, 1, 1, '', ''),
	(41, 'Samsung Galaxy Tab S 10.5 16GB', 14, 1129365, 780, 0, 1, 'Samsung', 'Samsung Galaxy Tab S создан для того, чтобы сделать вашу жизнь лучше. Наслаждайтесь своим контентом с покрытием 94% цветов Adobe RGB и 100000:1 уровнем контрастности, который обеспечивается sAmoled экраном с функцией оптимизации под отображаемое изображение и окружение. Яркий 10.5” экран в ультратонком корпусе весом 467 г порадует вас высоким уровнем портативности. Работа станет проще вместе с Hancom Office и удаленным доступом к вашему ПК. E-Meeting и WebEx – отличные помощники для проведения встреч, когда вы находитесь вне офиса. Надежно храните ваши данные благодаря сканеру отпечатка пальцев.', 1, 1, 1, '', ''),
	(42, 'Samsung Galaxy Tab S 8.4 16GB', 14, 1128670, 640, 0, 1, 'Samsung', 'Экран 8.4" Super AMOLED (2560x1600) емкостный Multi-Touch / Samsung Exynos 5420 (1.9 ГГц + 1.3 ГГц) / RAM 3 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Bluetooth 4.0 / Wi-Fi 802.11 a/b/g/n/ac / основная камера 8 Мп, фронтальная 2.1 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / 294 г / белый', 0, 0, 1, '', ''),
	(43, 'Gazer Tegra Note 7', 14, 683364, 210, 0, 1, 'Gazer', 'Экран 7" IPS (1280x800) емкостный Multi-Touch / NVIDIA Tegra 4 (1.8 ГГц) / RAM 1 ГБ / 16 ГБ встроенной памяти + поддержка карт памяти microSD / Wi-Fi / Bluetooth 4.0 / основная камера 5 Мп, фронтальная - 0.3 Мп / GPS / ГЛОНАСС / Android 4.4.2 (KitKat) / вес 320 г', 0, 0, 1, '', ''),
	(44, 'Монитор 23" Dell E2314H Black', 15, 355025, 175, 0, 1, 'Dell', 'С расширением Full HD Вы сможете рассмотреть мельчайшие детали. Dell E2314H предоставит Вам резкое и четкое изображение, с которым любая работа будет в удовольствие. Full HD 1920 x 1080 при 60 Гц разрешение (макс.)', 0, 0, 1, '', ''),
	(45, 'Компьютер Everest Game ', 16, 1563832, 1320, 0, 1, 'Everest', 'Everest Game 9085 — это компьютеры премимум класса, собранные на базе эксклюзивных компонентов, тщательно подобранных и протестированных лучшими специалистами нашей компании. Это топовый сегмент систем, который отвечает наилучшим характеристикам показателей качества и производительности.', 0, 0, 1, '', '');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Дамп структуры для таблица catalog.product_order
CREATE TABLE IF NOT EXISTS `product_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_phone` varchar(255) NOT NULL,
  `user_comment` text NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `products` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы catalog.product_order: 2 rows
DELETE FROM `product_order`;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
INSERT INTO `product_order` (`id`, `user_name`, `user_phone`, `user_comment`, `user_id`, `date`, `products`, `status`) VALUES
	(45, 'fsdfsd', '1', '123123123', 4, '2015-05-14 12:54:45', '{"1":1,"2":1,"3":2}', 3),
	(46, 'САША1', 'g3424242342', '', 4, '2015-05-18 18:34:42', '{"44":3,"43":3}', 1);
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;

-- Дамп структуры для таблица catalog.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы catalog.user: ~3 rows (приблизительно)
DELETE FROM `user`;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `name`, `email`, `password`, `role`) VALUES
	(3, 'Александр', 'alex@mail.com', '111111', ''),
	(4, 'Тестовый', 'test@test.com', '222222', 'admin'),
	(5, 'Сергей', 'serg@mail.com', '111111', 'admin');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
