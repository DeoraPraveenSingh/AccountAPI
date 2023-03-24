-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2023 at 07:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lara-sanctum`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\User', 4, 'tokens', '49ae2b57c3adb9fb25123b37622c054afa25b261635d053bf4e5c3e1f9088336', '[\"*\"]', NULL, '2023-03-23 23:44:35', '2023-03-23 23:44:35'),
(8, 'App\\Models\\User', 6, 'tokens', 'c1ce2b486e4eedee29218d6e391459dcc6d47cbe400a53eb4d663f717639dadf', '[\"*\"]', NULL, '2023-03-24 00:03:34', '2023-03-24 00:03:34'),
(9, 'App\\Models\\User', 8, 'tokens', '59dee32fd48b8d9a94c2c42bf0feba91b570cc03dcb793387c62711ba0422a4b', '[\"*\"]', NULL, '2023-03-24 00:03:57', '2023-03-24 00:03:57'),
(10, 'App\\Models\\User', 10, 'tokens', '17b80d0fd448b947bb7a40e3d478701fedf7dea9458f880ea7785a7b54bf8968', '[\"*\"]', NULL, '2023-03-24 00:14:07', '2023-03-24 00:14:07'),
(11, 'App\\Models\\User', 11, 'tokens', '5436a8478dff93bc27befa0943eec36801bf360174fddcb0598ccbb101c2e0b8', '[\"*\"]', NULL, '2023-03-24 00:14:27', '2023-03-24 00:14:27'),
(17, 'App\\Models\\User', 1, 'API Token', 'c821499c52a4f0a54a8da8ec13c385eea4158449ae5ed1a9b60ba27265cf0638', '[\"*\"]', '2023-03-24 00:54:21', '2023-03-24 00:54:09', '2023-03-24 00:54:21'),
(18, 'App\\Models\\User', 12, 'API Token', 'cb3fbf552de394fc515c8851bf0b793f5e17965badb14c986128ee1b7a7c2b74', '[\"*\"]', NULL, '2023-03-24 01:02:31', '2023-03-24 01:02:31');

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$qGLRw5pgHJncjPEn0UcSRucnTzYQoZPpud2CiaaGgTKOb9mYYHHwC', NULL, NULL, NULL),
(2, 'PraveenS', 'p.deora@globalvoxinc.com', NULL, '$2y$10$SukaNlVXhwyy5QbdYqqUg.jFyq2oX.1bm7n4nNU2g/KpAZZTfg8Dy', NULL, '2023-03-23 23:43:44', '2023-03-23 23:43:44'),
(4, 'PraveenS', 'p.deora@globalvoxinc1.com', NULL, '$2y$10$TvBE0moltmotI1YcVtYULu2Eqq/Vq00jTwIsQ3FPDN2yWeE.p4ygG', NULL, '2023-03-23 23:44:35', '2023-03-23 23:44:35'),
(6, 'PraveenS', 'p.deora', NULL, '$2y$10$fNXk2RjvUxaCMtvFSP2dketk5MVmuVBI57IQ8IiJ3UA3zAdpeVGf.', NULL, '2023-03-24 00:03:34', '2023-03-24 00:03:34'),
(8, 'PraveenS', 'p.deora1', NULL, '$2y$10$mx2razRTSFMLYr7n8dx8F.Vk1UFQN8CBU7hTLfI2gcaUp.86hgmSK', NULL, '2023-03-24 00:03:57', '2023-03-24 00:03:57'),
(10, 'PraveenS', 'p.deora3@gmail.com', NULL, '$2y$10$dtP9B99JdpdgOQIN4p0Jqe9vdQry9JlAV/rqWEdhteH6T0rEos65O', NULL, '2023-03-24 00:14:07', '2023-03-24 00:14:07'),
(11, 'PraveenS', 'p.deora3@email', NULL, '$2y$10$7A8nMX6tK2HNQFoXYtJegOH9PNe0vgkTBL74vdtlTn/PDgrQHDxzi', NULL, '2023-03-24 00:14:27', '2023-03-24 00:14:27'),
(12, 'Gautam Menaria', 'g.menaria@globalvoxinc.com', NULL, '$2y$10$w4hFqUWFw/7KXaBElrjWdOZHa7.W8Y5WctKtSA7IbL/8Wvvijxh4u', NULL, '2023-03-24 01:02:31', '2023-03-24 01:02:31'),
(13, 'Gautam Menaria', 'g.menaria1@globalvoxinc.com', NULL, '$2y$10$KI8lJNJWLaacbvwahITu4.lhzvHiAYP9hkZ.OWS2QkUtIMGk6JDbC', NULL, '2023-03-24 01:03:48', '2023-03-24 01:03:48');

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
