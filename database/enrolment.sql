-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2020 at 02:01 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `enrolment`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `class_id`, `subject_name`, `subject_code`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bangla', '101', '2020-06-21 00:53:03', '2020-06-21 00:53:03'),
(2, 1, 'English', '102', '2020-06-21 00:53:15', '2020-06-21 00:53:15'),
(3, 1, 'Math', '105', '2020-06-21 00:53:24', '2020-06-21 00:53:24'),
(6, 1, 'Agricultural Science', '135', '2020-06-21 08:11:54', '2020-06-21 08:11:54'),
(7, 1, 'Social Science', '135', '2020-06-21 08:13:23', '2020-06-21 08:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `enrolments`
--

CREATE TABLE `enrolments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrolments`
--

INSERT INTO `enrolments` (`id`, `class`, `mobile_no`, `created_at`, `updated_at`) VALUES
(1, 'Ten', 1555555555, NULL, NULL),
(3, 'four', 123456789, '2020-06-20 11:15:14', '2020-06-20 11:15:14'),
(4, 'four', 12345678, '2020-06-20 11:26:31', '2020-06-20 11:26:31'),
(5, 'five', 123456, '2020-06-20 11:26:45', '2020-06-20 11:35:44');

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_06_20_145529_create_enrolments_table', 2),
(4, '2020_06_21_062025_create_courses_table', 3),
(5, '2020_06_21_074843_create_students_table', 4),
(6, '2020_06_21_114315_create_token_stors_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roll` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `subject_name`, `name`, `roll`, `address`, `email`, `created_at`, `updated_at`) VALUES
(8, 'Bangla', 'Student1', '01', 'Dhaka', 'Student1@gmail.com', '2020-08-16 05:40:45', '2020-08-16 05:47:38'),
(9, 'English', 'Student2', '02', 'Gazipur', 'Student2@gmail.com', '2020-08-16 05:55:18', '2020-08-16 05:55:18'),
(10, 'Agricultural Science', 'Student3', '03', 'Mymensingh', 'Student3@gmail.com', '2020-08-16 05:56:07', '2020-08-16 05:56:07'),
(11, 'Math, Bangla', 'Student4', '04', 'Tangail', 'Student4@gmail.com', '2020-08-16 05:56:32', '2020-08-16 05:59:35'),
(12, 'Math, Bangla,English', 'Student5', '05', 'Sirajgonj', 'Student5@gmail.com', '2020-08-16 06:00:40', '2020-08-16 06:00:40');

-- --------------------------------------------------------

--
-- Table structure for table `token_store`
--

CREATE TABLE `token_store` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `auth_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `token_store`
--

INSERT INTO `token_store` (`id`, `user_id`, `auth_token`, `created_at`, `updated_at`) VALUES
(10, 4, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU5Mjc0NzExMSwiZXhwIjoxNTkyNzUwNzExLCJuYmYiOjE1OTI3NDcxMTEsImp0aSI6IjdFQUJvNXJOQ1FJekQ0cmoiLCJzdWIiOjQsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.SIoWKt6acKRk0-PbFEk_IHFj0OebM1pFViE1Dzl7xwU', '2020-06-21 07:45:11', '2020-06-21 07:45:11'),
(12, 7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTU5Mjc0OTM1NCwiZXhwIjoxNTkyNzUyOTU0LCJuYmYiOjE1OTI3NDkzNTQsImp0aSI6IlhSYnY3QWZud1hBVFdjZ0kiLCJzdWIiOjcsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.p5o8qfCnHtPIArVf5QcWNRfHFR0TQK_TqZBF5Lr9h_I', '2020-06-21 08:22:34', '2020-06-21 08:22:34'),
(13, 7, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU5NzU3NTMwNCwiZXhwIjoxNTk3NTc4OTA0LCJuYmYiOjE1OTc1NzUzMDQsImp0aSI6IkVYNThqNVBQUjF1aENxWFUiLCJzdWIiOjcsInBydiI6Ijg3ZTBhZjFlZjlmZDE1ODEyZmRlYzk3MTUzYTE0ZTBiMDQ3NTQ2YWEifQ.z35Ce1Gwd-6jVFsaTqE77OxciJZls0hjemLkcRDE61Q', '2020-08-16 04:55:04', '2020-08-16 04:55:04'),
(14, 10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9yZWdpc3RlciIsImlhdCI6MTU5NzU3NzYzNSwiZXhwIjoxNTk3NTgxMjM1LCJuYmYiOjE1OTc1Nzc2MzUsImp0aSI6Ik5zdWpnTVhNWEdyTGZrZkUiLCJzdWIiOjEwLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.0po2-yi7QyS30YhMiKnvHl087_pwqU37hNY-ID1b0g8', '2020-08-16 05:33:55', '2020-08-16 05:33:55'),
(15, 10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU5NzU3NzY2MywiZXhwIjoxNTk3NTgxMjYzLCJuYmYiOjE1OTc1Nzc2NjMsImp0aSI6IngwWmZ5cEFDZWh6MjlVWUoiLCJzdWIiOjEwLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.46IUkGQ7TTzhNvBqo6Vkuz-9qYjjFrls8ukC7VoQqfo', '2020-08-16 05:34:23', '2020-08-16 05:34:23'),
(16, 10, 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC8xMjcuMC4wLjE6ODAwMFwvYXBpXC9sb2dpbiIsImlhdCI6MTU5NzU3ODQwNCwiZXhwIjoxNTk3NTgyMDA0LCJuYmYiOjE1OTc1Nzg0MDQsImp0aSI6IllJb3JLSktnMjI0enZxdzYiLCJzdWIiOjEwLCJwcnYiOiI4N2UwYWYxZWY5ZmQxNTgxMmZkZWM5NzE1M2ExNGUwYjA0NzU0NmFhIn0.LKGZoqHa3Bk5ECWGMwj0D0vrWW1wFvBoatd_2x7vha8', '2020-08-16 05:46:44', '2020-08-16 05:46:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'mrx', 'mrx@gmail.com', NULL, '$2y$10$LKN2Tb0Q6.ISQt5VOzlNtO3V6S.b11m6hPCu.PA4NZ9qVFC5XPP.S', NULL, NULL, NULL),
(10, 'mru', 'mru@gmail.com', NULL, '$2y$10$lrCJI2UwCaqG2Om.ktN3lOA0HBmxs3aqXWVfJpRoTQ08YT1Y/oT2.', NULL, '2020-08-16 05:33:54', '2020-08-16 05:33:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrolments`
--
ALTER TABLE `enrolments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `token_store`
--
ALTER TABLE `token_store`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `enrolments`
--
ALTER TABLE `enrolments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `token_store`
--
ALTER TABLE `token_store`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
