-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 12:25 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book-website`
--
CREATE DATABASE IF NOT EXISTS `book-website` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `book-website`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `genre_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `publication_year` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `genre_id`, `price`, `publication_year`, `description`, `created_at`, `updated_at`) VALUES
(1, 'The Great gatsby', 'F. Scott Fitzgerald', 3, 10.99, 1920, 'A novel set in the Jazz Age.', '2024-12-07 16:52:42', '2024-12-10 06:43:17'),
(2, 'To Kill a Mockingbird', 'Harper Lees', 2, 8.99, 1960, 'A story of racial injustice.', '2024-12-07 16:52:42', '2024-12-08 05:22:08'),
(3, 'Rich dad Poor dad', 'George Orwell', 19, 9.50, 1949, 'A dystopian novel.', '2024-12-07 16:52:42', '2024-12-12 01:45:51'),
(4, 'Pride and Prejudice', 'Jane Austen', 6, 7.49, 1813, 'A classic romantic novel.', '2024-12-07 16:52:42', '2024-12-07 16:52:42'),
(5, 'Moby weet', 'Herman Melville', 7, 12.00, 1851, 'The tale of a whale hunt.', '2024-12-07 16:52:42', '2024-12-17 05:26:28'),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 9, 6.99, 1951, 'A novel about teenage rebellion.', '2024-12-07 16:52:42', '2024-12-07 16:52:42'),
(7, 'War and Peace', 'Leo fonsi', 8, 15.99, 1866, 'A historical epic.', '2024-12-07 16:52:42', '2024-12-10 06:50:22'),
(8, 'The Hobbit', 'J.R.R. Tolkien', 10, 11.99, 1937, 'A fantasy adventure.', '2024-12-07 16:52:42', '2024-12-07 16:52:42'),
(9, 'Crime and Punishment', 'Fyodor Dostoevsky', 4, 10.00, 1866, 'A psychological drama.', '2024-12-07 16:52:42', '2024-12-07 16:52:42'),
(21, 'stars', 'hamza', 7, 200.00, 2020, 'this book is written by hamza from lahore', '2024-12-07 13:24:29', '2024-12-07 13:24:29'),
(33, 'king and queen', 'wilson', 8, 8000.00, 2000, 'its all about the king and their queen which is roling on the country.', '2024-12-10 06:42:37', '2024-12-10 06:42:37'),
(36, 'dfasf', 'gsfdg', 2, 444.00, 4444, 'vbdfg', '2024-12-12 05:37:52', '2024-12-12 05:37:52'),
(38, 'asdf', 'hamza', 3, 18000.00, 1223, 'adsfasdfasfasfsafsadfsfadsf', '2024-12-17 02:55:29', '2024-12-17 02:55:29'),
(39, 'Iste dolores repelle', 'Dolores debitis ex a', 4, 686.00, 1981, 'Consequatur elit p', '2024-12-17 02:56:17', '2024-12-17 02:56:17'),
(40, 'Explicabo Dolorum e', 'Laborum quis quia qu', 3, 620.00, 1980, 'Ipsam ratione sint e', '2024-12-17 02:56:30', '2024-12-17 02:56:30'),
(41, 'Aute occaecat qui cu', 'Impedit duis nulla', 2, 509.00, 2010, 'Est perspiciatis e', '2024-12-17 02:56:42', '2024-12-17 02:56:42'),
(42, 'Praesentium est quas', 'Optio ad molestias', 2, 106.00, 1982, 'Voluptate doloremque', '2024-12-17 02:56:52', '2024-12-17 02:56:52'),
(43, 'Molestiae perspiciat', 'Incidunt ipsum plac', 2, 479.00, 1996, 'Aliquid exercitation', '2024-12-17 02:57:02', '2024-12-17 02:57:02'),
(44, 'Sint eligendi asper', 'Ipsa debitis ut mol', 5, 418.00, 1993, 'Laboriosam sit null', '2024-12-17 02:58:38', '2024-12-17 02:58:38'),
(45, 'Nisi temporibus sed', 'Ut tempore esse ita', 5, 442.00, 2013, 'At odit anim laborum', '2024-12-17 02:58:49', '2024-12-17 02:58:49'),
(46, 'Tenetur amet delect', 'At dolore unde et it', 5, 954.00, 1975, 'Debitis delectus vo', '2024-12-17 03:00:04', '2024-12-17 03:00:04'),
(47, 'Quae ducimus except', 'Sit do molestias vo', 19, 97.00, 1986, 'Dignissimos quidem a', '2024-12-17 03:00:36', '2024-12-17 03:00:36'),
(48, 'Deleniti est magna', 'Officia sit in dolo', 19, 974.00, 1994, 'Quos molestiae place', '2024-12-17 03:00:46', '2024-12-17 03:00:46'),
(49, 'Earum laborum conseq', 'Laboris impedit rep', 6, 721.00, 1994, 'Nam voluptatem irur', '2024-12-17 03:00:55', '2024-12-17 03:00:55'),
(50, 'Consequatur magni im', 'Maiores cupiditate t', 10, 681.00, 2008, 'Impedit eiusmod a d', '2024-12-17 03:01:02', '2024-12-17 03:01:02'),
(51, 'In mollit elit cons', 'Dolores ad a blandit', 10, 636.00, 2007, 'Aliquid blanditiis e', '2024-12-17 03:01:10', '2024-12-17 03:01:10'),
(52, 'Commodo accusantium', 'Occaecat nostrum ame', 10, 580.00, 2012, 'Ut omnis eaque volup', '2024-12-17 03:01:17', '2024-12-17 03:01:17'),
(53, 'Unde dolore voluptat', 'Aspernatur id quia', 9, 699.00, 1995, 'Vel earum proident', '2024-12-17 03:01:45', '2024-12-17 03:01:45'),
(54, 'Nihil dolores et in', 'Et eligendi laborios', 9, 141.00, 2016, 'Ullamco fugit aut e', '2024-12-17 03:02:01', '2024-12-17 03:02:01'),
(55, 'Rerum eum saepe adip', 'Minim sit odio est', 7, 419.00, 2016, 'Alias ut labore impe', '2024-12-17 03:02:09', '2024-12-17 03:02:09'),
(56, 'Rem eu optio cupida', 'Aliqua Cumque sunt', 7, 198.00, 1992, 'Dolores quos praesen', '2024-12-17 03:02:19', '2024-12-17 03:02:19'),
(57, 'Dolore in adipisicin', 'Vero sunt in adipis', 9, 441.00, 2018, 'Asperiores qui qui q', '2024-12-17 05:22:24', '2024-12-17 05:22:24'),
(58, 'Dolore in adipisicin', 'Vero sunt in adipis', 9, 441.00, 2018, 'Asperiores qui qui q', '2024-12-17 05:22:25', '2024-12-17 05:22:25'),
(61, 'Qui commodo nostrum', 'Illum dolor ipsam u', 1, 516.00, 2000, 'Commodi proident te', '2024-12-17 05:26:49', '2024-12-17 05:26:49'),
(62, 'Omnis corrupti mini', 'Et sint iste expedi', 1, 31.00, 1992, 'Sed eius quo amet e', '2024-12-17 05:26:58', '2024-12-17 05:26:58'),
(63, 'Quasi irure nulla qu', 'Irure omnis cumque e', 1, 464.00, 2013, 'Exercitationem ut ip', '2024-12-17 05:27:07', '2024-12-17 05:27:07');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Historical Fiction', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(2, 'Fiction', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(3, 'Biography', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(4, 'Non-Fiction', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(5, 'Adventure', '2024-12-07 16:52:11', '2024-12-10 03:01:01'),
(6, 'Science and technology', '2024-12-07 16:52:11', '2024-12-10 06:47:54'),
(7, 'Classics', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(8, 'Fantasy', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(9, 'Epic', '2024-12-07 16:52:11', '2024-12-09 12:39:15'),
(10, 'Mystery', '2024-12-07 16:52:11', '2024-12-07 16:52:11'),
(19, 'Romantic', '2024-12-12 01:45:51', '2024-12-12 01:45:51');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_07_163813_create_genres_table', 2),
(5, '2024_12_07_164512_create_books_table', 3),
(6, '2024_12_09_082943_create_roles_table', 4),
(7, '2024_12_09_083715_create_users_table', 5),
(8, '2024_12_09_170613_update_users_table_replace_role_id_with_role', 6),
(9, '2024_12_09_171141_move_role_column_after_password', 7),
(10, '2024_12_19_054414_add_phone_to_users_table', 8),
(11, '2024_12_19_055155_add_phone_column_to_users_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', NULL, NULL),
(2, 'user', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('zQLsftcr5FBsNwYdL3wYZ0NckpOJaegtBPqOyIcG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiMnlxTVlMM0MxdmVLRUNoZUNxUVNmRUxvSVNSVDloVHROMzhYeW5hcSI7czoxODoiZmxhc2hlcjo6ZW52ZWxvcGVzIjthOjA6e31zOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozMDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL3JlZ2lzdGVyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1734606217);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Zahir ullah', 'zahir@gmail.com', NULL, '$2y$12$H3TUjR0Q4C7T0h6UJXG6oupFbH5nWBCOW0QL89aDhAJdqT2/yK446', 'admin', '2024-12-09 04:21:42', '2024-12-11 03:19:45'),
(2, 'hamza bilal', 'hamza@gmail.com', NULL, '$2y$12$XxUXhAmTdJrHoBNJIo6j8u7HhidcQXJYwg7bQfe/WAbjD1AtV4yZq', 'user', '2024-12-09 04:24:41', '2024-12-11 02:03:46'),
(3, 'sana', 'sana@gmail.com', NULL, '$2y$12$mtp9XRcoiBgW8O1O5k3VGevMoHm3Xa4ScwHG6OPtSLBayyiOWYnU6', 'admin', '2024-12-09 12:17:41', '2024-12-09 12:17:41'),
(4, 'saad khan', 'saad@gmail.com', NULL, '$2y$12$Mrct2FnFY2m7lDLzo.1DpOJAjXFyCbcjT05qUbwTjvz30z/T6.TLm', 'user', '2024-12-12 02:05:53', '2024-12-12 04:25:39'),
(5, 'hashir jan', 'hashir@gmail.com', '23467854643', '$2y$12$bNn3Swzv6dX5lSLV5O7g/eLca4MpUeyqlBAN/a4ukICrtPBW2CLWe', 'admin', '2024-12-19 00:58:37', '2024-12-19 00:58:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_genre_id_foreign` (`genre_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `genres_name_unique` (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_genre_id_foreign` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
