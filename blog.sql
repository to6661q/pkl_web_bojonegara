-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2022 at 08:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Berita ku', 'berita-ku', NULL, '2022-01-06 05:18:36'),
(2, 'asdf', 'asdf', NULL, '2022-01-06 07:04:48'),
(3, 'Sekolah', 'sekolah', NULL, NULL),
(4, 'Semua tak sama', 'semua-tak-sama', '2022-01-06 03:22:09', '2022-01-06 05:30:17'),
(5, 'Yuk bisa yuk', 'yuk-bisa-yuk', '2022-01-06 03:29:24', '2022-01-06 03:29:24'),
(6, 'abhhgj', 'abhhgj', '2022-01-06 04:47:25', '2022-01-06 04:47:25'),
(10, 'Toriq As Syarif', 'toriq-as-syarif', '2022-01-06 05:52:33', '2022-01-06 05:52:33'),
(11, 'Lorem Ipsum', 'lorem-ipsum', '2022-01-09 04:22:31', '2022-01-09 04:22:31');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_01_06_075301_create_category_table', 1),
(6, '2022_01_06_130113_create_tags_table', 2),
(7, '2022_01_06_141111_create_posts_table', 3),
(8, '2022_01_06_184712_add_new_slug_posts_table', 4),
(10, '2022_01_06_190922_create_posts_tags_table', 5),
(12, '2022_01_09_142615_tambah_softdelete_ke_posts', 6),
(13, '2022_01_10_045451_tambah_field_user_posts', 7),
(14, '2022_01_10_054956_add_type_user', 8);

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

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `judul`, `category_id`, `content`, `gambar`, `created_at`, `updated_at`, `slug`, `deleted_at`, `users_id`) VALUES
(3, 'SWSW', 4, '<th>Kategori</th>', 'public/uploads/posts/1641727802Twibbon 2.png', '2022-01-06 11:54:18', '2022-01-09 08:25:30', 'swsw', NULL, 1),
(6, 'uji coba', 3, 'sssssssssssggfg ff', 'public/uploads/posts/1641635961background-640x360.jpg', '2022-01-08 02:59:21', '2022-01-08 02:59:21', 'uji-coba', NULL, 1),
(7, 'uji coba EDIT', 10, '2022 edit sssssssssssggfg ff', 'public/uploads/posts/16416442819929ff78-c385-4076-8f2d-d546b5fec3ab.jpg', '2022-01-08 03:07:17', '2022-01-09 08:26:09', 'uji-coba-edit', NULL, 1),
(8, 'uji coba EDIT 999999999999', 6, 'sssssssssssggfg ff', 'public/uploads/posts/1641644327PBSD.png', '2022-01-08 03:07:23', '2022-01-09 08:25:49', 'uji-coba-edit-999999999999', NULL, 1),
(9, 'uji coba tanpa gambar', 4, 'ssssssssssdffffw1111111111111111111', 'public/uploads/posts/1641636512background-640x360.jpg', '2022-01-08 03:08:32', '2022-01-08 05:22:25', 'uji-coba-tanpa-gambar', NULL, 1),
(10, 'uji coba', 3, 'sssssssssssggfg ff', 'public/uploads/posts/1641636538background-640x360.jpg', '2022-01-08 03:08:58', '2022-01-08 03:08:58', 'uji-coba', NULL, 1),
(11, 'video 17', 10, 'jcydtuyj Schema::table(\'posts\', function (Blueprint $table) {\r\n            $table->softDeletes();\r\n        });\r\n    }\r\nvkugli', 'public/uploads/posts/1641790896Kiriman Instagram Band Indie Musik Geometri Modern Tipografi Putih dan Kuning.png', '2022-01-09 22:01:36', '2022-01-09 22:01:36', 'video-17', NULL, 1),
(12, 'KOPIT 19', 5, 'Now that we have explored each of the methods on the UserProvider, let\'s take a look at the Authenticatable contract. Remember, the provider should return implementations of this interface from the retrieveById, retrieveByToken, and retrieveByCredentials methods:', 'public/uploads/posts/164179459820210528_210545.jpg', '2022-01-09 23:03:18', '2022-01-09 23:03:41', 'kopit-19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `posts_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `posts_id`, `tags_id`, `created_at`, `updated_at`) VALUES
(1, 10, 2, NULL, NULL),
(2, 10, 3, NULL, NULL),
(3, 10, 4, NULL, NULL),
(4, 7, 2, NULL, NULL),
(5, 8, 2, NULL, NULL),
(6, 9, 2, NULL, NULL),
(7, 3, 1, NULL, NULL),
(8, 3, 2, NULL, NULL),
(9, 11, 2, NULL, NULL),
(10, 12, 3, NULL, NULL),
(11, 3, 4, NULL, NULL),
(12, 13, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'bung', 'bung', NULL, NULL),
(2, 'aku-bisa', 'aku-bisa', NULL, NULL),
(3, 'adsf', 'adsf', '2022-01-06 06:51:03', '2022-01-06 06:51:03'),
(4, 'ghjumd', 'ghjumd', '2022-01-06 06:58:34', '2022-01-06 07:04:02');

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
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Toriq As Syarif', 'toriqnain@gmail.com', NULL, '$2y$10$7nJoqGcwM0EXATaJdeqw.OZ01HPAQv1sXP/vob8mjOMKoLpqpDH5i', NULL, '2022-01-09 11:53:22', '2022-01-09 11:53:22', 1),
(2, 'TORIQ', 'toriq.assyarif18@mhs.uinjkt.ac.id', NULL, '$2y$10$eU96J45l8jzVbVfqPYMXCub.6wtg27RJswtsyrXjkiQb55m9D9oES', NULL, '2022-01-09 22:22:14', '2022-01-09 22:22:14', 0),
(3, 'Wahyu', 'wahyu@gmail.com', NULL, '$2y$10$o2gBsEFQyd21RIvZbTFimusbhWJDBp.mXnvr3C2eu6rglVYDaT9OG', NULL, '2022-01-09 23:45:48', '2022-01-09 23:45:48', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
