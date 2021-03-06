-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Окт 04 2018 г., 17:51
-- Версия сервера: 5.7.21-20-beget-5.7.21-20-1-log
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `n91351wu_ish`
--

-- --------------------------------------------------------

--
-- Структура таблицы `abouts`
--
-- Создание: Май 29 2018 г., 11:09
--

DROP TABLE IF EXISTS `abouts`;
CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `abouts`
--

INSERT INTO `abouts` (`id`, `body`, `address`, `map`, `created_at`, `updated_at`) VALUES
(2, '<p>В <a href=\"http://univers.su/about/docs/public_summary_reports/\" target=\"_blank\">этом разделе</a> вы можете ознакомиться с Отчетами о самообследовании и Публичными отчетными докладами гимназии. Отчеты о самообследовании и публичные отчетные доклады готовятся на основе мониторингов результатов и условий образовательного процесса.</p>\r\n\r\n<p>Ежегодно отчетные материалы готовят <a href=\"http://univers.su/about/docs/regulations/\" target=\"_blank\">руководители служб, подразделений, предметных объединений, члены дирекции гимназии</a>. Отчеты утверждаются на заседании Управляющего Совета гимназии и на ежегодной Конференции субъектов образовательного процесса, проходящей в первой четверти учебного года</p>', '<ul>\r\n	<li>Адрес: ул. Новосибирская, 37, Красноярск</li>\r\n	<li>Тел: +7(391) 223-55-90</li>\r\n	<li>Время работы: 7.00-19.00</li>\r\n</ul>', '<iframe src=\"https://yandex.ru/map-widget/v1/?um=constructor%3Ab463c8f4e447099ffa1dfb9191b472307d84df85b013425c5dbef6d0e5b6b8e6&amp;source=constructor\" width=\"100%\" height=\"400\" frameborder=\"0\"></iframe>', '2018-04-07 17:00:00', '2018-04-08 12:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
--
-- Создание: Май 29 2018 г., 11:00
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `photo`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Артышко Андрей', 'artyshko.andrey@gmail.com', '$2y$10$8KV5zjW2x1hPKXjStQw6YOqAYCqTQ8hGiI7IYm6PmpAvRaWpbQ6Y.', '6CsnKuRZLqJBU939XZP4.jpg', '89233441934', 1, '2018-03-03 17:00:00', '2018-04-30 11:20:04'),
(4, 'Грачёв Алексей Сергеевич', 'gr9@inbox.ru', '$2y$10$L7kBRhTqGa8ndf5U0QKRBOXPAEiRZs9u/YROu0Q6qEC1Y60NTdW/G', 'IMggK4WfCAlbzAIypzMr.jpg', '89135165345', 1, '2018-04-19 03:34:17', '2018-04-19 03:34:17'),
(5, 'Анна Пархоменко', 'parkhomenko247@mail.ru', '$2y$10$WlZ3F2JbALs5I0G6Qd3HQ..eYDMMu3mB.Yh8whfdK1Z9dO1saHhVy', 'avatar.png', '+79059769791', 1, '2018-04-30 04:14:30', '2018-04-30 04:14:30'),
(6, 'Lev', 'kami-lev@yandex.ru', '$2y$10$xGaFflkQqIFrZhDo2nnyzexsyL8s7AgPzcRd5PS.eVMEFDK4g7WGW', 'avatar.png', '89504374774', 1, '2018-05-31 02:57:58', '2018-05-31 02:57:58');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_role`
--
-- Создание: Май 29 2018 г., 19:02
--

DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `admin_role`
--

INSERT INTO `admin_role` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 3, 4, NULL, NULL),
(6, 3, 3, NULL, NULL),
(7, 1, 1, NULL, NULL),
(11, 3, 1, NULL, NULL),
(12, 4, 1, NULL, NULL),
(13, 4, 3, NULL, NULL),
(14, 4, 4, NULL, NULL),
(15, 8, 1, NULL, NULL),
(16, 12, 3, NULL, NULL),
(17, 12, 4, NULL, NULL),
(18, 5, 1, NULL, NULL),
(19, 5, 3, NULL, NULL),
(20, 5, 4, NULL, NULL),
(21, 2, 1, NULL, NULL),
(22, 2, 3, NULL, NULL),
(23, 2, 4, NULL, NULL),
(24, 6, 1, NULL, NULL),
(25, 6, 3, NULL, NULL),
(26, 6, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--
-- Создание: Май 29 2018 г., 12:54
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `category_posts`
--
-- Создание: Май 29 2018 г., 18:03
--

DROP TABLE IF EXISTS `category_posts`;
CREATE TABLE `category_posts` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `categoryable_type` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--
-- Создание: Май 29 2018 г., 19:47
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id`, `name`, `icon`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Электроника', 'icon-energy', 'Познакомимся с электроникой поближе', '2018-04-09 05:27:35', '2018-04-19 12:24:13'),
(2, 'ПОЛИМАТЕМАТИКА', 'icon-notebook', 'Единство математики и физики', '2018-04-09 05:28:00', '2018-04-19 12:25:36'),
(3, 'РОБОТОТЕХНИКА', 'icon-paper-plane', 'Легоконструирование, программирование и многое другое', '2018-04-09 05:28:14', '2018-04-19 12:28:05'),
(4, 'ОЛИМПИАДНАЯ ПОДГОТОВКА', 'icon-note', 'Подготовим вашего ребёнка по всем нужным направлениям', '2018-04-09 05:28:37', '2018-04-19 12:34:13');

-- --------------------------------------------------------

--
-- Структура таблицы `galleries`
--
-- Создание: Май 29 2018 г., 11:43
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `galleries`
--

INSERT INTO `galleries` (`id`, `title`, `photo`, `posted_by`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Углублённое изучение предметов', 'XcIadgBRAtkOCX8hV0PH.JPG', 'Артышко Андрей', 1, '2018-04-09 05:30:45', '2018-04-09 05:30:45'),
(2, 'Углублённое изучение предметов', 'RV0rJ8aodzuRdGeCD37c.JPG', 'Артышко Андрей', 1, '2018-04-09 05:31:01', '2018-04-09 05:31:01'),
(3, 'Углублённое изучение предметов', 'pM0dB67xTfoqXWiRdtHY.JPG', 'Артышко Андрей', 1, '2018-04-09 05:31:13', '2018-04-09 05:31:13'),
(4, 'Углублённое изучение предметов', 'DHKK8DgV6FkVdd6arX9J.JPG', 'Артышко Андрей', 1, '2018-04-09 05:31:26', '2018-04-09 05:31:26'),
(5, 'Углублённое изучение предметов', 'S526usFOneAFM2H7BDkW.JPG', 'Артышко Андрей', 1, '2018-04-09 05:31:37', '2018-04-09 05:31:37'),
(6, 'Углублённое изучение предметов', '42SrRKYPvtVNACsCwmmb.JPG', 'Артышко Андрей', 1, '2018-04-09 05:31:52', '2018-04-09 05:31:52'),
(7, 'Углублённое изучение предметов', 'xjqjIMwSK9FQazrcg1Qf.JPG', 'Артышко Андрей', 1, '2018-04-09 05:32:09', '2018-04-09 05:32:09');

-- --------------------------------------------------------

--
-- Структура таблицы `headers`
--
-- Создание: Апр 19 2018 г., 07:38
--

DROP TABLE IF EXISTS `headers`;
CREATE TABLE `headers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text COLLATE utf8mb4_unicode_ci,
  `background_img` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `headers`
--

INSERT INTO `headers` (`id`, `name`, `title`, `subtitle`, `logo`, `background_img`, `created_at`, `updated_at`) VALUES
(1, '#ИнженернаяШкола', 'Инженерная школа МАОУ \"КУГ № 1 - Универс\"', 'Инженерное образование - приоритет - качество - перспектива.', 'logo.png', 'background_img.jpg', '2018-03-31 17:00:00', '2018-04-11 04:02:31');

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--
-- Создание: Май 29 2018 г., 13:06
--

DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(10) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `icon`, `link`, `created_at`, `updated_at`) VALUES
(2, 'fa-vk', 'https://vk.com/univers_starshaya', '2018-04-09 05:25:47', '2018-04-09 05:25:47'),
(3, 'fa-globe', 'http://univers.su/', '2018-04-09 05:33:03', '2018-04-09 05:33:03'),
(4, 'fa-facebook', 'https://www.facebook.com/Univers1', '2018-04-15 12:06:31', '2018-04-15 12:06:31');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--
-- Создание: Май 29 2018 г., 15:03
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(31, '2014_10_12_000000_create_users_table', 1),
(32, '2014_10_12_100000_create_password_resets_table', 1),
(33, '2017_06_19_070344_create_posts_table', 1),
(34, '2017_06_19_070731_create_tags_table', 1),
(35, '2017_06_19_070801_create_categories_table', 1),
(36, '2017_06_19_070824_create_category_posts_table', 1),
(37, '2017_06_19_070923_create_post_tags_table', 1),
(38, '2017_06_19_071000_create_admins_table', 1),
(39, '2017_06_19_071103_create_roles_table', 1),
(40, '2017_06_19_071125_create_admin_roles_table', 1),
(41, '2017_07_22_070234_create_permissions_table', 2),
(42, '2017_08_04_055752_likes', 3),
(43, '2018_03_07_120715_header', 4),
(44, '2018_03_23_163232_create_courses_table', 5),
(45, '2018_03_27_191928_create_plan', 6),
(46, '2018_03_28_085206_create_teachers_table', 7),
(47, '2018_03_29_064742_create_galleries_table', 8),
(48, '2018_04_08_184523_create_abouts_table', 9),
(49, '2018_04_09_062618_create_links_table', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--
-- Создание: Май 29 2018 г., 12:58
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--
-- Создание: Май 29 2018 г., 13:42
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(4, 'Post-Create', 'post', '2017-07-22 01:21:37', '2017-07-22 01:21:37'),
(5, 'Post-update', 'post', '2017-07-22 01:22:27', '2017-07-22 01:22:27'),
(6, 'Post-Delete', 'post', '2017-07-22 01:22:40', '2017-07-22 01:22:40'),
(7, 'User-Create', 'user', '2017-07-22 01:23:05', '2017-07-22 01:23:05'),
(8, 'User-Update', 'user', '2017-07-22 01:23:24', '2017-07-22 01:23:24'),
(9, 'User-Delete', 'user', '2017-07-22 01:23:35', '2017-07-22 01:23:35'),
(10, 'Post-Publish', 'post', '2017-07-22 01:23:51', '2017-07-22 01:23:51'),
(11, 'Tag-CRUD', 'other', '2017-07-22 01:24:12', '2017-07-22 01:24:12'),
(12, 'Category-CRUD', 'other', '2017-07-22 01:24:20', '2017-07-22 01:24:20'),
(13, 'Course-Update', 'course', '2018-03-27 11:00:56', '2018-03-27 11:00:56');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--
-- Создание: Апр 19 2018 г., 07:38
--

DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(3, 6),
(3, 10),
(4, 4),
(4, 5),
(4, 11),
(4, 12),
(5, 4),
(5, 9),
(5, 12),
(1, 6),
(1, 4),
(1, 12),
(1, 5),
(1, 10),
(1, 7),
(1, 8),
(1, 9),
(1, 11),
(1, 13),
(3, 6),
(3, 10),
(4, 4),
(4, 5),
(4, 11),
(4, 12),
(5, 4),
(5, 9),
(5, 12),
(1, 6),
(1, 4),
(1, 12),
(1, 5),
(1, 10),
(1, 7),
(1, 8),
(1, 9),
(1, 11),
(1, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--
-- Создание: Май 29 2018 г., 18:41
--

DROP TABLE IF EXISTS `plans`;
CREATE TABLE `plans` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `plans`
--

INSERT INTO `plans` (`id`, `title`, `content`, `class`, `created_at`, `updated_at`) VALUES
(1, 'Углублённое изучение предметов', 'Ученик обучается по углублённой системе обучения; охватим все темы и подготовим к поступлению в старшую школу', 8, '2018-03-07 17:00:00', '2018-04-30 11:42:56'),
(2, 'Моделирование и графика', 'Lorem ipsum dolor sit amet.', 8, '2018-03-27 12:55:46', '2018-03-27 12:55:46'),
(3, 'Полипредметные интенсивы', 'Lorem ipsum dolor sit amet.', 8, '2018-03-27 12:56:51', '2018-03-27 12:56:51'),
(4, 'Специализированные курсы', 'Lorem ipsum dolor sit amet.', 8, '2018-03-27 12:57:01', '2018-03-27 12:57:01'),
(5, 'Лабораторные работы', 'Закрепим все знания на практике', 8, '2018-03-27 12:57:12', '2018-04-30 11:22:44'),
(6, 'Экскурсии, конференции, олимпиады', 'Расширим кругозор вашего ребёнка, подготовим к конференциям и олимпиадам', 8, '2018-03-27 12:57:24', '2018-04-30 11:44:50'),
(7, 'Бесплатное обучение', 'Обучение за счёт государства. Идеально подходит для перспективных школьников', 8, '2018-03-27 12:57:33', '2018-04-19 12:36:26'),
(8, 'Углублённое изучение предметов', 'Ученик обучается по углублённой системе обучения; охватим все темы и подготовим к поступлению в университет', 10, '2018-03-27 12:57:49', '2018-04-30 11:42:44'),
(9, 'Aнглийский', 'Английский язык является неотъемлемой частью обучения; подготовим к ЕГЭ по английскому языку', 10, '2018-03-27 12:57:59', '2018-04-30 11:24:44'),
(10, 'Моделирование и графика', 'Lorem ipsum dolor sit amet.', 10, '2018-03-27 12:58:11', '2018-03-27 12:58:11'),
(11, 'Полипредметные интенсивы', 'Lorem ipsum dolor sit amet.', 10, '2018-03-27 12:58:31', '2018-03-27 12:58:31'),
(12, 'Специализированные курсы', 'Lorem ipsum dolor sit amet.', 10, '2018-03-27 12:58:47', '2018-03-27 12:58:47'),
(13, 'Лабораторные работы', 'Закрепим все знании на практике', 10, '2018-03-27 12:58:57', '2018-04-19 12:42:49'),
(14, 'Экскурсии, конференции, олимпиады', 'Профессионально подготовим к конференция и высшим олимпиадам', 10, '2018-03-27 12:59:08', '2018-04-19 12:39:26');

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--
-- Создание: Май 29 2018 г., 16:43
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `top` tinyint(1) DEFAULT NULL,
  `posted_by` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `viewed` int(255) DEFAULT '0',
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `top`, `posted_by`, `image`, `viewed`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Инженерная школа открывает двери', '11.09.2015 прошел запуск Инженерной школы для учащихся 8 классов. Это направление позволит ребятам глубже изучать предметы инженерного направления: математику, физику и информатику. Всего 27 учеников с параллели 8 классов приняли участие в необычном квесте, который...', 'inzhenernaya-shkola-otkryvaet-dveri-0904181242', '<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p>11.09.2015 прошел запуск Инженерной школы для учащихся 8 классов. Это направление позволит ребятам глубже изучать предметы инженерного направления: математику, физику и информатику. Всего&nbsp;27 учеников с параллели 8 классов приняли участие&nbsp;в необычном квесте, который состоял из 5 площадок: физика, математика, информатика, механика, а на последней станции проверялось нетривиальная способность - умение думать.</p>\r\n\r\n<p><br />\r\nПо результатам квеста 25 человек прошли испытания и будут учиться в потоке инженерной школы. А это значит, что у них будет отдельное расписание и режим жизни, в котором их ждут творческие работы, увлекательные эксперименты и опыты, собственное исследование и многое другое!</p>\r\n\r\n<div class=\"slider\"><img alt=\"\" src=\"http://ishunivers.su/upload/post/Q81biXosEKNOoEoehmxz.jpg\" style=\"height:500px; width:750px\" /><img alt=\"\" src=\"http://ishunivers.su/upload/post/jIXgqWtno5sCdwm1zQyR.jpg\" style=\"height:500px; width:750px\" /><img alt=\"\" src=\"http://ishunivers.su/upload/post/DUBQF8UHwhuEJMKV6u8X.jpg\" style=\"height:500px; width:750px\" /><img alt=\"\" src=\"http://ishunivers.su/upload/post/YaYpkQJ8TuGtuf6herk1.jpg\" style=\"height:500px; width:750px\" /></div>', 1, NULL, '2', 'VKpKqu4wIznjj5cp0PHF.jpg', 86, 'Под', '11', '2018-04-09 05:42:41', '2018-04-09 05:42:41'),
(2, 'Взгляд в будущее', 'С 19 по 21 апреля в гимназии № 4 прошла 11я научно-практическая конференция школьников \"Взгляд в будущее\". За три дня на конференции выступили более 200 учеников от 1 до 11 классов', 'vzglyad-v-budushchee-0904181246', '<p>С 19 по 21 апреля в гимназии № 4 прошла 11я научно-практическая конференция школьников &quot;Взгляд в будущее&quot;. За три дня на конференции выступили более 200 учеников от 1 до 11 классов.<br />\r\n&nbsp;</p>\r\n\r\n<p>7 учеников нашей гимназии из 7-11 классов приняли участие в конференции. Большинство из них блестяще выступили со своими интересными проектами и завоевали призовые места в секциях.<br />\r\n&nbsp;</p>\r\n\r\n<p>Савенкова Ксения 8г, Скоробогатько Анастасия 8г заняли 3 место в секции ИКТ с проектом сайта &quot;Историчя Николаевской слободы города Красноярска&quot; (руководители работы Иовщик Татьяна Анатольевна и Кочерова Мария Викторовна).<br />\r\n&nbsp;</p>\r\n\r\n<p>На секции инженеринг все призовые места были наши:+</p>\r\n\r\n<p>3 место - Горлов Сергей 9б, инженерная школа проект &quot;Умный дом&quot; (руководители Баянов Станислав Сергеевич)</p>\r\n\r\n<p>2 место - Шитиков Кирилл, 11 МИФ проект &quot;Многоступенчатая пушка Гаусса&quot; (руководители Грачев Алексей Сергеевич, Михалев Денис Николаевич)</p>\r\n\r\n<p>1 место - Соболь Дарья, 11 ЛИС проект &quot;Молниевая электростанция&quot; (руководители Беспалов Виталий Владимирович, &nbsp;Соболь Александр Александрович)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Поздравляем победителей &nbsp;- &nbsp;учеников и их Учителей!</p>', 1, NULL, '4', 'P2DmaDGLmbGNTvH3u8nc.jpg', 76, '123', '11', '2018-04-09 05:46:27', '2018-04-09 05:46:27'),
(3, 'Физический фейерверк', 'В субботу, 28 января, в актовом зале, на пятом и шестом уроке инженерная школа провела \"Физический фейерверк\"', 'fizicheskiy-feyerverk-0904181248', '<p>В субботу, 28 января, в актовом зале, на пятом и шестом уроке инженерная школа провела &quot;Физический фейерверк&quot;. На нем ученики инженерной школы продемонстрировали различные опыты, начиная от настоящей лазерной пушки и заканчивая световыми миражами. Но мало того, что ученики сумели провести эти опыты, также они рассказали, как это сделали. Все выступления были уникальны, невероятно красивы, просто завораживали зрителей. Особенно выделились такие опыты как &quot;Лавовая лампа&quot; и &quot;Несмешиааемость жидкостей&quot;. Некоторые опыты удивили своей простотой и невероятно интересной и весёлой подачей, например, &quot;трюки с ковбойским лассо&quot;. А также были яркие и удивительные эксперименты, например, &quot;негорящие деньги&quot;. Все зрители получили бурю эмоций, а многие семиклассники заинтересовались инженерной школой и&nbsp;решили в следующем году туда поступить.</p>\r\n\r\n<div style=\"page-break-after:always\"><span style=\"display:none\">&nbsp;</span></div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"youtube-embed-wrapper\" style=\"height:0; overflow:hidden; padding-bottom:56.25%; padding-top:30px; position:relative\">\r\n<div class=\"youtube-embed-wrapper\" style=\"height:0; overflow:hidden; padding-bottom:56.25%; padding-top:30px; position:relative\"><iframe allowfullscreen=\"\" frameborder=\"0\" height=\"360\" src=\"https://www.youtube.com/embed/z5WSr6LTrQE\" style=\"position:absolute;top:0;left:0;width:100%;height:100%\" width=\"640\"></iframe></div>\r\n\r\n<div class=\"youtube-embed-wrapper\" style=\"height:0; overflow:hidden; padding-bottom:56.25%; padding-top:30px; position:relative\">&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>', 1, NULL, '4', 'Y09W0KzqUCO3FLXOYho3.jpg', 60, '123', '11', '2018-04-09 05:48:36', '2018-07-15 07:12:20'),
(4, 'Ученики инженерной школы победили в грантовом конкурсе Красноярск2020', '23-26 сентября проходила осенняя сессия грантового конкурса Красноярск2020', 'ucheniki-inzhenernoy-shkoly-pobedili-v-gran-0904181258', '<p>23-26 сентября проходила осенняя сессия грантового конкурса Красноярск2020, молодежь города разрабатывала и представляла проекты экспертам молодежной политики Красноярска.&nbsp;<br />\r\n<br />\r\nПоздравляем учеников 11 класса инженерной школы Туровца Никиту и Ведерникова Максима с победой.&nbsp;<br />\r\n<br />\r\nПроект Никиты &quot;Dance-pad&quot; по созданию городского клуба танцевальных ритм-игр был поддержан Молодежным центром &quot;Новые имена&quot; и получил финансовую поддержку. Проект &quot;Робоаптекарь&quot; Максима поддержал Центр технического проектирования.&nbsp;<br />\r\n<br />\r\nЖелаем ребятам успехов в реализации своих идей.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://ishunivers.su/upload/post/FaaoDMcL70h2Y6DEa0Pg.jpg\" style=\"width:100%\" /><br />\r\n&nbsp;</p>', 1, 1, '4', 'VJmG8cPoSylLXGcnUnc3.jpg', 522, '123', '11', '2018-04-09 05:58:56', '2018-04-09 05:58:56');

-- --------------------------------------------------------

--
-- Структура таблицы `post_tags`
--
-- Создание: Апр 19 2018 г., 07:38
--

DROP TABLE IF EXISTS `post_tags`;
CREATE TABLE `post_tags` (
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--
-- Создание: Май 29 2018 г., 17:51
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editors', '2017-07-21 01:17:13', '2017-07-21 01:27:48'),
(3, 'Publisher', '2017-07-21 01:28:33', '2017-07-21 01:28:33'),
(4, 'Writer', '2017-07-21 01:28:38', '2017-07-21 01:28:38');

-- --------------------------------------------------------

--
-- Структура таблицы `soons`
--
-- Создание: Сен 09 2018 г., 05:53
--

DROP TABLE IF EXISTS `soons`;
CREATE TABLE `soons` (
  `id` int(255) NOT NULL,
  `soon` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `soons`
--

INSERT INTO `soons` (`id`, `soon`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--
-- Создание: Май 29 2018 г., 19:17
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `teachers`
--
-- Создание: Май 29 2018 г., 14:42
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `profession`, `content`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Грачёв Алексей Сергеевич', 'Учитель информатики, физики и робототехники', '<p>2001-2005 &ndash; Красноярский государственный технический университет, Инженерно-физический факультет, Степень бакалавра техники и технологии по направлению &laquo;Техническая физика&raquo;. 2005-2007 &ndash; Сибирский федеральный университет, Инженерно-физический факультет, Степень магистра техники и технологии по направлению &laquo;Техническая физика&raquo;. 2007-2010 &ndash; Сибирский федеральный университет, Аспирантура по специальности оптика. 2013 защитил диссертацию на соискание ученой степени кандидата физико-математических наук по специальности оптика на тему: &quot;ОБРАЗОВАНИЕ ПЛАЗМОННО-РЕЗОНАНСНЫХ НАНОСТРУКТУР И ИХ МОДИФИКАЦИЯ В ДИСПЕРСНЫХ СИСТЕМАХ ПОД ДЕЙСТВИЕМ ОПТИЧЕСКОГО ИЗЛУЧЕНИЯ&quot;</p>', 'sB8F6ArF8M0DscckQgeu.jpg', '2018-04-09 05:29:36', '2018-04-09 05:29:36'),
(2, 'БАЯНОВА ОЛЕСЯ МИНСАГИТОВНА', 'Учитель информатики и робототехники', '<p>Красноярский государственный педагогический университет имени В. П. Астафьева по специальности Математика с дополнительной специальностью Информатика.</p>', 'EboyiIn9iB5ToESafxB9.jpg', '2018-04-09 05:29:54', '2018-04-09 05:29:54'),
(3, 'КОЧЕРОВА МАРИЯ ВИКТОРОВНА', 'Учитель информатики', '<p>Красноярский государственный педагогический университет им. В.П. Астафьева, бакалавр физико-математического образования.</p>\r\n\r\n<p>Красноярский государственный педагогический университет им. В.П. Астафьева, магистерская программа &quot;Информатика в образовании&quot;.</p>', 'Uo5Pzc20kLgfITJziYh3.jpg', '2018-04-09 05:30:10', '2018-04-09 05:30:10');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--
-- Создание: Май 29 2018 г., 16:59
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Sarthak Shrivastava', 'bitfumes@gmail.com', '$2y$10$5L.QBN0qXSZ8x9KuxSh65.E4aJtw5cAh901VXqHsfiHI72EfdH5dS', 'ZmfCotzspvRsk7tQVZamZpYyTHSM20SAPmLWjTg9DbWyNmA3Z7zEzTff9PSo', '2017-07-11 22:37:55', '2017-07-11 22:37:55'),
(3, 'Ankur Shrivastava', 'ankur@gmail.com', '$2y$10$l4ODE.jAzImO5cL7KJuK7Obok1VXHsDonQX9U/6aishfDfEyiyfaC', 'lMuCX5ZMe0yhEJPL7C2DcjgzKn5J1gY7UJYs35UL0iBmFoTvMdkysFBLTL4D', '2017-07-11 22:52:45', '2017-07-11 22:52:45'),
(4, 'Andrey', 'artyshko.andrey@gmail.com', '$2y$10$8KV5zjW2x1hPKXjStQw6YOqAYCqTQ8hGiI7IYm6PmpAvRaWpbQ6Y.', NULL, '2018-03-04 08:48:46', '2018-03-04 08:48:46');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Индексы таблицы `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `headers`
--
ALTER TABLE `headers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `soons`
--
ALTER TABLE `soons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `headers`
--
ALTER TABLE `headers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `soons`
--
ALTER TABLE `soons`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
