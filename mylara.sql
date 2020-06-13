-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 03:51 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mylara`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `commentable_id` int(11) NOT NULL,
  `commentable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `commentable_id`, `commentable_type`, `body`, `created_at`, `updated_at`) VALUES
(1, 2, 'App\\Order', 'rYkZphLCp5', '2020-06-13 00:56:52', '2020-06-13 00:56:52'),
(2, 1, 'App\\Order', 'bjYl6HtX0q', '2020-06-13 00:56:52', '2020-06-13 00:56:52'),
(3, 1, 'App\\Order', 'usgNxp9dUg', '2020-06-13 00:56:52', '2020-06-13 00:56:52'),
(4, 3, 'App\\Order', 'MB7oOaRc7b', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(5, 3, 'App\\Order', '4PrIr5GO2B', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(6, 2, 'App\\Order', 'BtODwWUaDv', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(7, 1, 'App\\Order', 'CuyL7n5byc', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(8, 1, 'App\\Order', 'auwVNESro8', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(9, 2, 'App\\Order', 'Wsl2X7YxH2', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(10, 2, 'App\\Order', 'sGQ3HdkcYU', '2020-06-13 00:56:53', '2020-06-13 00:56:53'),
(11, 4, 'App\\Video', '2IaP8mBkao', '2020-06-13 00:58:04', '2020-06-13 00:58:04'),
(12, 1, 'App\\Video', 'oDhzxPtXoj', '2020-06-13 00:58:04', '2020-06-13 00:58:04'),
(13, 3, 'App\\Video', '4FgxPBJjS7', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(14, 3, 'App\\Video', 'Lp50qcayjo', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(15, 2, 'App\\Video', 'XbzvQHTAZa', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(16, 6, 'App\\Video', 'NIE0twV5MJ', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(17, 7, 'App\\Video', 'hNoJ6B7LT6', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(18, 3, 'App\\Video', 'W1AcqdUimN', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(19, 4, 'App\\Video', 'zqcBblkn6p', '2020-06-13 00:58:05', '2020-06-13 00:58:05'),
(20, 1, 'App\\Video', 'gsk3gtE7da', '2020-06-13 00:58:05', '2020-06-13 00:58:05');

-- --------------------------------------------------------

--
-- Table structure for table `contries`
--

CREATE TABLE `contries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contries`
--

INSERT INTO `contries` (`id`, `code`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SK', 'Cyprus', '2020-06-12 07:50:54', '2020-06-12 07:50:54'),
(2, 'ID', 'Nepal', '2020-06-12 07:50:54', '2020-06-12 07:50:54'),
(3, 'SC', 'Seychelles', '2020-06-12 07:50:54', '2020-06-12 07:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `imageable_id`, `imageable_type`, `url`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Order', 'https://lorempixel.com/640/480/?47313', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(2, 2, 'App\\Order', 'https://lorempixel.com/640/480/?46799', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(3, 4, 'App\\Order', 'https://lorempixel.com/640/480/?99150', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(4, 3, 'App\\Order', 'https://lorempixel.com/640/480/?78799', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(5, 5, 'App\\Order', 'https://lorempixel.com/640/480/?38718', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(6, 6, 'App\\Order', 'https://lorempixel.com/640/480/?98345', '2020-06-12 23:41:25', '2020-06-12 23:41:25'),
(7, 7, 'App\\Order', 'https://lorempixel.com/640/480/?52716', '2020-06-12 23:41:26', '2020-06-12 23:41:26'),
(8, 1, 'App\\User', 'https://lorempixel.com/640/480/?57380', '2020-06-12 23:42:31', '2020-06-12 23:42:31'),
(9, 2, 'App\\User', 'https://lorempixel.com/640/480/?35618', '2020-06-12 23:42:32', '2020-06-12 23:42:32'),
(10, 3, 'App\\User', 'https://lorempixel.com/640/480/?13271', '2020-06-12 23:42:32', '2020-06-12 23:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_06_11_052707_create_orders_table', 1),
(2, '2014_10_11_000000_create_roles_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2020_06_10_101621_create_userprofile_table', 1),
(12, '2020_06_11_111858_add', 1),
(13, '2020_06_11_112243_add_colomn_deleted_at_in_orders_tabe', 1),
(14, '2020_06_12_043515_change_colomn_attr_of_profile_table', 1),
(15, '2020_06_12_074130_create_role_user_table', 1),
(16, '2020_06_12_130844_add_colomn_for_contry_id_in_user_profiles', 2),
(17, '2020_06_12_131053_create_contries_table', 2),
(19, '2020_06_13_044335_create_images_table', 3),
(20, '2020_06_13_060831_create_videos_table', 4),
(21, '2020_06_13_060908_create_comments_table', 4),
(22, '2020_06_13_075508_create_tags_table', 5),
(23, '2020_06_13_075649_create_taggables_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `dish_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` tinyint(3) UNSIGNED NOT NULL,
  `dish_basic_price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `dish_name`, `qty`, `dish_basic_price`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 3, 'Sage Leannon', 2, 200, '2020-06-12 02:15:16', '2020-06-12 02:15:16', NULL),
(2, 1, 'Cleo Barton', 2, 100, '2020-06-12 02:15:16', '2020-06-12 02:15:16', NULL),
(3, 3, 'Mya Mante III', 1, 300, '2020-06-12 02:15:16', '2020-06-12 02:15:16', NULL),
(4, 2, 'Adam Denesik', 2, 200, '2020-06-12 02:15:16', '2020-06-12 02:15:16', NULL),
(5, 2, 'Germaine Lindgren', 1, 200, '2020-06-12 02:15:16', '2020-06-12 02:15:16', NULL),
(6, 2, 'Lorenz Schumm', 3, 100, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(7, 3, 'Lupe Davis', 3, 100, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(8, 1, 'Mavis Abernathy', 1, 300, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(9, 1, 'Sanford Zemlak II', 1, 100, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(10, 1, 'Demond Marvin', 1, 100, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(11, 2, 'Johathan Thiel', 1, 200, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(12, 3, 'Kyla Schiller', 3, 300, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(13, 2, 'Mr. Talon Cummings Sr.', 2, 300, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(14, 3, 'Marie Jones', 3, 300, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL),
(15, 2, 'Garret Thompson', 3, 200, '2020-06-12 02:15:17', '2020-06-12 02:15:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, NULL),
(2, 'User', NULL, NULL),
(3, 'Subscriber', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-05-31 18:30:00', '2020-05-31 18:30:00'),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 3, 2, NULL, NULL),
(6, 3, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `taggable_id` int(11) NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 'App\\Order', '2020-06-13 02:38:07', '2020-06-13 02:38:07'),
(2, 1, 1, 'App\\Order', '2020-06-13 02:38:07', '2020-06-13 02:38:07'),
(3, 3, 5, 'App\\Order', '2020-06-13 02:38:07', '2020-06-13 02:38:07'),
(4, 5, 9, 'App\\Order', '2020-06-13 02:38:07', '2020-06-13 02:38:07'),
(5, 4, 4, 'App\\Order', '2020-06-13 02:38:07', '2020-06-13 02:38:07'),
(6, 5, 4, 'App\\Video', '2020-06-13 02:38:41', '2020-06-13 02:38:41'),
(7, 1, 6, 'App\\Video', '2020-06-13 02:38:41', '2020-06-13 02:38:41'),
(8, 1, 3, 'App\\Video', '2020-06-13 02:38:41', '2020-06-13 02:38:41'),
(9, 1, 7, 'App\\Video', '2020-06-13 02:38:42', '2020-06-13 02:38:42'),
(10, 1, 5, 'App\\Video', '2020-06-13 02:38:42', '2020-06-13 02:38:42'),
(11, 2, 1, 'App\\Order', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'bXnM', '2020-06-13 02:37:44', '2020-06-13 02:37:44'),
(2, 'h5JI', '2020-06-13 02:37:44', '2020-06-13 02:37:44'),
(3, 'Sjuc', '2020-06-13 02:37:44', '2020-06-13 02:37:44'),
(4, 'Uxlh', '2020-06-13 02:37:44', '2020-06-13 02:37:44'),
(5, 'pGxE', '2020-06-13 02:37:44', '2020-06-13 02:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contry_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `phone`, `city`, `created_at`, `updated_at`, `contry_id`) VALUES
(1, 1, '8435412432', 'sanawad', '2020-06-12 04:19:05', '2020-06-12 04:19:05', 1),
(2, 3, '8435412432', 'barwaha', '2020-06-12 04:19:05', '2020-06-12 04:19:05', 2),
(3, 2, '8435412431', 'indore', '2020-06-12 04:19:05', '2020-06-12 04:19:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` tinyint(3) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role_id`, `img`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Shanelle Weber', 'westley.sawayn@example.com', '2020-06-12 02:15:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, 'S68RM9NpNt', '2020-06-12 02:15:10', '2020-06-12 02:15:10'),
(2, 'Elza Towne', 'muller.bertha@example.org', '2020-06-12 02:15:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, 'dqTKtDn84RneNzDWdfgDdV7nciiJLqN30zbtnCi7I6y8I1XHbMNOv2tGxClD', '2020-06-12 02:15:11', '2020-06-12 02:15:11'),
(3, 'Mrs. Jaqueline Metz', 'aziemann@example.org', '2020-06-12 02:15:10', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 2, NULL, 'IP9FPivcOV', '2020-06-12 02:15:11', '2020-06-12 02:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `url`, `created_at`, `updated_at`) VALUES
(1, 'https://lorempixel.com/640/480/?88606', '2020-06-13 00:59:27', '2020-06-13 00:59:27'),
(2, 'https://lorempixel.com/640/480/?22482', '2020-06-13 00:59:27', '2020-06-13 00:59:27'),
(3, 'https://lorempixel.com/640/480/?90918', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(4, 'https://lorempixel.com/640/480/?69001', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(5, 'https://lorempixel.com/640/480/?81575', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(6, 'https://lorempixel.com/640/480/?15096', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(7, 'https://lorempixel.com/640/480/?83660', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(8, 'https://lorempixel.com/640/480/?23354', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(9, 'https://lorempixel.com/640/480/?79566', '2020-06-13 00:59:28', '2020-06-13 00:59:28'),
(10, 'https://lorempixel.com/640/480/?70348', '2020-06-13 00:59:28', '2020-06-13 00:59:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contries`
--
ALTER TABLE `contries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `contries`
--
ALTER TABLE `contries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
