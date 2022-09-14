-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2022 at 09:07 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_react`
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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('003d91ffbd6a2d400d1b4d6006a271bb7dc8730caeb5e9c7f5e8acf98cfc8c8a11e122a1f5b32d2b', 7, 1, 'app', '[]', 0, '2022-09-14 12:59:43', '2022-09-14 12:59:43', '2023-09-14 18:59:43'),
('11dcdd996364501a06b5769aa279f5775dd17f5de0a4af2db9e4cb461074071018b385d4a26e5416', 7, 1, 'app', '[]', 0, '2022-09-14 09:40:38', '2022-09-14 09:40:38', '2023-09-14 15:40:38'),
('13b2f33df21220487c46870921b212d2411716fc304c96da32f17bd16035ef96040907d9fe8769e9', 7, 1, 'app', '[]', 0, '2022-09-14 09:53:12', '2022-09-14 09:53:12', '2023-09-14 15:53:12'),
('17f5e0c6e5f1dc14b138b9d8067261abffd700c06e2c8c0287bb4ee1f7d7a3e43f649ec398fd3298', 7, 1, 'app', '[]', 0, '2022-09-14 12:45:59', '2022-09-14 12:45:59', '2023-09-14 18:45:59'),
('1bce1de66026da91979e621c3168dc9c7bd3c14c85a0d6a6a4705773665dfa432b8931450be336a3', 7, 1, 'app', '[]', 0, '2022-09-14 13:03:13', '2022-09-14 13:03:13', '2023-09-14 19:03:13'),
('257136e7a7733eba8ad37074bac7bed88733e38ba2f3583958d3be51db6cfc9eb735b4317e52c796', 9, 1, 'app', '[]', 0, '2022-09-14 08:41:53', '2022-09-14 08:41:53', '2023-09-14 14:41:53'),
('28f4796afc983368f02d6fd827977b7911dd2aad0e621e1e4b72995d9a1be09159345b1e42c82096', 7, 1, 'app', '[]', 0, '2022-09-14 08:57:05', '2022-09-14 08:57:05', '2023-09-14 14:57:05'),
('3c235546dd320232162214726a6f3e4af74eeb7b3eee564b971aa5cb73202f585c77f6f33eb4cda4', 7, 1, 'app', '[]', 0, '2022-09-14 08:39:52', '2022-09-14 08:39:52', '2023-09-14 14:39:52'),
('3f39e805d8933f0cf70168dabe2b02ef98fe7aa207447014287b4c43b3664d34674b13931c78cee3', 7, 1, 'app', '[]', 0, '2022-09-14 08:40:19', '2022-09-14 08:40:19', '2023-09-14 14:40:19'),
('500ed8acdaabc7687ccde6aa795215a53b405c7c5770db338f71bc7b0a982dff64324500559f5ac4', 7, 1, 'app', '[]', 0, '2022-09-14 12:33:46', '2022-09-14 12:33:46', '2023-09-14 18:33:46'),
('619a6982aaf4fca69e723efae6bcc1a42bfc004de6f4f9cd4bc3ac089aa58d3356e10fe17a229e79', 7, 1, 'app', '[]', 0, '2022-09-14 10:13:33', '2022-09-14 10:13:33', '2023-09-14 16:13:33'),
('80e348ecda58e284c3caf89f3d56f446c319c1c65516a5817fed54ebe6b798e8ba517e02a1b30938', 1, 1, 'app', '[]', 0, '2022-09-13 13:06:49', '2022-09-13 13:06:49', '2023-09-13 19:06:49'),
('88a725cd699202686c6f44ef004e7461b806b66a1783b6541cfd796a2a0b5e626c5ac28b25ae36f2', 4, 1, 'app', '[]', 0, '2022-09-13 13:21:44', '2022-09-13 13:21:44', '2023-09-13 19:21:44'),
('95f94f304cab65170b6c2bacc812999dd5524d620e75e5eaa21e45d0b2e78978b719665839d4c6f6', 7, 1, 'app', '[]', 0, '2022-09-14 12:19:22', '2022-09-14 12:19:22', '2023-09-14 18:19:22'),
('98ad72df4794e349709e98fde9a15d37cf79924c6ec2bdf3b99778115d4b54d61147c13c0ac1ef39', 7, 1, 'app', '[]', 0, '2022-09-14 11:56:36', '2022-09-14 11:56:36', '2023-09-14 17:56:36'),
('a98ddf102a59fbfa8761308b9414702f425f9b3edf07b97693104fe0550dfbdd8831a89723116b2c', 7, 1, 'app', '[]', 0, '2022-09-14 13:02:32', '2022-09-14 13:02:32', '2023-09-14 19:02:32'),
('af8e6a68745b843fdb4dfa2387fda9b59e820ba6ce2f1c8d5a0b694ca9813763daa82e77035cd14c', 7, 1, 'app', '[]', 0, '2022-09-14 12:57:45', '2022-09-14 12:57:45', '2023-09-14 18:57:45'),
('fa3f3c44a4af01b8d772da90126b300c4dccf4ab53d585348655d360904aa7c198a3707d7185c651', 7, 1, 'app', '[]', 0, '2022-09-14 12:41:05', '2022-09-14 12:41:05', '2023-09-14 18:41:05'),
('fe5db09a3e6e9633dd85bb77c66ecd6eb491fa2c880f965e426d85c8693c238309790022b978a1a3', 7, 1, 'app', '[]', 0, '2022-09-14 08:50:48', '2022-09-14 08:50:48', '2023-09-14 14:50:48');

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

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'XpGWX14hxuW9PfZ73PdweQ2EShHtfYUxpa0gvV32', NULL, 'http://localhost', 1, 0, 0, '2022-09-13 12:38:58', '2022-09-13 12:38:58'),
(2, NULL, 'Laravel Password Grant Client', '9mrLBRgdKvCz5SLxn9mFWyjpCSvqWaO7VeCiCHuz', 'users', 'http://localhost', 0, 1, 0, '2022-09-13 12:38:58', '2022-09-13 12:38:58');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-09-13 12:38:58', '2022-09-13 12:38:58');

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
(1, 'App\\Models\\User', 1, 'app', '6abe196022dbb43d8f03bcba1cbf35ac630be531b0963c5b00c1906affc342e8', '[\"*\"]', NULL, '2022-09-13 13:01:22', '2022-09-13 13:01:22'),
(2, 'App\\Models\\User', 1, 'app', 'e026bec1eb08096e4eb72fe58d2e6fa359d150f286d460f971c12be51ecb71de', '[\"*\"]', NULL, '2022-09-13 13:04:48', '2022-09-13 13:04:48');

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
(1, 'reju', 'reju@gmail.com', NULL, '$2y$10$I0qy5UpnIQnuNWp3xW4urONI2/IXHxlhAhOMG.tf5OmayuM8RYrIi', NULL, '2022-09-13 13:01:22', '2022-09-13 13:01:22'),
(4, 'shakib', 'shakib@gmail.com', NULL, '$2y$10$hS90cDDVJgc7hy2jHX6.3OjWpyldK3T/JkKPiiTslpuoak9AIy/1S', NULL, '2022-09-13 13:21:44', '2022-09-13 13:21:44'),
(7, 'test', 'test@gmail.com', NULL, '$2y$10$hrsokqYMPHkBq0UBq./cMua0Ny0Ew0LtYkfGbSM3iheh2T.jH66c2', NULL, '2022-09-14 08:39:51', '2022-09-14 08:39:51'),
(9, 'test', 'dfdsf@gmail.com', NULL, '$2y$10$sCdudYOSM6zh1tHkYzTT6OhhpV31yzH.ZGhKCmEkj0c9VmswikdoO', NULL, '2022-09-14 08:41:53', '2022-09-14 08:41:53');

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
