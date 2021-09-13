-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 26 2017 г., 22:11
-- Версия сервера: 5.6.31
-- Версия PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `tlaravel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(133) NOT NULL,
  `text` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `cadd` varchar(255) NOT NULL DEFAULT 'def',
  `user_id` int(10) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `articles`
--

INSERT INTO `articles` (`id`, `text`, `img`, `cadd`, `user_id`) VALUES
(1, '{"key":"HELLO WORLD"}', 'image.jpg', 'def', 1),
(2, 'hello World', 'image.jpg', 'def', 1),
(4, 'Hekki caddy', 'imgcaddy.jpg', 'CaddyUser', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `countrys`
--

CREATE TABLE IF NOT EXISTS `countrys` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `countrys`
--

INSERT INTO `countrys` (`id`, `name`, `user_id`, `created_at`, `updated_at`) VALUES
(1, ' | MALIB | ', 1, NULL, '2017-02-26 07:56:34'),
(3, 'Amerika', 1, NULL, '2017-02-25 12:38:27'),
(4, 'Mexico', 1, NULL, '2017-02-25 12:38:27');

-- --------------------------------------------------------

--
-- Структура таблицы `cources`
--

CREATE TABLE IF NOT EXISTS `cources` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_from` timestamp NULL DEFAULT NULL,
  `updated_from` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `cources`
--

INSERT INTO `cources` (`id`, `name`, `created_from`, `updated_from`) VALUES
(1, 'Web-master', NULL, '2017-02-24 16:31:35'),
(2, 'Back-end', NULL, NULL),
(5, 'Full-stack', NULL, NULL),
(6, 'Web-design', NULL, NULL),
(7, 'DESIGNER', '2017-02-24 15:39:05', '2017-02-24 15:39:05');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `deleted_at`) VALUES
(30, '2014_10_12_000000_create_users_table', 1, NULL),
(31, '2014_10_12_100000_create_password_resets_table', 1, NULL),
(32, '2017_02_15_203102_create_articles_table1', 1, NULL),
(46, '2017_02_22_103922_change_migrations_table_soft', 4, NULL),
(47, 'asfasfasfa', 12, NULL),
(48, 'asfasfasfa', 12, NULL),
(52, '2017_02_22_142631_create_countries_table', 13, NULL),
(62, '2017_02_23_181456_create_roles_table', 14, NULL),
(63, '2017_02_23_181630_create_role_user_table', 14, NULL),
(64, '2017_02_23_204107_create_peoples_table', 14, NULL),
(67, '2017_02_23_204526_create_positions_table', 15, NULL),
(76, '2017_02_23_220153_create_cources_table', 16, NULL),
(77, '2017_02_23_220213_create_students_table', 16, NULL),
(78, '2017_02_23_220357_create_students_cources_table', 16, NULL),
(79, 'Kolyan', 0, NULL),
(83, 'Kolya', 2, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `peoples`
--

CREATE TABLE IF NOT EXISTS `peoples` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `peoples`
--

INSERT INTO `peoples` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andrew', NULL, NULL),
(2, 'Kolya', NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id` int(10) unsigned NOT NULL,
  `peoples_id` int(10) unsigned NOT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `positions`
--

INSERT INTO `positions` (`id`, `peoples_id`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 'Full-stack', NULL, NULL),
(2, 2, 'Frond-end', NULL, NULL),
(4, 1, 'Photographer', NULL, NULL),
(5, 1, 'Manager', '2017-02-24 15:14:20', '2017-02-24 15:14:20'),
(6, 2, 'Manager', '2017-02-24 15:15:07', '2017-02-24 15:15:07'),
(7, 1, 'BasketBaller', '2017-02-24 15:23:07', '2017-02-24 15:23:07'),
(8, 1, 'Footballer', '2017-02-24 15:28:22', '2017-02-24 15:28:22'),
(9, 1, 'Uploader', '2017-02-24 15:28:22', '2017-02-24 15:28:22'),
(10, 1, 'Footballer', '2017-02-24 15:28:33', '2017-02-24 15:28:33'),
(11, 1, 'Uploader', '2017-02-24 15:28:33', '2017-02-24 15:28:33');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL DEFAULT '1',
  `role_id` int(10) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Andrew', NULL, NULL),
(2, 'Nikolas', NULL, '2017-02-20 21:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `students_cources`
--

CREATE TABLE IF NOT EXISTS `students_cources` (
  `id` int(10) unsigned NOT NULL,
  `students_id` int(10) unsigned NOT NULL,
  `cources_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `students_cources`
--

INSERT INTO `students_cources` (`id`, `students_id`, `cources_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 5, NULL, NULL),
(5, 2, 5, NULL, NULL),
(6, 1, 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Golum', 'Viktor@mail.ru', 'admin', NULL, NULL, '2017-02-26 07:56:34'),
(4, 'Коля ', 'Kolyan@gmail.com', 'koklya', 'safsafas', NULL, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `countrys`
--
ALTER TABLE `countrys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countrys_user_id_foreign` (`user_id`);

--
-- Индексы таблицы `cources`
--
ALTER TABLE `cources`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Индексы таблицы `peoples`
--
ALTER TABLE `peoples`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `positions_peoples_id_foreign` (`peoples_id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_user_user_id_foreign` (`user_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students_cources`
--
ALTER TABLE `students_cources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_cources_students_id_foreign` (`students_id`),
  ADD KEY `students_cources_cources_id_foreign` (`cources_id`);

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
-- AUTO_INCREMENT для таблицы `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(133) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `countrys`
--
ALTER TABLE `countrys`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT для таблицы `cources`
--
ALTER TABLE `cources`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT для таблицы `peoples`
--
ALTER TABLE `peoples`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `students_cources`
--
ALTER TABLE `students_cources`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `countrys`
--
ALTER TABLE `countrys`
  ADD CONSTRAINT `countrys_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `positions`
--
ALTER TABLE `positions`
  ADD CONSTRAINT `positions_peoples_id_foreign` FOREIGN KEY (`peoples_id`) REFERENCES `peoples` (`id`);

--
-- Ограничения внешнего ключа таблицы `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ограничения внешнего ключа таблицы `students_cources`
--
ALTER TABLE `students_cources`
  ADD CONSTRAINT `students_cources_cources_id_foreign` FOREIGN KEY (`cources_id`) REFERENCES `cources` (`id`),
  ADD CONSTRAINT `students_cources_students_id_foreign` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
