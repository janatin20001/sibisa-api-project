-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2023 at 06:48 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sibisa_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_06_15_130936_create_news_updates_table', 2),
(6, '2023_06_16_055640_create_signs_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news_updates`
--

CREATE TABLE `news_updates` (
  `id` bigint UNSIGNED NOT NULL,
  `news_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_excerpt` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_updates`
--

INSERT INTO `news_updates` (`id`, `news_title`, `news_excerpt`, `news_description`, `created_at`, `updated_at`) VALUES
(1, 'Perilisan Aplikasi SiBisa', 'Pada hari ini adalah hari perilisan pertama aplikasi penerjemah bahasa isyarat...', 'Pada hari ini adalah hari perilisan pertama aplikasi penerjemah bahasa isyarat interaktif yang bernama SiBisa (Sistem Interaktif Bahasa Isyarat.', NULL, NULL),
(2, 'Update Fitur SiBisa', 'Perilisan update fitur pembelajaran pada aplikasi SiBisa...', 'Perilisan update fitur pembelajaran pada aplikasi SiBisa. Fitur yang baru ditambahkan adalah fitur menu belajar. Jadi pengguna dapat memilih untuk mempelajari bahasa isyarat sesuai dengan menu yang sudah tersedia.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 1, 'accessToken', 'c41fd6e379f366ae61c0d40abefbbd86f812aabcd502e20544fd001ce67bb821', '[\"*\"]', '2023-06-15 09:55:02', NULL, '2023-06-15 09:54:50', '2023-06-15 09:55:02'),
(5, 'App\\Models\\User', 1, 'accessToken', '9edc848afdef9d25e91a780f4064c66c06d2dc49f4cd418c3266f108db2f0dc2', '[\"*\"]', NULL, NULL, '2023-06-15 21:06:18', '2023-06-15 21:06:18'),
(7, 'App\\Models\\User', 2, 'accessToken', '81ecb138a660cb35e53973407c0e127960d743390ae9d2fe9947c1ce2bba6d2d', '[\"*\"]', '2023-06-15 23:45:33', NULL, '2023-06-15 23:44:21', '2023-06-15 23:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `signs`
--

CREATE TABLE `signs` (
  `id` bigint UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signs`
--

INSERT INTO `signs` (`id`, `category`, `sign`, `created_at`, `updated_at`) VALUES
(1, 'letters', 'A', NULL, NULL),
(2, 'letters', 'B', NULL, NULL),
(3, 'letters', 'C', NULL, NULL),
(4, 'letters', 'D', NULL, NULL),
(5, 'letters', 'E', NULL, NULL),
(6, 'letters', 'F', NULL, NULL),
(7, 'letters', 'G', NULL, NULL),
(8, 'letters', 'H', NULL, NULL),
(9, 'letters', 'I', NULL, NULL),
(10, 'letters', 'J', NULL, NULL),
(11, 'letters', 'K', NULL, NULL),
(12, 'letters', 'L', NULL, NULL),
(13, 'letters', 'M', NULL, NULL),
(14, 'letters', 'N', NULL, NULL),
(15, 'letters', 'O', NULL, NULL),
(16, 'letters', 'P', NULL, NULL),
(17, 'letters', 'Q', NULL, NULL),
(18, 'letters', 'R', NULL, NULL),
(19, 'letters', 'S', NULL, NULL),
(20, 'letters', 'T', NULL, NULL),
(21, 'letters', 'U', NULL, NULL),
(22, 'letters', 'V', NULL, NULL),
(23, 'letters', 'W', NULL, NULL),
(24, 'letters', 'X', NULL, NULL),
(25, 'letters', 'Y', NULL, NULL),
(26, 'letters', 'Z', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhamad Ramdani H_', 'ramdani@gmail.com', '$2y$10$P91rWT87yzoO4/yMF6j04uRCMB6sq3oJ8Zc7dOU5.vDw/7R66DgAu', NULL, '2023-06-15 00:01:54', '2023-06-15 21:05:57'),
(2, 'Ramdani', 'dani@gmail.com', '$2y$10$IhsRwDkrifTvm2SOJK6hgOeLvzEew1.iAppmE.NQQfDDxYLELIsAu', NULL, '2023-06-15 22:46:21', '2023-06-15 22:46:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_updates`
--
ALTER TABLE `news_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `signs`
--
ALTER TABLE `signs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `news_updates`
--
ALTER TABLE `news_updates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `signs`
--
ALTER TABLE `signs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
