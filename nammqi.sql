-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jun 25, 2022 at 02:26 PM
-- Server version: 5.7.34
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nammqi`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ki5aUVdVcXFqjVbhPrx9049S8Fs7xjYm', 1, '2022-01-04 04:39:02', '2022-01-04 04:39:02', '2022-01-04 04:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `audit_histories`
--

CREATE TABLE `audit_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `module` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` text COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int(10) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_histories`
--

INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '127.0.0.1', 0, 1, 'System Admin', 'info', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(2, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-05-26 04:05:36', '2022-05-26 04:05:36'),
(3, 1, 'user', '{\"first_name\":\"System\",\"last_name\":\"Admin\",\"email\":\"admin@botble.com\",\"submit\":\"submit\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 1, 'System Admin', 'primary', '2022-05-26 04:07:02', '2022-05-26 04:07:02'),
(4, 1, 'user', '{\"submit\":\"submit\"}', 'updated profile', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 1, 'System Admin', 'info', '2022-05-26 04:07:11', '2022-05-26 04:07:11'),
(5, 1, 'user', '{\"submit\":\"submit\"}', 'changed password', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 1, 'System Admin', 'danger', '2022-05-26 04:07:11', '2022-05-26 04:07:11'),
(6, 1, 'ims', '{\"name\":\"Namangan muhandislik-qurilish instituti\",\"submit\":\"save\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 1, 'Namangan muhandislik-qurilish instituti', 'info', '2022-05-26 04:33:28', '2022-05-26 04:33:28'),
(7, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-05-28 01:48:35', '2022-05-28 01:48:35'),
(8, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":\"1\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'info', '2022-05-28 01:52:30', '2022-05-28 01:52:30'),
(9, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"submit\":\"save\",\"language\":\"uz_UZ\",\"ref_from\":\"1\",\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 12, 'Asosiy menyu', 'info', '2022-05-28 01:52:30', '2022-05-28 01:52:30'),
(10, 1, 'menu', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 12, 'Asosiy menyu', 'danger', '2022-05-28 01:52:43', '2022-05-28 01:52:43'),
(11, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Homepage\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-05-28 01:53:16', '2022-05-28 01:53:16'),
(12, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Homepage\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"children\\\":[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-05-28 01:53:16', '2022-05-28 01:53:16'),
(13, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[static-block alias=\\\"rodrigo-witting-ii\\\"][\\/static-block]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-posts][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[recent-posts title=\\\"What\'s new?\\\"][\\/recent-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories-posts title=\\\"Best for you\\\" category_id=\\\"2\\\"][\\/featured-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[all-galleries limit=\\\"8\\\"][\\/all-galleries]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[static-block alias=\\\"rodrigo-witting-ii\\\"][\\/static-block]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"en_US\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-05-28 01:56:05', '2022-05-28 01:56:05'),
(14, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-06-06 04:55:56', '2022-06-06 04:55:56'),
(15, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 10, 'Emma Rath', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(16, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 9, 'Joshuah Kessler', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(17, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 8, 'Cristal Rutherford', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(18, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 7, 'Mrs. Aileen Wilderman Jr.', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(19, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 6, 'Neil Sawayn', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(20, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 5, 'Jackie Raynor', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(21, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 4, 'Polly Price', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(22, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 3, 'Mr. Xzavier Stiedemann', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(23, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 2, 'Dr. Aryanna Donnelly', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(24, 1, 'contact', '{\"_method\":\"DELETE\",\"ids\":[\"10\",\"9\",\"8\",\"7\",\"6\",\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Contact\\\\Tables\\\\ContactTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '::1', 1, 1, 'Aaliyah Marvin DVM', 'danger', '2022-06-06 05:03:32', '2022-06-06 05:03:32'),
(25, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-06-21 01:33:59', '2022-06-21 01:33:59'),
(26, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-06-23 08:10:19', '2022-06-23 08:10:19'),
(27, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-06-24 04:37:24', '2022-06-24 04:37:24'),
(28, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"\\\",\\\"id\\\":\\\"51\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/nammqi.loc\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-06-24 05:27:09', '2022-06-24 05:27:09'),
(29, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"\\\",\\\"id\\\":\\\"51\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/nammqi.loc\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-06-24 05:27:09', '2022-06-24 05:27:09'),
(30, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"  \\\",\\\"id\\\":\\\"51\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/nammqi.loc\\/homepage\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-06-24 05:35:15', '2022-06-24 05:35:15'),
(31, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"title\\\":\\\"  \\\",\\\"id\\\":\\\"51\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"customUrl\\\":\\\"http:\\/\\/nammqi.loc\\/homepage\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-06-24 05:35:15', '2022-06-24 05:35:15'),
(32, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":\"51\",\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-06-24 05:36:03', '2022-06-24 05:36:03'),
(33, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":\"51\",\"menu_nodes\":\"[{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"custom-link\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"class\\\":\\\"\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"52\\\",\\\"title\\\":\\\"Design\\\",\\\"referenceId\\\":\\\"1\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/design\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":1,\\\"children\\\":[]},{\\\"id\\\":\\\"53\\\",\\\"title\\\":\\\"Healthy\\\",\\\"referenceId\\\":\\\"4\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/healthy\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"54\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"5\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":2},{\\\"id\\\":\\\"55\\\",\\\"title\\\":\\\"Hotel\\\",\\\"referenceId\\\":\\\"6\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/hotel\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"56\\\",\\\"title\\\":\\\"Nature\\\",\\\"referenceId\\\":\\\"7\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/nature\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":3},{\\\"id\\\":\\\"57\\\",\\\"title\\\":\\\"Lifestyle\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/lifestyle\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"children\\\":[{\\\"id\\\":\\\"58\\\",\\\"title\\\":\\\"Travel Tips\\\",\\\"referenceId\\\":\\\"3\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Blog\\\\\\\\Models\\\\\\\\Category\\\",\\\"customUrl\\\":\\\"\\/travel-tips\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}],\\\"position\\\":4}]\",\"target\":\"_self\",\"title\":\"Travel Tips\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-06-24 05:36:03', '2022-06-24 05:36:03'),
(34, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":\"52 53 54 55 56 57 58\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":59,\\\"\\\":\\\"\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":null,\"custom-url\":\"\\/\",\"icon-font\":\"fa fa-home\",\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-06-24 05:36:26', '2022-06-24 05:36:26'),
(35, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":\"52 53 54 55 56 57 58\",\"menu_nodes\":\"[{\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"id\\\":59,\\\"\\\":\\\"\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":0,\\\"referenceType\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":null,\"custom-url\":\"\\/\",\"icon-font\":\"fa fa-home\",\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-06-24 05:36:26', '2022-06-24 05:36:26'),
(36, 1, 'page', '{\"name\":\"Yangiliklar\",\"slug\":\"blog\",\"slug_id\":\"2\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>---<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Yangiliklar', 'primary', '2022-06-24 05:38:42', '2022-06-24 05:38:42'),
(37, 1, 'page', '{\"name\":\"Yangiliklar\",\"slug\":\"blog\",\"slug_id\":\"2\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>---<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Yangiliklar', 'primary', '2022-06-24 05:38:45', '2022-06-24 05:38:45'),
(38, 1, 'page', '{\"name\":\"Aloqa\",\"slug\":\"contact\",\"slug_id\":\"3\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore<\\/p><p>Hotline: 18006268<\\/p><p>Email: contact@botble.com<\\/p><shortcode class=\\\"bb-shortcode\\\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[\\/google-map]<\\/shortcode><p>For the fastest reply, please use the contact form below.<\\/p><shortcode class=\\\"bb-shortcode\\\">[contact-form][\\/contact-form]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'Aloqa', 'primary', '2022-06-24 05:38:57', '2022-06-24 05:38:57'),
(39, 1, 'menu', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"59\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Yangiliklar\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Yangiliklar\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Asosiy menyu', 'primary', '2022-06-24 05:39:26', '2022-06-24 05:39:26'),
(40, 1, 'menu_location', '{\"name\":\"Asosiy menyu\",\"deleted_nodes\":null,\"menu_nodes\":\"[{\\\"id\\\":\\\"59\\\",\\\"title\\\":\\\" \\\",\\\"referenceId\\\":\\\"0\\\",\\\"referenceType\\\":\\\"\\\",\\\"customUrl\\\":\\\"\\/\\\",\\\"target\\\":\\\"_self\\\",\\\"iconFont\\\":\\\"fa fa-home\\\",\\\"\\\":\\\"\\\",\\\"position\\\":0,\\\"children\\\":[]},{\\\"id\\\":\\\"0\\\",\\\"title\\\":\\\"Yangiliklar\\\",\\\"referenceId\\\":\\\"2\\\",\\\"referenceType\\\":\\\"Botble\\\\\\\\Page\\\\\\\\Models\\\\\\\\Page\\\",\\\"target\\\":\\\"_self\\\",\\\"position\\\":1,\\\"children\\\":[]}]\",\"target\":\"_self\",\"title\":\"Yangiliklar\",\"custom-url\":\"\\/\",\"icon-font\":null,\"class\":null,\"locations\":[\"main-menu\"],\"submit\":\"apply\",\"language\":\"uz_UZ\",\"ref_from\":null,\"status\":\"published\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'ID: 3', 'info', '2022-06-24 05:39:26', '2022-06-24 05:39:26'),
(41, 1, 'page', '{\"name\":\"Yangiliklar\",\"slug\":\"blog\",\"slug_id\":\"2\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[blog-posts paginate=\\\"12\\\"][\\/blog-posts]<\\/shortcode>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"default\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Yangiliklar', 'primary', '2022-06-24 05:42:48', '2022-06-24 05:42:48'),
(42, 1, 'to the system', NULL, 'logged in', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 0, 1, 'System Admin', 'info', '2022-06-25 06:14:03', '2022-06-25 06:14:03'),
(43, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[featured-posts][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[recent-posts title=\\\"What\'s new?\\\"][\\/recent-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories-posts title=\\\"Best for you\\\" category_id=\\\"2\\\"][\\/featured-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[all-galleries limit=\\\"8\\\"][\\/all-galleries]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[static-block alias=\\\"rodrigo-witting-ii\\\"][\\/static-block]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null,\"banner_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 06:20:41', '2022-06-25 06:20:41'),
(44, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[featured-posts][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[recent-posts title=\\\"What\'s new?\\\"][\\/recent-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories-posts title=\\\"Best for you\\\" category_id=\\\"2\\\"][\\/featured-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[all-galleries limit=\\\"8\\\"][\\/all-galleries]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null,\"banner_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 06:21:09', '2022-06-25 06:21:09'),
(45, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<p>&amp;nbps;<\\/p>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null,\"banner_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 06:28:30', '2022-06-25 06:28:30'),
(46, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[featured-posts][\\/featured-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[recent-posts title=\\\"What\'s new?\\\"][\\/recent-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[featured-categories-posts title=\\\"Best for you\\\" category_id=\\\"2\\\"][\\/featured-categories-posts]<\\/shortcode><shortcode class=\\\"bb-shortcode\\\">[all-galleries limit=\\\"8\\\"][\\/all-galleries]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null,\"banner_image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 06:28:55', '2022-06-25 06:28:55'),
(47, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[featured-posts][\\/featured-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 06:55:01', '2022-06-25 06:55:01'),
(48, 1, 'page', '{\"name\":\"Homepage\",\"model\":\"Botble\\\\Page\\\\Models\\\\Page\",\"description\":null,\"is_featured\":\"0\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[recent-posts title=\\\"Yangiliklar\\\"][\\/recent-posts]<\\/shortcode>\",\"gallery\":null,\"submit\":\"apply\",\"language\":\"uz_UZ\",\"status\":\"published\",\"template\":\"no-sidebar\",\"image\":null}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Homepage', 'primary', '2022-06-25 07:01:01', '2022-06-25 07:01:01'),
(49, 1, 'post', '{\"name\":\"The Top 2020 Handbag Trends to Know\",\"slug\":\"the-top-2020-handbag-trends-to-know\",\"slug_id\":\"23\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"description\":\"In vitae iste porro ut facilis. Qui quasi dolores quia assumenda repudiandae et voluptas. Pariatur maiores veritatis natus.\",\"is_featured\":\"1\",\"content\":\"<shortcode class=\\\"bb-shortcode\\\">[youtube-video]https:\\/\\/www.youtube.com\\/watch?v=SlPhMPnQ58k[\\/youtube-video]<\\/shortcode><p>WAISTCOAT-POCKET, and looked at it, busily painting them red. Alice thought she might find another key on it, and fortunately was just in time to hear the words:-- \'I speak severely to my boy, I beat him when he sneezes: He only does it to half-past one as long as it went, as if his heart would break. She pitied him deeply. \'What is it?\' he said, \'on and off, for days and days.\' \'But what am I to get in?\' she repeated, aloud. \'I must be collected at once and put back into the loveliest garden you ever see such a dear quiet thing,\' Alice went on, half to Alice. \'Nothing,\' said Alice. \'Off with her head!\' the Queen shrieked out. \'Behead that Dormouse! Turn that Dormouse out of it, and burning with curiosity, she ran out of the window, and some were birds,) \'I suppose they are the jurors.\' She said the Queen, the royal children; there were ten of them, and he went on, \'I must be a LITTLE larger, sir, if you cut your finger VERY deeply with a deep voice, \'are done with blacking, I.<\\/p><p class=\\\"text-center\\\"><img class=\\\"image_resized\\\" style=\\\"width:100%;\\\" src=\\\"http:\\/\\/botble.test\\/storage\\/news\\/3-540x360.jpg\\\" alt=\\\"image\\\"><\\/p><p>The door led right into a line along the passage into the darkness as hard as it was sneezing on the bank--the birds with draggled feathers, the animals with their heads downward! The Antipathies, I think--\' (she was obliged to have him with them,\' the Mock Turtle went on. \'We had the door as you go on? It\'s by far the most confusing thing I ever saw in my life!\' Just as she had put on his slate with one elbow against the roof bear?--Mind that loose slate--Oh, it\'s coming down! Heads below!\'.<\\/p><p class=\\\"text-center\\\"><img class=\\\"image_resized\\\" style=\\\"width:100%;\\\" src=\\\"http:\\/\\/botble.test\\/storage\\/news\\/7-540x360.jpg\\\" alt=\\\"image\\\"><\\/p><p>Alice, \'we learned French and music.\' \'And washing?\' said the youth, \'one would hardly suppose That your eye was as much use in talking to herself, rather sharply; \'I advise you to sit down without being invited,\' said the Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course twinkling begins with an anxious look at all comfortable, and it said in a soothing tone: \'don\'t be angry about it. And yet you incessantly stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of my own. I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, a little timidly, for she was appealed to by all three to settle the question, and they went up to the fifth bend, I think?\' he said do. Alice looked at the place of the house of the busy farm-yard--while the lowing of the table, but it just at present--at least I mean what I used to say.\' \'So he did, so he with his head!\' she said, by way of expecting nothing but the cook took the regular.<\\/p><p class=\\\"text-center\\\"><img class=\\\"image_resized\\\" style=\\\"width:100%;\\\" src=\\\"http:\\/\\/botble.test\\/storage\\/news\\/12-540x360.jpg\\\" alt=\\\"image\\\"><\\/p><p>Alice ventured to remark. \'Tut, tut, child!\' said the Gryphon, \'you first form into a large canvas bag, which tied up at the March Hare interrupted, yawning. \'I\'m getting tired of swimming about here, O Mouse!\' (Alice thought this must be off, and that he had never forgotten that, if you like,\' said the Caterpillar. Alice folded her hands, and was delighted to find that she was exactly three inches high). \'But I\'m not particular as to size,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' \'I don\'t even know what they\'re like.\' \'I believe so,\' Alice replied very solemnly. Alice was too dark to see it pop down a jar from one end to the other: the only difficulty was, that if you please! \\\"William the Conqueror, whose cause was favoured by the hedge!\' then silence, and then unrolled the parchment scroll, and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the Hatter, \'when the Queen in front.<\\/p>\",\"gallery\":null,\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"apply\",\"language\":\"uz_UZ\",\"publish_date\":null,\"publish_time\":null,\"status\":\"published\",\"categories\":[\"1\",\"7\"],\"image\":\"news\\/blog-01.jpg\",\"tag\":\"[{\\\"value\\\":\\\"General\\\"},{\\\"value\\\":\\\"Design\\\"},{\\\"value\\\":\\\"Fashion\\\"},{\\\"value\\\":\\\"Branding\\\"},{\\\"value\\\":\\\"Modern\\\"}]\",\"show_toc_in_content\":\"yes\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'The Top 2020 Handbag Trends to Know', 'primary', '2022-06-25 08:58:21', '2022-06-25 08:58:21'),
(50, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'The Top 2020 Handbag Trends to Know', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(51, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Top Search Engine Optimization Strategies!', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34');
INSERT INTO `audit_histories` (`id`, `user_id`, `module`, `request`, `action`, `user_agent`, `ip_address`, `reference_user`, `reference_id`, `reference_name`, `type`, `created_at`, `updated_at`) VALUES
(52, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'Which Company Would You Choose?', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(53, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 4, 'Used Car Dealer Sales Tricks Exposed', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(54, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 5, '20 Ways To Sell Your Product Faster', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(55, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 6, 'The Secrets Of Rich And Famous Writers', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(56, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 7, 'Imagine Losing 20 Pounds In 14 Days!', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(57, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 8, 'Are You Still Using That Slow, Old Typewriter?', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(58, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 9, 'A Skin Cream That’s Proven To Work', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(59, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\",\"10\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 10, '10 Reasons To Start Your Own, Profitable Website!', 'danger', '2022-06-25 09:06:34', '2022-06-25 09:06:34'),
(60, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 11, 'Simple Ways To Reduce Your Unwanted Wrinkles!', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(61, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 12, 'Apple iMac with Retina 5K display review', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(62, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 13, '10,000 Web Site Visitors In One Month:Guaranteed', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(63, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 14, 'Unlock The Secrets Of Selling High Ticket Items', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(64, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 15, '4 Expert Tips On How To Choose The Right Men’s Wallet', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(65, 1, 'post', '{\"_method\":\"DELETE\",\"ids\":[\"11\",\"12\",\"13\",\"14\",\"15\",\"16\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\PostTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 16, 'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag', 'danger', '2022-06-25 09:16:14', '2022-06-25 09:16:14'),
(66, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'Travel Tips', 'danger', '2022-06-25 09:16:40', '2022-06-25 09:16:40'),
(67, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 5, 'Travel Tips', 'danger', '2022-06-25 09:16:44', '2022-06-25 09:16:44'),
(68, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 7, 'Nature', 'danger', '2022-06-25 09:16:54', '2022-06-25 09:16:54'),
(69, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 6, 'Hotel', 'danger', '2022-06-25 09:16:59', '2022-06-25 09:16:59'),
(70, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 4, 'Healthy', 'danger', '2022-06-25 09:17:02', '2022-06-25 09:17:02'),
(71, 1, 'category', '{\"_method\":\"DELETE\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Lifestyle', 'danger', '2022-06-25 09:17:06', '2022-06-25 09:17:06'),
(72, 1, 'tag', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 5, 'Modern', 'danger', '2022-06-25 09:17:43', '2022-06-25 09:17:43'),
(73, 1, 'tag', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 4, 'Branding', 'danger', '2022-06-25 09:17:43', '2022-06-25 09:17:43'),
(74, 1, 'tag', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'Fashion', 'danger', '2022-06-25 09:17:43', '2022-06-25 09:17:43'),
(75, 1, 'tag', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Design', 'danger', '2022-06-25 09:17:43', '2022-06-25 09:17:43'),
(76, 1, 'tag', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Blog\\\\Tables\\\\TagTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'General', 'danger', '2022-06-25 09:17:43', '2022-06-25 09:17:43'),
(77, 1, 'block', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Block\\\\Tables\\\\BlockTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 5, 'Ms. Arlie Johnston Sr.', 'danger', '2022-06-25 09:18:06', '2022-06-25 09:18:06'),
(78, 1, 'block', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Block\\\\Tables\\\\BlockTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 4, 'Kamille Lemke', 'danger', '2022-06-25 09:18:06', '2022-06-25 09:18:06'),
(79, 1, 'block', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Block\\\\Tables\\\\BlockTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 3, 'Ryan Reinger', 'danger', '2022-06-25 09:18:06', '2022-06-25 09:18:06'),
(80, 1, 'block', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Block\\\\Tables\\\\BlockTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 2, 'Prof. Damian Orn IV', 'danger', '2022-06-25 09:18:06', '2022-06-25 09:18:06'),
(81, 1, 'block', '{\"_method\":\"DELETE\",\"ids\":[\"5\",\"4\",\"3\",\"2\",\"1\"],\"class\":\"Botble\\\\Block\\\\Tables\\\\BlockTable\"}', 'deleted', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Rodrigo Witting II', 'danger', '2022-06-25 09:18:06', '2022-06-25 09:18:06'),
(82, 1, 'category', '{\"name\":\"Yangiliklar\",\"slug\":\"design\",\"slug_id\":\"11\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Category\",\"parent_id\":\"0\",\"description\":null,\"is_default\":\"0\",\"icon\":null,\"order\":\"0\",\"is_featured\":\"0\",\"status\":\"published\",\"language\":\"uz_UZ\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\"}', 'updated', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 1, 'Yangiliklar', 'primary', '2022-06-25 09:18:48', '2022-06-25 09:18:48'),
(83, 1, 'post', '{\"name\":\"\\u041d\\u0430\\u043c\\u041c\\u049a\\u0418 \\u0440\\u0435\\u043a\\u0442\\u043e\\u0440\\u0438 \\u0431\\u043e\\u0448\\u0447\\u0438\\u043b\\u0438\\u0433\\u0438\\u0434\\u0430\\u0433\\u0438 \\u0434\\u0435\\u043b\\u0435\\u0433\\u0430\\u0446\\u0438\\u044f \\u049a\\u043e\\u0437\\u043e\\u043d \\u0444\\u0435\\u0434\\u0435\\u0440\\u0430\\u043b \\u0443\\u043d\\u0438\\u0432\\u0435\\u0440\\u0441\\u0438\\u0442\\u0435\\u0442\\u0438 \\u0444\\u0438\\u043b\\u0438\\u0430\\u043b\\u0438\\u0434\\u0430\",\"slug\":\"nammqi-rektori-bosciligidagi-delegaciya-qozon-federal-universiteti-filiali-nabereznie-celni-instituti-auditoriyalari-va-l\",\"slug_id\":\"0\",\"is_slug_editable\":\"1\",\"model\":\"Botble\\\\Blog\\\\Models\\\\Post\",\"description\":\"\\u04b2\\u0430\\u043c\\u043a\\u0430\\u0441\\u0431\\u043b\\u0430\\u0440 \\u0431\\u0438\\u043b\\u0430\\u043d \\u0431\\u0438\\u0440\\u0433\\u0430\\u043b\\u0438\\u043a\\u0434\\u0430 \\u043c\\u0430\\u0437\\u043a\\u0443\\u0440 \\u0438\\u043d\\u0441\\u0442\\u0438\\u0442\\u0443\\u0442\\u0434\\u0430 \\u049b\\u045e\\u0448\\u043c\\u0430 \\u0442\\u0430\\u044a\\u043b\\u0438\\u043c \\u0434\\u0430\\u0441\\u0442\\u0443\\u0440\\u0438 \\u0439\\u045e\\u043d\\u0430\\u043b\\u0438\\u0448\\u0438\\u0434\\u0430 \\u0442\\u0430\\u0448\\u043a\\u0438\\u043b \\u044d\\u0442\\u0438\\u043b\\u0433\\u0430\\u043d \\u0438\\u043b\\u043c\\u0438\\u0439 \\u043a\\u0435\\u043d\\u0433\\u0430\\u0448 \\u0444\\u0430\\u043e\\u043b\\u0438\\u044f\\u0442\\u0438\\u0434\\u0430 \\u04b3\\u0430\\u043c \\u0438\\u0448\\u0442\\u0438\\u0440\\u043e\\u043a \\u044d\\u0442\\u0438\\u043b\\u0434\\u0438.\",\"is_featured\":\"0\",\"content\":\"<p class=\\\"p1\\\">\\u0423\\u0448\\u0431\\u0443 \\u0438\\u043b\\u043c\\u0438\\u0439 \\u043a\\u0435\\u043d\\u0433\\u0430\\u0448\\u0434\\u0430 \\u044f\\u043a\\u0443\\u043d\\u0438\\u0439 \\u0434\\u0430\\u0432\\u043b\\u0430\\u0442 \\u0430\\u0442\\u0442\\u0435\\u0441\\u0442\\u0430\\u0446\\u0438\\u044f\\u043b\\u0430\\u0440\\u0438 \\u0431\\u0438\\u043b\\u0430\\u043d \\u0431\\u043e\\u0493\\u043b\\u0438\\u049b \\u0436\\u0430\\u0440\\u0430\\u0451\\u043d\\u043b\\u0430\\u0440, \\u049b\\u045e\\u0448\\u043c\\u0430 \\u0442\\u0430\\u044a\\u043b\\u0438\\u043c \\u0434\\u0430\\u0441\\u0442\\u0443\\u0440\\u0438 \\u0431\\u045e\\u0439\\u0438\\u0447\\u0430 \\u0434\\u0438\\u043f\\u043b\\u043e\\u043c\\u043b\\u0430\\u0440\\u043d\\u0438 \\u0442\\u043e\\u043f\\u0448\\u0438\\u0440\\u0438\\u0448\\u0433\\u0430 \\u0442\\u0430\\u0439\\u0451\\u0440\\u0433\\u0430\\u0440\\u043b\\u0438\\u043a \\u043c\\u0430\\u0441\\u0430\\u043b\\u0430\\u043b\\u0430\\u0440\\u0438 \\u043a\\u0435\\u043b\\u0433\\u0443\\u0441\\u0438\\u0434\\u0430\\u0433\\u0438 \\u0440\\u0435\\u0436\\u0430\\u043b\\u0430\\u0440 \\u043c\\u0443\\u04b3\\u043e\\u043a\\u0430\\u043c\\u0430 \\u049b\\u0438\\u043b\\u0438\\u043d\\u0434\\u0438.<\\/p>\",\"gallery\":\"[{\\\"img\\\":\\\"news\\/2022-06-25-192146.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/2022-06-25-192152.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/2022-06-25-192200.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/2022-06-25-192158.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/2022-06-25-192155.jpg\\\",\\\"description\\\":\\\"\\\"},{\\\"img\\\":\\\"news\\/2022-06-25-192149.jpg\\\",\\\"description\\\":\\\"\\\"}]\",\"seo_meta\":{\"seo_title\":null,\"seo_description\":null},\"submit\":\"save\",\"publish_date\":\"2022-06-25\",\"publish_time\":\"14:18\",\"update_time_to_current\":\"0\",\"status\":\"published\",\"categories\":[\"1\"],\"image\":\"news\\/2022-06-25-192133.jpg\",\"tag\":null,\"show_toc_in_content\":\"yes\"}', 'created', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36', '::1', 1, 17, 'НамМҚИ ректори бошчилигидаги делегация Қозон федерал университети филиалида', 'info', '2022-06-25 09:23:10', '2022-06-25 09:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `bb_comments`
--

CREATE TABLE `bb_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `like_count` int(11) NOT NULL DEFAULT '0',
  `reply_count` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_likes`
--

CREATE TABLE `bb_comment_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_ratings`
--

CREATE TABLE `bb_comment_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bb_comment_recommends`
--

CREATE TABLE `bb_comment_recommends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks_translations`
--

CREATE TABLE `blocks_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blocks_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 'Yangiliklar', 0, NULL, 'published', 1, 'Botble\\ACL\\Models\\User', NULL, 0, 0, 0, '2022-01-04 04:39:06', '2022-06-25 09:18:47');

-- --------------------------------------------------------

--
-- Table structure for table `categories_translations`
--

CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_translations`
--

INSERT INTO `categories_translations` (`lang_code`, `categories_id`, `name`, `description`) VALUES
('vi', 1, 'Phong cách sống', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `use_for` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `use_for_id` int(10) UNSIGNED NOT NULL,
  `field_item_id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(2, 'widget_total_users', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(3, 'widget_total_pages', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(4, 'widget_total_plugins', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(5, 'widget_analytics_general', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(6, 'widget_analytics_page', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(7, 'widget_analytics_browser', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(8, 'widget_posts_recent', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(9, 'widget_analytics_referrer', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(10, 'widget_audit_logs', '2022-05-26 03:56:30', '2022-05-26 03:56:30'),
(11, 'widget_request_errors', '2022-05-26 03:56:30', '2022-05-26 03:56:30');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favorite_posts`
--

CREATE TABLE `favorite_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` enum('favorite','bookmark') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_groups`
--

CREATE TABLE `field_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `field_items`
--

CREATE TABLE `field_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field_group_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instructions` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Perfect', 'Voluptatem ipsam aut optio ipsam molestiae. Facilis et sunt enim id sed consequatur itaque.', 1, 0, 'galleries/1.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(2, 'New Day', 'Enim enim odit facere dolor laboriosam ab et. Assumenda excepturi omnis omnis saepe possimus sit dolores. Unde alias voluptatem iusto dolore.', 1, 0, 'galleries/2.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(3, 'Happy Day', 'Et voluptas cum tenetur et rerum. Expedita libero dolorem et fugit fugiat. Esse vel voluptatem sapiente et.', 1, 0, 'galleries/3.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(4, 'Nature', 'Cumque molestiae est odio ut velit. Molestiae reprehenderit doloremque perspiciatis dolores. Eum voluptatibus impedit ut.', 1, 0, 'galleries/4.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(5, 'Morning', 'Numquam quia reprehenderit ut voluptatem ea adipisci quis explicabo. Et culpa nihil tempora tenetur. Rerum molestiae doloribus sint.', 1, 0, 'galleries/5.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, 'Photography', 'Nemo dicta natus minus culpa. Vero ducimus fugiat nisi alias. Sunt sapiente facilis expedita et laborum illum laborum.', 1, 0, 'galleries/6.jpg', 1, 'published', '2022-01-04 04:39:03', '2022-01-04 04:39:03');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_translations`
--

CREATE TABLE `galleries_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `galleries_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries_translations`
--

INSERT INTO `galleries_translations` (`lang_code`, `galleries_id`, `name`, `description`) VALUES
('vi', 1, 'Hoàn hảo', NULL),
('vi', 2, 'Ngày mới', NULL),
('vi', 3, 'Ngày hạnh phúc', NULL),
('vi', 4, 'Thiên nhiên', NULL),
('vi', 5, 'Buổi sáng', NULL),
('vi', 6, 'Nghệ thuật', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_meta`
--

CREATE TABLE `gallery_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gallery_meta`
--

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 1, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(2, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 2, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(3, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 3, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(4, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 4, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(5, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 5, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, '[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quam totam quas aut quam non corrupti quisquam. Rerum ullam nihil ullam. Et omnis rerum provident ducimus esse rerum illo.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Iusto fuga ut vel voluptas. Nobis hic delectus recusandae incidunt. Expedita et eum porro.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ab sed sunt non tenetur nemo autem aut porro. Similique eligendi mollitia quibusdam itaque accusamus quod dolor.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem tempora quo sit rerum quo omnis. Corporis qui et maxime placeat quis. Porro quis expedita modi nulla pariatur quis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Et voluptas sunt voluptatibus aut dolorem est voluptas rerum. Soluta in sunt voluptas sunt nulla quo. Aut alias placeat nihil qui quidem ex qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Rem quia illo explicabo aut illo consequuntur consectetur nemo. Cumque veritatis ut ad laudantium.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Aperiam qui et consequatur dolorem voluptatem aperiam. Nostrum sint eum laudantium neque. Velit ea nesciunt at voluptas.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Libero eveniet et et vero corporis qui. Nam laboriosam quia voluptatum autem.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Non eveniet quas sed explicabo ut in iure. Natus eligendi dolores eaque ad et quia. Est ea exercitationem sint inventore voluptas ullam.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Ducimus id perspiciatis fugit. Asperiores rem totam quia et. Labore voluptatem et autem commodi et nobis.\"}]', 6, 'Botble\\Gallery\\Models\\Gallery', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(10, NULL, 3, 'Botble\\Page\\Models\\Page', '2022-06-24 05:38:57', '2022-06-24 05:38:57'),
(11, NULL, 2, 'Botble\\Page\\Models\\Page', '2022-06-24 05:42:48', '2022-06-24 05:42:48'),
(17, NULL, 1, 'Botble\\Page\\Models\\Page', '2022-06-25 07:01:01', '2022-06-25 07:01:01'),
(19, '[{\"img\":\"news/2022-06-25-192146.jpg\",\"description\":\"\"},{\"img\":\"news/2022-06-25-192152.jpg\",\"description\":\"\"},{\"img\":\"news/2022-06-25-192200.jpg\",\"description\":\"\"},{\"img\":\"news/2022-06-25-192158.jpg\",\"description\":\"\"},{\"img\":\"news/2022-06-25-192155.jpg\",\"description\":\"\"},{\"img\":\"news/2022-06-25-192149.jpg\",\"description\":\"\"}]', 17, 'Botble\\Blog\\Models\\Post', '2022-06-25 09:23:10', '2022-06-25 09:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `ims`
--

CREATE TABLE `ims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ims`
--

INSERT INTO `ims` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Namangan muhandislik-qurilish instituti', 'published', '2022-05-26 04:33:28', '2022-05-26 04:33:28');

-- --------------------------------------------------------

--
-- Table structure for table `ims_translations`
--

CREATE TABLE `ims_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ims_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ims_translations`
--

INSERT INTO `ims_translations` (`lang_code`, `ims_id`, `name`) VALUES
('vi', 1, 'Namangan muhandislik-qurilish instituti');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 0, 0, 0),
(3, 'Oʻzbek', 'uz', 'uz_UZ', 'uz', 1, 0, 0),
(4, 'Русский', 'ru', 'ru_RU', 'ru', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '47865bdf59ccdfdbee94ca86bce8859f', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(2, 'en_US', '23bb922078395d1fcea2943f85e04c71', 1, 'Botble\\Menu\\Models\\Menu'),
(3, 'en_US', '9a6e3ed1f80a081ecf4686f808ece5ed', 2, 'Botble\\Menu\\Models\\Menu'),
(4, 'en_US', 'eb563b54486d97f6af72470e7c818105', 3, 'Botble\\Menu\\Models\\Menu'),
(5, 'en_US', 'd9c34b999230695a99bf18132ca5790a', 4, 'Botble\\Menu\\Models\\Menu'),
(6, 'en_US', '45a9ba228c77b4330d0fa764529a3864', 5, 'Botble\\Menu\\Models\\Menu'),
(7, 'uz_UZ', '23bb922078395d1fcea2943f85e04c71', 11, 'Botble\\Menu\\Models\\Menu'),
(9, 'uz_UZ', '4a03b1000b7826029481ed0fdebae70e', 3, 'Botble\\Menu\\Models\\MenuLocation');

-- --------------------------------------------------------

--
-- Table structure for table `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, '1', 1, 'image/jpeg', 42814, 'galleries/1.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(2, 0, '10', 1, 'image/jpeg', 95796, 'galleries/10.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(3, 0, '2', 1, 'image/jpeg', 43108, 'galleries/2.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(4, 0, '3', 1, 'image/jpeg', 67060, 'galleries/3.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(5, 0, '4', 1, 'image/jpeg', 60609, 'galleries/4.jpg', '[]', '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(6, 0, '5', 1, 'image/jpeg', 70264, 'galleries/5.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(7, 0, '6', 1, 'image/jpeg', 40607, 'galleries/6.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(8, 0, '7', 1, 'image/jpeg', 41491, 'galleries/7.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(9, 0, '8', 1, 'image/jpeg', 58063, 'galleries/8.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(10, 0, '9', 1, 'image/jpeg', 69288, 'galleries/9.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(11, 0, '1', 2, 'image/jpeg', 37471, 'news/1.jpg', '[]', '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(12, 0, '10', 2, 'image/jpeg', 40607, 'news/10.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(13, 0, '11', 2, 'image/jpeg', 82629, 'news/11.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(14, 0, '12', 2, 'image/jpeg', 119904, 'news/12.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(15, 0, '13', 2, 'image/jpeg', 89543, 'news/13.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(16, 0, '14', 2, 'image/jpeg', 51573, 'news/14.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(17, 0, '15', 2, 'image/jpeg', 41164, 'news/15.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(18, 0, '16', 2, 'image/jpeg', 80696, 'news/16.jpg', '[]', '2022-01-04 04:39:04', '2022-01-04 04:39:04', NULL),
(19, 0, '2', 2, 'image/jpeg', 95796, 'news/2.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(20, 0, '3', 2, 'image/jpeg', 81399, 'news/3.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(21, 0, '4', 2, 'image/jpeg', 68906, 'news/4.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(22, 0, '5', 2, 'image/jpeg', 63094, 'news/5.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(23, 0, '6', 2, 'image/jpeg', 89733, 'news/6.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(24, 0, '7', 2, 'image/jpeg', 43998, 'news/7.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(25, 0, '8', 2, 'image/jpeg', 68906, 'news/8.jpg', '[]', '2022-01-04 04:39:05', '2022-01-04 04:39:05', NULL),
(26, 0, '9', 2, 'image/jpeg', 58063, 'news/9.jpg', '[]', '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(27, 0, '1', 3, 'image/jpeg', 11752, 'members/1.jpg', '[]', '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(28, 0, '10', 3, 'image/jpeg', 27814, 'members/10.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(29, 0, '2', 3, 'image/jpeg', 19005, 'members/2.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(30, 0, '3', 3, 'image/jpeg', 20400, 'members/3.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(31, 0, '4', 3, 'image/jpeg', 26819, 'members/4.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(32, 0, '5', 3, 'image/jpeg', 14367, 'members/5.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(33, 0, '6', 3, 'image/jpeg', 12367, 'members/6.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(34, 0, '7', 3, 'image/jpeg', 20652, 'members/7.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(35, 0, '8', 3, 'image/jpeg', 21164, 'members/8.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(36, 0, '9', 3, 'image/jpeg', 6084, 'members/9.jpg', '[]', '2022-01-04 04:39:07', '2022-01-04 04:39:07', NULL),
(37, 0, 'favicon', 4, 'image/png', 3807, 'general/favicon.png', '[]', '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL),
(38, 0, 'logo', 4, 'image/png', 138446, 'general/logo.png', '[]', '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL),
(39, 1, 'blog_01', 2, 'image/jpeg', 9710, 'news/blog-01.jpg', '[]', '2022-06-25 08:58:12', '2022-06-25 08:58:12', NULL),
(40, 1, '2022-06-25 19.21.33', 2, 'image/jpeg', 161175, 'news/2022-06-25-192133.jpg', '[]', '2022-06-25 09:22:19', '2022-06-25 09:22:19', NULL),
(41, 1, '2022-06-25 19.21.46', 2, 'image/jpeg', 160079, 'news/2022-06-25-192146.jpg', '[]', '2022-06-25 09:22:19', '2022-06-25 09:22:19', NULL),
(42, 1, '2022-06-25 19.21.49', 2, 'image/jpeg', 117864, 'news/2022-06-25-192149.jpg', '[]', '2022-06-25 09:22:20', '2022-06-25 09:22:20', NULL),
(43, 1, '2022-06-25 19.21.52', 2, 'image/jpeg', 196702, 'news/2022-06-25-192152.jpg', '[]', '2022-06-25 09:22:21', '2022-06-25 09:22:21', NULL),
(44, 1, '2022-06-25 19.21.55', 2, 'image/jpeg', 166702, 'news/2022-06-25-192155.jpg', '[]', '2022-06-25 09:22:21', '2022-06-25 09:22:21', NULL),
(45, 1, '2022-06-25 19.21.58', 2, 'image/jpeg', 150698, 'news/2022-06-25-192158.jpg', '[]', '2022-06-25 09:22:22', '2022-06-25 09:22:22', NULL),
(46, 1, '2022-06-25 19.22.00', 2, 'image/jpeg', 151731, 'news/2022-06-25-192200.jpg', '[]', '2022-06-25 09:22:23', '2022-06-25 09:22:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 0, 'galleries', 'galleries', 0, '2022-01-04 04:39:02', '2022-01-04 04:39:02', NULL),
(2, 0, 'news', 'news', 0, '2022-01-04 04:39:03', '2022-01-04 04:39:03', NULL),
(3, 0, 'members', 'members', 0, '2022-01-04 04:39:06', '2022-01-04 04:39:06', NULL),
(4, 0, 'general', 'general', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `favorite_posts` json DEFAULT NULL,
  `bookmark_posts` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`, `favorite_posts`, `bookmark_posts`) VALUES
(1, 'John', 'Smith', 'Five, \'and I\'ll tell him--it.', NULL, 'john.smith@botble.com', '$2y$10$fB0ju6oVlJE.mN1CYyAVCOwOqbRZeyHPH.Mg3P5hFMtORusO6QvyW', 27, '2003-01-22', '510.401.1326', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(2, 'Newton', 'Rice', 'I\'m sure I can\'t understand.', NULL, 'ekirlin@hotmail.com', '$2y$10$93vlfhNXR1DZC21Hihy6MuKXNiK43MFXNeiMWd5M3v7j1eU1H/eEW', 28, '2015-10-27', '570-490-6308', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(3, 'Thelma', 'Lueilwitz', 'Hatter, with an important.', NULL, 'reed68@krajcik.com', '$2y$10$R3XF5zwEdr7Gv6DBtACDOuJuOGIT3d8GbOAyKD7mi.m7v7WrN2nAO', 29, '1977-09-24', '781.637.2615', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(4, 'Caroline', 'Kreiger', 'I learn music.\' \'Ah! that.', NULL, 'stacy39@hotmail.com', '$2y$10$WFXkE3kJe.YyFoqmBPgalupkRKlC0XO8Exfc0M5w9KpJ.U3lGDFU6', 30, '1988-03-05', '413-385-7484', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(5, 'Ron', 'Feil', 'ME\' beautifully printed on.', NULL, 'jean.lockman@hotmail.com', '$2y$10$djXGkiGjTDZl2spnfSNX.e7NE1qM90jn07NkDx9BZ3xTREmMSuyqK', 31, '2020-12-12', '(301) 552-4746', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(6, 'Kareem', 'Stiedemann', 'YOUR adventures.\' \'I could.', NULL, 'hermann.winfield@yahoo.com', '$2y$10$BA98Ol9INaty3apkKtzVv.olFPOKizkxh4u0cpeYeiSrg8a7FNnsS', 32, '1986-01-07', '586-379-1514', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(7, 'Christophe', 'Boyle', 'I\'d only been the right size.', NULL, 'sheldon.watsica@johnson.com', '$2y$10$EdZWEyBvLOAHq5RAn4z72.4Q0M.VsBZVXXjvGPkCQwpveINNrC1wy', 33, '1984-05-28', '1-346-826-6471', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(8, 'Dameon', 'Sawayn', 'However, it was growing, and.', NULL, 'rick.labadie@schuppe.com', '$2y$10$fXT3CD0USGzepS2s.S8CCO6qYAx21LQqPKyQQDBriXmWtIBcHmSwa', 34, '1979-01-24', '+1 (774) 680-8100', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(9, 'Vernice', 'Leannon', 'She said this she looked.', NULL, 'oklein@yahoo.com', '$2y$10$pwXUY5b8BtuQScetbgEs4.mbrwLR6sq5uIY6DzHu1AbGLDMzV/mni', 35, '1984-03-01', '(475) 853-3415', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL),
(10, 'Alexandria', 'Sawayn', 'What would become of me?.', NULL, 'myrtle45@gutkowski.com', '$2y$10$Bbpur5X07o4.IjnDrqdwcu3sSJnMUqk3LrnIp44HLZAikiCnlfpJm', 36, '1993-12-20', '239.518.5424', '2022-01-04 11:39:08', NULL, NULL, '2022-01-04 04:39:08', '2022-01-04 04:39:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 'Favorite websites', 'favorite-websites', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 'My links', 'my-links', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 'Featured Categories', 'featured-categories', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 'Social', 'social', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 'Menu chính', 'menu-chinh', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 'Trang web yêu thích', 'trang-web-yeu-thich', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 'Liên kết', 'lien-ket', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 'Danh mục nổi bật', 'danh-muc-noi-bat', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 'Mạng xã hội', 'mang-xa-hoi', 'published', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(11, 'Asosiy menyu', 'asosiy-menyu', 'published', '2022-05-28 01:52:30', '2022-05-28 01:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 6, 'main-menu', '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 11, 'main-menu', '2022-05-28 01:53:16', '2022-05-28 01:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, NULL, NULL, '/', NULL, 0, 'Home', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(2, 1, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Purchase', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(3, 1, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(4, 1, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(5, 1, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(6, 2, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(7, 2, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(8, 2, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(9, 2, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(10, 2, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(11, 2, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(12, 3, 0, NULL, NULL, '/', NULL, 0, 'Homepage', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(13, 3, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Contact', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(16, 3, 0, NULL, NULL, '/galleries', NULL, 0, 'Galleries', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(22, 5, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(23, 5, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(24, 5, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(25, 5, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(26, 6, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(27, 6, 0, NULL, NULL, 'https://botble.com/go/download-cms', NULL, 0, 'Mua ngay', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(28, 6, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 0, 'Tin tức', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(29, 6, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(30, 6, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(31, 7, 0, NULL, NULL, 'http://speckyboy.com', NULL, 0, 'Speckyboy Magazine', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(32, 7, 0, NULL, NULL, 'http://tympanus.com', NULL, 0, 'Tympanus-Codrops', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(33, 7, 0, NULL, NULL, '#', NULL, 0, 'Kipalog Blog', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(34, 7, 0, NULL, NULL, 'http://www.sitepoint.com', NULL, 0, 'SitePoint', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(35, 7, 0, NULL, NULL, 'http://www.creativebloq.com', NULL, 0, 'CreativeBloq', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(36, 7, 0, NULL, NULL, 'http://techtalk.vn', NULL, 0, 'Techtalk', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(37, 8, 0, NULL, NULL, '/', NULL, 0, 'Trang chủ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(38, 8, 0, 3, 'Botble\\Page\\Models\\Page', '/contact', NULL, 0, 'Liên hệ', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(41, 8, 0, NULL, NULL, '/galleries', NULL, 0, 'Thư viện ảnh', NULL, '_self', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(47, 10, 0, NULL, NULL, 'https://facebook.com', 'fa fa-facebook', 0, 'Facebook', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(48, 10, 0, NULL, NULL, 'https://twitter.com', 'fa fa-twitter', 0, 'Twitter', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(49, 10, 0, NULL, NULL, 'https://github.com', 'fa fa-github', 0, 'Github', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(50, 10, 0, NULL, NULL, 'https://linkedin.com', 'fa fa-linkedin', 0, 'Linkedin', NULL, '_blank', 0, '2022-01-04 04:39:09', '2022-01-04 04:39:09'),
(59, 11, 0, 0, NULL, '/', 'fa fa-home', 0, ' ', NULL, '_self', 0, '2022-06-24 05:36:03', '2022-06-24 05:36:26'),
(60, 11, 0, 2, 'Botble\\Page\\Models\\Page', '/blog', NULL, 1, 'Yangiliklar', NULL, '_self', 0, '2022-06-24 05:39:26', '2022-06-24 05:39:26');

-- --------------------------------------------------------

--
-- Table structure for table `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_boxes`
--

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`) VALUES
(1, 'banner_image', '[null]', 1, 'Botble\\Page\\Models\\Page', '2022-06-25 06:20:41', '2022-06-25 06:20:41'),
(3, 'show_toc_in_content', '[\"yes\"]', 17, 'Botble\\Blog\\Models\\Post', '2022-06-25 09:23:10', '2022-06-25 09:23:10');

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
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2015_06_18_033822_create_blog_table', 1),
(6, '2015_06_29_025744_create_audit_history', 1),
(7, '2016_05_28_112028_create_system_request_logs_table', 1),
(8, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(9, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(10, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(11, '2016_06_01_000004_create_oauth_clients_table', 1),
(12, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(13, '2016_06_10_230148_create_acl_tables', 1),
(14, '2016_06_14_230857_create_menus_table', 1),
(15, '2016_06_17_091537_create_contacts_table', 1),
(16, '2016_06_28_221418_create_pages_table', 1),
(17, '2016_10_03_032336_create_languages_table', 1),
(18, '2016_10_05_074239_create_setting_table', 1),
(19, '2016_10_07_193005_create_translations_table', 1),
(20, '2016_10_13_150201_create_galleries_table', 1),
(21, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(22, '2016_12_16_084601_create_widgets_table', 1),
(23, '2017_02_13_034601_create_blocks_table', 1),
(24, '2017_03_27_150646_re_create_custom_field_tables', 1),
(25, '2017_05_09_070343_create_media_tables', 1),
(26, '2017_10_04_140938_create_member_table', 1),
(27, '2017_11_03_070450_create_slug_table', 1),
(28, '2019_01_05_053554_create_jobs_table', 1),
(29, '2019_08_19_000000_create_failed_jobs_table', 1),
(30, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(31, '2021_02_16_092633_remove_default_value_for_author_type', 1),
(32, '2021_10_25_021023_fix-priority-load-for-language-advanced', 1),
(33, '2021_12_03_030600_create_blog_translations', 1),
(34, '2021_12_03_075608_create_page_translations', 1),
(35, '2021_12_03_081327_create_blocks_translations', 1),
(36, '2021_12_03_082953_create_gallery_translations', 1),
(37, '2021_12_26_024330_update_theme_options_social_links', 1),
(38, '2022_04_19_113923_add_index_to_table_posts', 2),
(39, '2022_04_20_100851_add_index_to_media_table', 2),
(40, '2022_04_20_101046_add_index_to_menu_table', 2),
(41, '2022_05_25_093654_ims_create_ims_table', 3),
(42, '2021_07_08_140130_comment_create_comment_table', 4),
(43, '2021_07_26_132731_create_comment_ratings_table', 4),
(44, '2017_10_24_154832_create_newsletter_table', 5),
(45, '2021_08_25_122708_post_collection_create_post_collection_table', 6),
(46, '2021_07_14_043820_add_publised_at_table_posts', 7),
(47, '2021_10_16_043705_pro_posts_create_favorite_posts_table', 8),
(48, '2021_10_16_105007_add_bookmark_posts_column_to_members_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', '<shortcode class=\"bb-shortcode\">[recent-posts title=\"Yangiliklar\"][/recent-posts]</shortcode>', 1, NULL, 'no-sidebar', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-06-25 07:01:01'),
(2, 'Yangiliklar', '<shortcode class=\"bb-shortcode\">[blog-posts paginate=\"12\"][/blog-posts]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-06-24 05:42:48'),
(3, 'Aloqa', '<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Hotline: 18006268</p><p>Email: contact@botble.com</p><shortcode class=\"bb-shortcode\">[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</shortcode><p>For the fastest reply, please use the contact form below.</p><shortcode class=\"bb-shortcode\">[contact-form][/contact-form]</shortcode>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-06-24 05:38:57'),
(4, 'Cookie Policy', '<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>', 1, NULL, 'default', 0, NULL, 'published', '2022-01-04 04:39:02', '2022-01-04 04:39:02');

-- --------------------------------------------------------

--
-- Table structure for table `pages_translations`
--

CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_translations`
--

INSERT INTO `pages_translations` (`lang_code`, `pages_id`, `name`, `description`, `content`) VALUES
('vi', 1, 'Trang chủ', NULL, '<div>[featured-posts][/featured-posts]</div><div>[recent-posts title=\"Có gì mới?\"][/recent-posts]</div><div>[featured-categories-posts title=\"Tốt nhất cho bạn\" category_id=\"2\"][/featured-categories-posts]</div><div>[all-galleries limit=\"8\"][/all-galleries]</div>'),
('vi', 2, 'Tin tức', NULL, '---'),
('vi', 3, 'Liên hệ', NULL, '<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Đường dây nóng: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><p>[contact-form][/contact-form]</p>'),
('vi', 4, 'Cookie Policy', NULL, '<h3>EU Cookie Consent</h3><p>Để sử dụng trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`, `published_at`) VALUES
(17, 'НамМҚИ ректори бошчилигидаги делегация Қозон федерал университети филиалида', 'Ҳамкасблар билан биргаликда мазкур институтда қўшма таълим дастури йўналишида ташкил этилган илмий кенгаш фаолиятида ҳам иштирок этилди.', '<p class=\"p1\">Ушбу илмий кенгашда якуний давлат аттестациялари билан боғлиқ жараёнлар, қўшма таълим дастури бўйича дипломларни топширишга тайёргарлик масалалари келгусидаги режалар муҳокама қилинди.</p>', 'published', 1, 'Botble\\ACL\\Models\\User', 0, 'news/2022-06-25-192133.jpg', 1, NULL, '2022-06-25 09:23:10', '2022-06-25 09:23:23', '2022-06-25 09:18:00');

-- --------------------------------------------------------

--
-- Table structure for table `posts_translations`
--

CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_translations`
--

INSERT INTO `posts_translations` (`lang_code`, `posts_id`, `name`, `description`, `content`) VALUES
('en_US', 17, 'НамМҚИ ректори бошчилигидаги делегация Қозон федерал университети филиалида', 'Ҳамкасблар билан биргаликда мазкур институтда қўшма таълим дастури йўналишида ташкил этилган илмий кенгаш фаолиятида ҳам иштирок этилди.', '<p class=\"p1\">Ушбу илмий кенгашда якуний давлат аттестациялари билан боғлиқ жараёнлар, қўшма таълим дастури бўйича дипломларни топширишга тайёргарлик масалалари келгусидаги режалар муҳокама қилинди.</p>'),
('ru_RU', 17, 'НамМҚИ ректори бошчилигидаги делегация Қозон федерал университети филиалида', 'Ҳамкасблар билан биргаликда мазкур институтда қўшма таълим дастури йўналишида ташкил этилган илмий кенгаш фаолиятида ҳам иштирок этилди.', '<p class=\"p1\">Ушбу илмий кенгашда якуний давлат аттестациялари билан боғлиқ жараёнлар, қўшма таълим дастури бўйича дипломларни топширишга тайёргарлик масалалари келгусидаги режалар муҳокама қилинди.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`) VALUES
(33, 1, 17);

-- --------------------------------------------------------

--
-- Table structure for table `post_collections`
--

CREATE TABLE `post_collections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_collections_posts`
--

CREATE TABLE `post_collections_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_collection_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `request_logs`
--

CREATE TABLE `request_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_logs`
--

INSERT INTO `request_logs` (`id`, `status_code`, `url`, `count`, `user_id`, `referrer`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://nammqi.loc/themes/nammqi/plugins/bootstrap/css/bootstrap.min.css', 5, NULL, NULL, '2022-05-26 05:18:53', '2022-05-26 05:21:58'),
(2, 404, 'http://nammqi.loc/themes/nammqi/plugins/ionicons/css/ionicons.min.css', 8, NULL, NULL, '2022-05-26 05:18:53', '2022-05-26 05:27:39'),
(3, 404, 'http://nammqi.loc/themes/nammqi/plugins/font-awesome/css/font-awesome.min.css', 5, NULL, NULL, '2022-05-26 05:18:53', '2022-05-26 05:21:58'),
(4, 404, 'http://nammqi.loc/themes/nammqi/js/ripple.js?v=1.0', 8, NULL, NULL, '2022-05-26 05:18:54', '2022-05-26 05:28:23'),
(5, 404, 'http://nammqi.loc/themes/nammqi/css/bootstrap/css/bootstrap.min.css', 4, NULL, NULL, '2022-05-26 05:26:50', '2022-05-26 05:27:39'),
(6, 404, 'http://nammqi.loc/themes/nammqi/css/font-awesome/css/font-awesome.min.css', 3, NULL, NULL, '2022-05-26 05:26:50', '2022-05-26 05:27:39'),
(7, 404, 'http://nammqi.loc/themes/nammqi/flaticon/lightcase.css', 6, NULL, NULL, '2022-05-26 05:26:50', '2022-05-26 05:32:23'),
(8, 404, 'http://nammqi.loc/themes/nammqi/flaticon/flaticon.css', 6, NULL, NULL, '2022-05-26 05:26:50', '2022-05-26 05:32:23'),
(9, 404, 'http://nammqi.loc/themes/nammqi/css/swiper.min.css', 6, NULL, NULL, '2022-05-26 05:26:50', '2022-05-26 05:32:23'),
(10, 404, 'http://nammqi.loc/themes/nammqi/css/jquery.nstSlider.css', 6, NULL, NULL, '2022-05-26 05:26:51', '2022-05-26 05:32:24'),
(11, 404, 'http://nammqi.loc/themes/nammqi/css/responsive.css', 6, NULL, NULL, '2022-05-26 05:26:51', '2022-05-26 05:32:24'),
(12, 404, 'http://nammqi.loc/themes/nammqi/css/quick-view.css', 6, NULL, NULL, '2022-05-26 05:26:51', '2022-05-26 05:32:23'),
(13, 404, 'http://nammqi.loc/themes/nammqi/css/flexslider.css', 6, NULL, NULL, '2022-05-26 05:26:51', '2022-05-26 05:32:24'),
(14, 404, 'http://nammqi.loc/themes/nammqi/css/bootstrap.min.css', 3, NULL, NULL, '2022-05-26 05:28:22', '2022-05-26 05:32:23'),
(15, 404, 'http://nammqi.loc/themes/nammqi/css/font-awesome.min.css', 3, NULL, NULL, '2022-05-26 05:28:22', '2022-05-26 05:32:23'),
(16, 404, 'http://nammqi.loc/themes/nammqi/assets/flaticon/lightcase.css', 28, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 06:02:28'),
(17, 404, 'http://nammqi.loc/themes/nammqi/assets/css/style.css?v=1.0', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(18, 404, 'http://nammqi.loc/themes/nammqi/assets/css/bootstrap.min.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(19, 404, 'http://nammqi.loc/themes/nammqi/assets/css/font-awesome.min.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(20, 404, 'http://nammqi.loc/themes/nammqi/assets/flaticon/flaticon.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(21, 404, 'http://nammqi.loc/themes/nammqi/assets/css/swiper.min.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(22, 404, 'http://nammqi.loc/themes/nammqi/assets/css/flexslider.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:50'),
(23, 404, 'http://nammqi.loc/themes/nammqi/assets/css/jquery.nstSlider.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:50'),
(24, 404, 'http://nammqi.loc/themes/nammqi/assets/css/quick-view.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:49'),
(25, 404, 'http://nammqi.loc/themes/nammqi/assets/css/responsive.css', 9, NULL, NULL, '2022-05-26 05:35:31', '2022-05-26 05:39:50'),
(26, 404, 'http://nammqi.loc/themes/nammqi/assets/css/bootstrap.min.css.map', 81, NULL, NULL, '2022-05-26 05:41:51', '2022-06-25 09:25:05'),
(27, 404, 'http://nammqi.loc/themes/nammqi/images/background/page-header-bg.jpg', 9, NULL, NULL, '2022-05-26 05:41:51', '2022-05-26 05:53:50'),
(28, 404, 'http://nammqi.loc/images/logo.png', 13, NULL, NULL, '2022-05-26 05:52:26', '2022-05-26 06:02:28'),
(29, 404, 'http://nammqi.loc/images/product/menu_cart_01.jpg', 13, NULL, NULL, '2022-05-26 05:52:26', '2022-05-26 06:02:28'),
(30, 404, 'http://nammqi.loc/images/logo_02.png', 13, NULL, NULL, '2022-05-26 05:52:26', '2022-05-26 06:02:28'),
(31, 404, 'http://nammqi.loc/images/product/menu_cart_03.jpg', 13, NULL, NULL, '2022-05-26 05:52:26', '2022-05-26 06:02:28'),
(32, 404, 'http://nammqi.loc/images/product/menu_cart_02.jpg', 13, NULL, NULL, '2022-05-26 05:52:26', '2022-05-26 06:02:28'),
(33, 404, 'http://nammqi.loc/themes/nammqi/images/banner/banner_2.01.jpg', 3, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:51:38'),
(34, 404, 'http://nammqi.loc/themes/nammqi/assets/js/waypoints.min.js', 6, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:53:22'),
(35, 404, 'http://nammqi.loc/themes/nammqi/images/banner/banner_2.03.jpg', 3, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:51:38'),
(36, 404, 'http://nammqi.loc/themes/nammqi/images/banner/banner_2.02.jpg', 3, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:51:38'),
(37, 404, 'http://nammqi.loc/themes/nammqi/images/background/achievements-bg.jpg', 3, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:51:38'),
(38, 404, 'http://nammqi.loc/themes/nammqi/images/background/testimonial-bg.jpg', 3, NULL, NULL, '2022-05-28 01:48:36', '2022-05-28 01:51:38'),
(39, 404, 'http://nammqi.loc/uz/images/logo_02.png', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(40, 404, 'http://nammqi.loc/uz/images/logo.png', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(41, 404, 'http://nammqi.loc/uz/images/blog/footer_post_02.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(42, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_01.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(43, 404, 'http://nammqi.loc/uz/images/blog/footer_post_03.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(44, 404, 'http://nammqi.loc/uz/images/blog/footer_post_01.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(45, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_04.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(46, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_03.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(47, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_02.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(48, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_07.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(49, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_05.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(50, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_06.jpg', 5, NULL, NULL, '2022-05-28 01:54:33', '2022-06-09 07:22:45'),
(51, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_09.jpg', 5, NULL, NULL, '2022-05-28 01:54:34', '2022-06-09 07:22:45'),
(52, 404, 'http://nammqi.loc/uz/images/sidebar/gallery_08.jpg', 5, NULL, NULL, '2022-05-28 01:54:34', '2022-06-09 07:22:45'),
(53, 404, 'http://nammqi.loc/index.html', 5, '[1]', NULL, '2022-05-28 01:54:45', '2022-06-25 07:57:36'),
(54, 404, 'http://nammqi.loc/themes/ripple/js/vendor/lazyload.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(55, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(56, 404, 'http://nammqi.loc/themes/ripple/js/vendor/modernizr-3.5.0.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(57, 404, 'http://nammqi.loc/themes/ripple/js/vendor/popper.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(58, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.slicknav.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(59, 404, 'http://nammqi.loc/themes/ripple/js/vendor/slick.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(60, 404, 'http://nammqi.loc/themes/ripple/js/vendor/wow.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(61, 404, 'http://nammqi.loc/themes/ripple/js/vendor/animated.headline.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(62, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.vticker-min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(63, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.scrollUp.min.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(64, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.sticky.js', 12, NULL, NULL, '2022-06-25 06:18:58', '2022-06-25 06:28:57'),
(65, 404, 'http://nammqi.loc/themes/ripple/js/vendor/perfect-scrollbar.js', 12, NULL, NULL, '2022-06-25 06:18:59', '2022-06-25 06:28:57'),
(66, 404, 'http://nammqi.loc/themes/ripple/js/vendor/waypoints.js', 12, NULL, NULL, '2022-06-25 06:18:59', '2022-06-25 06:28:58'),
(67, 404, 'http://nammqi.loc/themes/ripple/js/vendor/counterup.js', 12, NULL, NULL, '2022-06-25 06:18:59', '2022-06-25 06:28:58'),
(68, 404, 'http://nammqi.loc/themes/ripple/js/vendor/jquery.theia.sticky.js', 12, NULL, NULL, '2022-06-25 06:18:59', '2022-06-25 06:28:58'),
(69, 404, 'http://nammqi.loc/themes/ripple/js/script.js?v=5.26.3', 12, NULL, NULL, '2022-06-25 06:18:59', '2022-06-25 06:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `revisions`
--

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`) VALUES
(1, 'Botble\\Page\\Models\\Page', 2, 1, 'name', 'Blog', 'Yangiliklar', '2022-06-24 05:38:42', '2022-06-24 05:38:42'),
(2, 'Botble\\Page\\Models\\Page', 3, 1, 'name', 'Contact', 'Aloqa', '2022-06-24 05:38:57', '2022-06-24 05:38:57'),
(3, 'Botble\\Blog\\Models\\Post', 1, 1, 'image', 'news/1.jpg', 'news/blog-01.jpg', '2022-06-25 08:58:21', '2022-06-25 08:58:21'),
(4, 'Botble\\Blog\\Models\\Post', 17, 1, 'published_at', NULL, '2022-06-25 14:18:00', '2022-06-25 09:23:10', '2022-06-25 09:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'activated_plugins', '[\"language\",\"language-advanced\",\"analytics\",\"audit-log\",\"backup\",\"block\",\"blog\",\"captcha\",\"contact\",\"cookie-consent\",\"custom-field\",\"gallery\",\"member\",\"request-log\",\"social-login\",\"translation\",\"ims\",\"comment\",\"newsletter\",\"post-collection\",\"pro-posts\",\"post-scheduler\",\"rss-feed\",\"toc\"]', NULL, NULL),
(2, 'show_admin_bar', '1', NULL, NULL),
(3, 'theme', 'nammqi', NULL, NULL),
(45, 'language_hide_default', '1', NULL, NULL),
(46, 'language_switcher_display', 'list', NULL, NULL),
(47, 'language_display', 'flag', NULL, NULL),
(48, 'language_hide_languages', '[]', NULL, NULL),
(51, 'theme-ripple-site_title', 'Just another Botble CMS site', NULL, NULL),
(52, 'theme-ripple-copyright', '©2022 Botble Technologies. All right reserved.', NULL, NULL),
(53, 'theme-ripple-favicon', 'general/favicon.png', NULL, NULL),
(54, 'theme-ripple-website', 'https://botble.com', NULL, NULL),
(55, 'theme-ripple-contact_email', 'support@botble.com', NULL, NULL),
(56, 'theme-ripple-site_description', 'With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY', NULL, NULL),
(57, 'theme-ripple-phone', '+(123) 345-6789', NULL, NULL),
(58, 'theme-ripple-address', '214 West Arnold St. New York, NY 10002', NULL, NULL),
(59, 'theme-ripple-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies ', NULL, NULL),
(60, 'theme-ripple-cookie_consent_learn_more_url', '/cookie-policy', NULL, NULL),
(61, 'theme-ripple-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(62, 'theme-ripple-homepage_id', '1', NULL, NULL),
(63, 'theme-ripple-blog_page_id', '2', NULL, NULL),
(64, 'theme-ripple-logo', 'general/logo.png', NULL, NULL),
(65, 'theme-ripple-vi-site_title', 'Một trang web sử dụng Botble CMS', NULL, NULL),
(66, 'theme-ripple-vi-copyright', '©2022 Botble Technologies. Tất cả quyền đã được bảo hộ.', NULL, NULL),
(67, 'theme-ripple-vi-favicon', 'general/favicon.png', NULL, NULL),
(68, 'theme-ripple-vi-website', 'https://botble.com', NULL, NULL),
(69, 'theme-ripple-vi-contact_email', 'support@botble.com', NULL, NULL),
(70, 'theme-ripple-vi-site_description', 'Với kinh nghiệm dồi dào, chúng tôi đảm bảo hoàn thành mọi dự án rất nhanh và đúng thời gian với chất lượng cao sử dụng Botble CMS của chúng tôi https://1.envato.market/LWRBY', NULL, NULL),
(71, 'theme-ripple-vi-phone', '+(123) 345-6789', NULL, NULL),
(72, 'theme-ripple-vi-address', '214 West Arnold St. New York, NY 10002', NULL, NULL),
(73, 'theme-ripple-vi-cookie_consent_message', 'Trải nghiệm của bạn trên trang web này sẽ được cải thiện bằng cách cho phép cookie ', NULL, NULL),
(74, 'theme-ripple-vi-cookie_consent_learn_more_url', 'cookie-policy', NULL, NULL),
(75, 'theme-ripple-vi-cookie_consent_learn_more_text', 'Cookie Policy', NULL, NULL),
(76, 'theme-ripple-vi-logo', 'general/logo.png', NULL, NULL),
(77, 'theme-ripple-vi-homepage_id', '1', NULL, NULL),
(78, 'theme-ripple-vi-blog_page_id', '2', NULL, NULL),
(79, 'theme-ripple-social_links', '[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fa fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fa fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fa fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]', NULL, NULL),
(80, 'media_random_hash', 'd966229537900a8a7c0e7aedcf311699', NULL, NULL),
(81, 'membership_authorization_at', '2022-06-23 13:10:23', NULL, NULL),
(82, 'language_auto_detect_user_language', '0', NULL, NULL),
(83, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(84, 'admin_email', '[]', NULL, NULL),
(85, 'time_zone', 'UTC', NULL, NULL),
(86, 'locale_direction', 'ltr', NULL, NULL),
(87, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(88, 'admin_logo', '', NULL, NULL),
(89, 'admin_favicon', '', NULL, NULL),
(90, 'login_screen_backgrounds', '[]', NULL, NULL),
(91, 'admin_title', 'Your App', NULL, NULL),
(92, 'rich_editor', 'ckeditor', NULL, NULL),
(93, 'enable_change_admin_theme', '0', NULL, NULL),
(94, 'enable_cache', '0', NULL, NULL),
(95, 'cache_time', '10', NULL, NULL),
(96, 'cache_admin_menu_enable', '0', NULL, NULL),
(97, 'optimize_page_speed_enable', '1', NULL, NULL),
(98, 'google_site_verification', '', NULL, NULL),
(99, 'cache_time_site_map', '3600', NULL, NULL),
(100, 'redirect_404_to_homepage', '0', NULL, NULL),
(101, 'verify_account_email', '0', NULL, NULL),
(102, 'member_enable_recaptcha_in_register_page', '0', NULL, NULL),
(103, 'google_analytics', '', NULL, NULL),
(104, 'analytics_view_id', '', NULL, NULL),
(105, 'analytics_service_account_credentials', '', NULL, NULL),
(106, 'newsletter_mailchimp_api_key', '', NULL, NULL),
(107, 'newsletter_mailchimp_list_id', '', NULL, NULL),
(108, 'newsletter_sendgrid_api_key', '', NULL, NULL),
(109, 'newsletter_sendgrid_list_id', '', NULL, NULL),
(110, 'enable_captcha', '0', NULL, NULL),
(111, 'captcha_type', 'v2', NULL, NULL),
(112, 'captcha_hide_badge', '0', NULL, NULL),
(113, 'captcha_site_key', '', NULL, NULL),
(114, 'captcha_secret', '', NULL, NULL),
(115, 'locale', 'uz', NULL, NULL),
(116, 'default_admin_theme', 'default', NULL, NULL),
(117, 'admin_locale_direction', 'ltr', NULL, NULL),
(118, 'theme-nammqi-en_US-site_title', 'Namangan muhandislik-qurilish instituti', NULL, NULL),
(119, 'theme-nammqi-en_US-show_site_name', '0', NULL, NULL),
(120, 'theme-nammqi-en_US-seo_title', '', NULL, NULL),
(121, 'theme-nammqi-en_US-seo_description', '', NULL, NULL),
(122, 'theme-nammqi-en_US-seo_og_image', '', NULL, NULL),
(123, 'theme-nammqi-en_US-copyright', '© 2022 Namangan muhandislik-qurilish instituti. All right reserved.', NULL, NULL),
(124, 'theme-nammqi-en_US-primary_font', 'PT Sans', NULL, NULL),
(125, 'theme-nammqi-en_US-primary_color', '#FF2B4A', NULL, NULL),
(126, 'theme-nammqi-en_US-favicon', '', NULL, NULL),
(127, 'theme-nammqi-en_US-logo', '', NULL, NULL),
(128, 'theme-nammqi-en_US-font_heading', 'PT Sans', NULL, NULL),
(129, 'theme-nammqi-en_US-font_body', 'PT Sans', NULL, NULL),
(130, 'theme-nammqi-en_US-color_primary', '#87C6E3', NULL, NULL),
(131, 'theme-nammqi-en_US-color_secondary', '#455265', NULL, NULL),
(132, 'theme-nammqi-en_US-color_success', '#76E1C6', NULL, NULL),
(133, 'theme-nammqi-en_US-color_danger', '#F0A9A9', NULL, NULL),
(134, 'theme-nammqi-en_US-color_warning', '#E6BF7E', NULL, NULL),
(135, 'theme-nammqi-en_US-color_info', '#58C1C8', NULL, NULL),
(136, 'theme-nammqi-en_US-color_light', '#F3F3F3', NULL, NULL),
(137, 'theme-nammqi-en_US-color_dark', '#111111', NULL, NULL),
(138, 'theme-nammqi-en_US-color_link', '#222831', NULL, NULL),
(139, 'theme-nammqi-en_US-color_white', '#FFFFFF', NULL, NULL),
(140, 'theme-nammqi-en_US-blog_page_id', NULL, NULL, NULL),
(141, 'theme-nammqi-en_US-number_of_posts_in_a_category', '12', NULL, NULL),
(142, 'theme-nammqi-en_US-number_of_posts_in_a_tag', '12', NULL, NULL),
(143, 'theme-nammqi-en_US-homepage_id', '1', NULL, NULL),
(144, 'theme-nammqi-en_US-cookie_consent_enable', 'yes', NULL, NULL),
(145, 'theme-nammqi-en_US-cookie_consent_style', 'full-width', NULL, NULL),
(146, 'theme-nammqi-en_US-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL),
(147, 'theme-nammqi-en_US-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(148, 'theme-nammqi-en_US-cookie_consent_learn_more_url', '', NULL, NULL),
(149, 'theme-nammqi-en_US-cookie_consent_learn_more_text', '', NULL, NULL),
(150, 'theme-nammqi-en_US-cookie_consent_background_color', '#000000', NULL, NULL),
(151, 'theme-nammqi-en_US-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(152, 'theme-nammqi-en_US-cookie_consent_max_width', '1170', NULL, NULL),
(153, 'theme-nammqi-site_title', '', NULL, NULL),
(154, 'theme-nammqi-show_site_name', '0', NULL, NULL),
(155, 'theme-nammqi-seo_title', '', NULL, NULL),
(156, 'theme-nammqi-seo_description', '', NULL, NULL),
(157, 'theme-nammqi-seo_og_image', '', NULL, NULL),
(158, 'theme-nammqi-copyright', '© 2022 Your Company. All right reserved.', NULL, NULL),
(159, 'theme-nammqi-primary_font', 'Open Sans', NULL, NULL),
(160, 'theme-nammqi-primary_color', '#FF2B4A', NULL, NULL),
(161, 'theme-nammqi-favicon', '', NULL, NULL),
(162, 'theme-nammqi-logo', '', NULL, NULL),
(163, 'theme-nammqi-font_heading', 'Open Sans', NULL, NULL),
(164, 'theme-nammqi-font_body', 'Open Sans', NULL, NULL),
(165, 'theme-nammqi-color_primary', '#87C6E3', NULL, NULL),
(166, 'theme-nammqi-color_secondary', '#455265', NULL, NULL),
(167, 'theme-nammqi-color_success', '#76E1C6', NULL, NULL),
(168, 'theme-nammqi-color_danger', '#F0A9A9', NULL, NULL),
(169, 'theme-nammqi-color_warning', '#E6BF7E', NULL, NULL),
(170, 'theme-nammqi-color_info', '#58C1C8', NULL, NULL),
(171, 'theme-nammqi-color_light', '#F3F3F3', NULL, NULL),
(172, 'theme-nammqi-color_dark', '#111111', NULL, NULL),
(173, 'theme-nammqi-color_link', '#222831', NULL, NULL),
(174, 'theme-nammqi-color_white', '#FFFFFF', NULL, NULL),
(175, 'theme-nammqi-blog_page_id', NULL, NULL, NULL),
(176, 'theme-nammqi-number_of_posts_in_a_category', '12', NULL, NULL),
(177, 'theme-nammqi-number_of_posts_in_a_tag', '12', NULL, NULL),
(178, 'theme-nammqi-homepage_id', '1', NULL, NULL),
(179, 'theme-nammqi-cookie_consent_enable', 'yes', NULL, NULL),
(180, 'theme-nammqi-cookie_consent_style', 'full-width', NULL, NULL),
(181, 'theme-nammqi-cookie_consent_message', 'Your experience on this site will be improved by allowing cookies.', NULL, NULL),
(182, 'theme-nammqi-cookie_consent_button_text', 'Allow cookies', NULL, NULL),
(183, 'theme-nammqi-cookie_consent_learn_more_url', '', NULL, NULL),
(184, 'theme-nammqi-cookie_consent_learn_more_text', '', NULL, NULL),
(185, 'theme-nammqi-cookie_consent_background_color', '#000000', NULL, NULL),
(186, 'theme-nammqi-cookie_consent_text_color', '#FFFFFF', NULL, NULL),
(187, 'theme-nammqi-cookie_consent_max_width', '1170', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slugs`
--

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`) VALUES
(1, 'homepage', 1, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(2, 'blog', 2, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(3, 'contact', 3, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(4, 'cookie-policy', 4, 'Botble\\Page\\Models\\Page', '', '2022-01-04 04:39:02', '2022-01-04 04:39:02'),
(5, 'perfect', 1, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(6, 'new-day', 2, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(7, 'happy-day', 3, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(8, 'nature', 4, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(9, 'morning', 5, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(10, 'photography', 6, 'Botble\\Gallery\\Models\\Gallery', 'galleries', '2022-01-04 04:39:03', '2022-01-04 04:39:03'),
(11, 'design', 1, 'Botble\\Blog\\Models\\Category', '', '2022-01-04 04:39:06', '2022-01-04 04:39:06'),
(39, 'nammqi-rektori-bosciligidagi-delegaciya-qozon-federal-universiteti-filiali-nabereznie-celni-instituti-auditoriyalari-va-l', 17, 'Botble\\Blog\\Models\\Post', '', '2022-06-25 09:23:10', '2022-06-25 09:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags_translations`
--

CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', 'These credentials do not match our records.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(2, 0, 'en', 'auth', 'password', 'The provided password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(3, 0, 'en', 'auth', 'throttle', 'Too many login attempts. Please try again in :seconds seconds.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(4, 0, 'en', 'pagination', 'previous', '&laquo; Previous', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(5, 0, 'en', 'pagination', 'next', 'Next &raquo;', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(6, 0, 'en', 'passwords', 'reset', 'Your password has been reset!', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(7, 0, 'en', 'passwords', 'sent', 'We have emailed your password reset link!', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(8, 0, 'en', 'passwords', 'throttled', 'Please wait before retrying.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(9, 0, 'en', 'passwords', 'token', 'This password reset token is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(10, 0, 'en', 'passwords', 'user', 'We can\'t find a user with that email address.', '2022-04-20 19:52:50', '2022-04-20 19:53:10'),
(11, 0, 'en', 'validation', 'accepted', 'The :attribute must be accepted.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(12, 0, 'en', 'validation', 'accepted_if', 'The :attribute must be accepted when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(13, 0, 'en', 'validation', 'active_url', 'The :attribute is not a valid URL.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(14, 0, 'en', 'validation', 'after', 'The :attribute must be a date after :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(15, 0, 'en', 'validation', 'after_or_equal', 'The :attribute must be a date after or equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(16, 0, 'en', 'validation', 'alpha', 'The :attribute must only contain letters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(17, 0, 'en', 'validation', 'alpha_dash', 'The :attribute must only contain letters, numbers, dashes and underscores.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(18, 0, 'en', 'validation', 'alpha_num', 'The :attribute must only contain letters and numbers.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(19, 0, 'en', 'validation', 'array', 'The :attribute must be an array.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(20, 0, 'en', 'validation', 'before', 'The :attribute must be a date before :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(21, 0, 'en', 'validation', 'before_or_equal', 'The :attribute must be a date before or equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(22, 0, 'en', 'validation', 'between.numeric', 'The :attribute must be between :min and :max.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(23, 0, 'en', 'validation', 'between.file', 'The :attribute must be between :min and :max kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(24, 0, 'en', 'validation', 'between.string', 'The :attribute must be between :min and :max characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(25, 0, 'en', 'validation', 'between.array', 'The :attribute must have between :min and :max items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(26, 0, 'en', 'validation', 'boolean', 'The :attribute field must be true or false.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(27, 0, 'en', 'validation', 'confirmed', 'The :attribute confirmation does not match.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(28, 0, 'en', 'validation', 'current_password', 'The password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(29, 0, 'en', 'validation', 'date', 'The :attribute is not a valid date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(30, 0, 'en', 'validation', 'date_equals', 'The :attribute must be a date equal to :date.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(31, 0, 'en', 'validation', 'date_format', 'The :attribute does not match the format :format.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(32, 0, 'en', 'validation', 'declined', 'The :attribute must be declined.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(33, 0, 'en', 'validation', 'declined_if', 'The :attribute must be declined when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(34, 0, 'en', 'validation', 'different', 'The :attribute and :other must be different.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(35, 0, 'en', 'validation', 'digits', 'The :attribute must be :digits digits.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(36, 0, 'en', 'validation', 'digits_between', 'The :attribute must be between :min and :max digits.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(37, 0, 'en', 'validation', 'dimensions', 'The :attribute has invalid image dimensions.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(38, 0, 'en', 'validation', 'distinct', 'The :attribute field has a duplicate value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(39, 0, 'en', 'validation', 'email', 'The :attribute must be a valid email address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(40, 0, 'en', 'validation', 'ends_with', 'The :attribute must end with one of the following: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(41, 0, 'en', 'validation', 'enum', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(42, 0, 'en', 'validation', 'exists', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(43, 0, 'en', 'validation', 'file', 'The :attribute must be a file.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(44, 0, 'en', 'validation', 'filled', 'The :attribute field must have a value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(45, 0, 'en', 'validation', 'gt.numeric', 'The :attribute must be greater than :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(46, 0, 'en', 'validation', 'gt.file', 'The :attribute must be greater than :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(47, 0, 'en', 'validation', 'gt.string', 'The :attribute must be greater than :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(48, 0, 'en', 'validation', 'gt.array', 'The :attribute must have more than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(49, 0, 'en', 'validation', 'gte.numeric', 'The :attribute must be greater than or equal to :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(50, 0, 'en', 'validation', 'gte.file', 'The :attribute must be greater than or equal to :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(51, 0, 'en', 'validation', 'gte.string', 'The :attribute must be greater than or equal to :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(52, 0, 'en', 'validation', 'gte.array', 'The :attribute must have :value items or more.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(53, 0, 'en', 'validation', 'image', 'The :attribute must be an image.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(54, 0, 'en', 'validation', 'in', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(55, 0, 'en', 'validation', 'in_array', 'The :attribute field does not exist in :other.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(56, 0, 'en', 'validation', 'integer', 'The :attribute must be an integer.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(57, 0, 'en', 'validation', 'ip', 'The :attribute must be a valid IP address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(58, 0, 'en', 'validation', 'ipv4', 'The :attribute must be a valid IPv4 address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(59, 0, 'en', 'validation', 'ipv6', 'The :attribute must be a valid IPv6 address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(60, 0, 'en', 'validation', 'json', 'The :attribute must be a valid JSON string.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(61, 0, 'en', 'validation', 'lt.numeric', 'The :attribute must be less than :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(62, 0, 'en', 'validation', 'lt.file', 'The :attribute must be less than :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(63, 0, 'en', 'validation', 'lt.string', 'The :attribute must be less than :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(64, 0, 'en', 'validation', 'lt.array', 'The :attribute must have less than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(65, 0, 'en', 'validation', 'lte.numeric', 'The :attribute must be less than or equal to :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(66, 0, 'en', 'validation', 'lte.file', 'The :attribute must be less than or equal to :value kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(67, 0, 'en', 'validation', 'lte.string', 'The :attribute must be less than or equal to :value characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(68, 0, 'en', 'validation', 'lte.array', 'The :attribute must not have more than :value items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(69, 0, 'en', 'validation', 'mac_address', 'The :attribute must be a valid MAC address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(70, 0, 'en', 'validation', 'max.numeric', 'The :attribute must not be greater than :max.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(71, 0, 'en', 'validation', 'max.file', 'The :attribute must not be greater than :max kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(72, 0, 'en', 'validation', 'max.string', 'The :attribute must not be greater than :max characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(73, 0, 'en', 'validation', 'max.array', 'The :attribute must not have more than :max items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(74, 0, 'en', 'validation', 'mimes', 'The :attribute must be a file of type: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(75, 0, 'en', 'validation', 'mimetypes', 'The :attribute must be a file of type: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(76, 0, 'en', 'validation', 'min.numeric', 'The :attribute must be at least :min.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(77, 0, 'en', 'validation', 'min.file', 'The :attribute must be at least :min kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(78, 0, 'en', 'validation', 'min.string', 'The :attribute must be at least :min characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(79, 0, 'en', 'validation', 'min.array', 'The :attribute must have at least :min items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(80, 0, 'en', 'validation', 'multiple_of', 'The :attribute must be a multiple of :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(81, 0, 'en', 'validation', 'not_in', 'The selected :attribute is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(82, 0, 'en', 'validation', 'not_regex', 'The :attribute format is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(83, 0, 'en', 'validation', 'numeric', 'The :attribute must be a number.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(84, 0, 'en', 'validation', 'password', 'The password is incorrect.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(85, 0, 'en', 'validation', 'present', 'The :attribute field must be present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(86, 0, 'en', 'validation', 'prohibited', 'The :attribute field is prohibited.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(87, 0, 'en', 'validation', 'prohibited_if', 'The :attribute field is prohibited when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(88, 0, 'en', 'validation', 'prohibited_unless', 'The :attribute field is prohibited unless :other is in :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(89, 0, 'en', 'validation', 'prohibits', 'The :attribute field prohibits :other from being present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(90, 0, 'en', 'validation', 'regex', 'The :attribute format is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(91, 0, 'en', 'validation', 'required', 'The :attribute field is required.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(92, 0, 'en', 'validation', 'required_array_keys', 'The :attribute field must contain entries for: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(93, 0, 'en', 'validation', 'required_if', 'The :attribute field is required when :other is :value.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(94, 0, 'en', 'validation', 'required_unless', 'The :attribute field is required unless :other is in :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(95, 0, 'en', 'validation', 'required_with', 'The :attribute field is required when :values is present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(96, 0, 'en', 'validation', 'required_with_all', 'The :attribute field is required when :values are present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(97, 0, 'en', 'validation', 'required_without', 'The :attribute field is required when :values is not present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(98, 0, 'en', 'validation', 'required_without_all', 'The :attribute field is required when none of :values are present.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(99, 0, 'en', 'validation', 'same', 'The :attribute and :other must match.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(100, 0, 'en', 'validation', 'size.numeric', 'The :attribute must be :size.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(101, 0, 'en', 'validation', 'size.file', 'The :attribute must be :size kilobytes.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(102, 0, 'en', 'validation', 'size.string', 'The :attribute must be :size characters.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(103, 0, 'en', 'validation', 'size.array', 'The :attribute must contain :size items.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(104, 0, 'en', 'validation', 'starts_with', 'The :attribute must start with one of the following: :values.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(105, 0, 'en', 'validation', 'string', 'The :attribute must be a string.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(106, 0, 'en', 'validation', 'timezone', 'The :attribute must be a valid timezone.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(107, 0, 'en', 'validation', 'unique', 'The :attribute has already been taken.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(108, 0, 'en', 'validation', 'uploaded', 'The :attribute failed to upload.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(109, 0, 'en', 'validation', 'url', 'The :attribute must be a valid URL.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(110, 0, 'en', 'validation', 'uuid', 'The :attribute must be a valid UUID.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(111, 0, 'en', 'validation', 'custom.attribute-name.rule-name', 'custom-message', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(112, 0, 'en', 'core/acl/auth', 'login.username', 'Email/Username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(113, 0, 'en', 'core/acl/auth', 'login.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(114, 0, 'en', 'core/acl/auth', 'login.password', 'Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(115, 0, 'en', 'core/acl/auth', 'login.title', 'User Login', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(116, 0, 'en', 'core/acl/auth', 'login.remember', 'Remember me?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(117, 0, 'en', 'core/acl/auth', 'login.login', 'Sign in', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(118, 0, 'en', 'core/acl/auth', 'login.placeholder.username', 'Please enter your username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(119, 0, 'en', 'core/acl/auth', 'login.placeholder.email', 'Please enter your email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(120, 0, 'en', 'core/acl/auth', 'login.success', 'Login successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(121, 0, 'en', 'core/acl/auth', 'login.fail', 'Wrong username or password.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(122, 0, 'en', 'core/acl/auth', 'login.not_active', 'Your account has not been activated yet!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(123, 0, 'en', 'core/acl/auth', 'login.banned', 'This account is banned.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(124, 0, 'en', 'core/acl/auth', 'login.logout_success', 'Logout successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(125, 0, 'en', 'core/acl/auth', 'login.dont_have_account', 'You don\'t have account on this system, please contact administrator for more information!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(126, 0, 'en', 'core/acl/auth', 'forgot_password.title', 'Forgot Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(127, 0, 'en', 'core/acl/auth', 'forgot_password.message', '<p>Have you forgotten your password?</p><p>Please enter your email account. System will send a email with active link to reset your password.</p>', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(128, 0, 'en', 'core/acl/auth', 'forgot_password.submit', 'Submit', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(129, 0, 'en', 'core/acl/auth', 'reset.new_password', 'New password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(130, 0, 'en', 'core/acl/auth', 'reset.password_confirmation', 'Confirm new password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(131, 0, 'en', 'core/acl/auth', 'reset.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(132, 0, 'en', 'core/acl/auth', 'reset.title', 'Reset your password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(133, 0, 'en', 'core/acl/auth', 'reset.update', 'Update', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(134, 0, 'en', 'core/acl/auth', 'reset.wrong_token', 'This link is invalid or expired. Please try using reset form again.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(135, 0, 'en', 'core/acl/auth', 'reset.user_not_found', 'This username is not exist.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(136, 0, 'en', 'core/acl/auth', 'reset.success', 'Reset password successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(137, 0, 'en', 'core/acl/auth', 'reset.fail', 'Token is invalid, the reset password link has been expired!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(138, 0, 'en', 'core/acl/auth', 'reset.reset.title', 'Email reset password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(139, 0, 'en', 'core/acl/auth', 'reset.send.success', 'A email was sent to your email account. Please check and complete this action.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(140, 0, 'en', 'core/acl/auth', 'reset.send.fail', 'Can not send email in this time. Please try again later.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(141, 0, 'en', 'core/acl/auth', 'reset.new-password', 'New password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(142, 0, 'en', 'core/acl/auth', 'email.reminder.title', 'Email reset password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(143, 0, 'en', 'core/acl/auth', 'password_confirmation', 'Password confirm', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(144, 0, 'en', 'core/acl/auth', 'failed', 'Failed', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(145, 0, 'en', 'core/acl/auth', 'throttle', 'Throttle', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(146, 0, 'en', 'core/acl/auth', 'not_member', 'Not a member yet?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(147, 0, 'en', 'core/acl/auth', 'register_now', 'Register now', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(148, 0, 'en', 'core/acl/auth', 'lost_your_password', 'Lost your password?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(149, 0, 'en', 'core/acl/auth', 'login_title', 'Admin', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(150, 0, 'en', 'core/acl/auth', 'login_via_social', 'Login with social networks', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(151, 0, 'en', 'core/acl/auth', 'back_to_login', 'Back to login page', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(152, 0, 'en', 'core/acl/auth', 'sign_in_below', 'Sign In Below', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(153, 0, 'en', 'core/acl/auth', 'languages', 'Languages', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(154, 0, 'en', 'core/acl/auth', 'reset_password', 'Reset Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(155, 0, 'en', 'core/acl/auth', 'settings.email.title', 'ACL', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(156, 0, 'en', 'core/acl/auth', 'settings.email.description', 'ACL email configuration', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(157, 0, 'en', 'core/acl/permissions', 'notices.role_in_use', 'Cannot delete this role, it is still in use!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(158, 0, 'en', 'core/acl/permissions', 'notices.role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(159, 0, 'en', 'core/acl/permissions', 'notices.role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(160, 0, 'en', 'core/acl/permissions', 'notices.delete_global_role', 'You are not allowed to delete global roles!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(161, 0, 'en', 'core/acl/permissions', 'notices.delete_success', 'The selected role was deleted successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(162, 0, 'en', 'core/acl/permissions', 'notices.modified_success', 'The selected role was modified successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(163, 0, 'en', 'core/acl/permissions', 'notices.create_success', 'The new role was successfully created', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(164, 0, 'en', 'core/acl/permissions', 'notices.duplicated_success', 'The selected role was duplicated successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(165, 0, 'en', 'core/acl/permissions', 'notices.no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(166, 0, 'en', 'core/acl/permissions', 'notices.not_found', 'Role not found', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(167, 0, 'en', 'core/acl/permissions', 'name', 'Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(168, 0, 'en', 'core/acl/permissions', 'current_role', 'Current Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(169, 0, 'en', 'core/acl/permissions', 'no_role_assigned', 'No role assigned', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(170, 0, 'en', 'core/acl/permissions', 'role_assigned', 'Assigned Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(171, 0, 'en', 'core/acl/permissions', 'create_role', 'Create New Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(172, 0, 'en', 'core/acl/permissions', 'role_name', 'Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(173, 0, 'en', 'core/acl/permissions', 'role_description', 'Description', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(174, 0, 'en', 'core/acl/permissions', 'permission_flags', 'Permission Flags', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(175, 0, 'en', 'core/acl/permissions', 'cancel', 'Cancel', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(176, 0, 'en', 'core/acl/permissions', 'reset', 'Reset', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(177, 0, 'en', 'core/acl/permissions', 'save', 'Save', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(178, 0, 'en', 'core/acl/permissions', 'global_role_msg', 'This is a global role and cannot be modified.  You can use the Duplicate button to make a copy of this role that you can then modify.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(179, 0, 'en', 'core/acl/permissions', 'details', 'Details', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(180, 0, 'en', 'core/acl/permissions', 'duplicate', 'Duplicate', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(181, 0, 'en', 'core/acl/permissions', 'all', 'All Permissions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(182, 0, 'en', 'core/acl/permissions', 'list_role', 'List Roles', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(183, 0, 'en', 'core/acl/permissions', 'created_on', 'Created On', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(184, 0, 'en', 'core/acl/permissions', 'created_by', 'Created By', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(185, 0, 'en', 'core/acl/permissions', 'actions', 'Actions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(186, 0, 'en', 'core/acl/permissions', 'role_in_use', 'Cannot delete this role, it is still in use!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(187, 0, 'en', 'core/acl/permissions', 'role_delete_belong_user', 'You are not able to delete this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(188, 0, 'en', 'core/acl/permissions', 'delete_global_role', 'Can not delete global role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(189, 0, 'en', 'core/acl/permissions', 'delete_success', 'Delete role successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(190, 0, 'en', 'core/acl/permissions', 'no_select', 'Please select at least one role to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(191, 0, 'en', 'core/acl/permissions', 'not_found', 'No role found!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(192, 0, 'en', 'core/acl/permissions', 'role_edit_belong_user', 'You are not able to edit this role; it belongs to someone else!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(193, 0, 'en', 'core/acl/permissions', 'modified_success', 'Modified successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(194, 0, 'en', 'core/acl/permissions', 'create_success', 'Create successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(195, 0, 'en', 'core/acl/permissions', 'duplicated_success', 'Duplicated successfully', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(196, 0, 'en', 'core/acl/permissions', 'options', 'Options', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(197, 0, 'en', 'core/acl/permissions', 'access_denied_message', 'You are not allowed to do this action', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(198, 0, 'en', 'core/acl/permissions', 'roles', 'Roles', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(199, 0, 'en', 'core/acl/permissions', 'role_permission', 'Roles and Permissions', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(200, 0, 'en', 'core/acl/permissions', 'user_management', 'User Management', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(201, 0, 'en', 'core/acl/permissions', 'super_user_management', 'Super User Management', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(202, 0, 'en', 'core/acl/permissions', 'action_unauthorized', 'This action is unauthorized.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(203, 0, 'en', 'core/acl/reminders', 'password', 'Passwords must be at least six characters and match the confirmation.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(204, 0, 'en', 'core/acl/reminders', 'user', 'We can\'t find a user with that e-mail address.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(205, 0, 'en', 'core/acl/reminders', 'token', 'This password reset token is invalid.', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(206, 0, 'en', 'core/acl/reminders', 'sent', 'Password reminder sent!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(207, 0, 'en', 'core/acl/reminders', 'reset', 'Password has been reset!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(208, 0, 'en', 'core/acl/users', 'delete_user_logged_in', 'Can\'t delete this user. This user is logged on!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(209, 0, 'en', 'core/acl/users', 'no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(210, 0, 'en', 'core/acl/users', 'lock_user_logged_in', 'Can\'t lock this user. This user is logged on!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(211, 0, 'en', 'core/acl/users', 'update_success', 'Update status successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(212, 0, 'en', 'core/acl/users', 'save_setting_failed', 'Something went wrong when save your setting', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(213, 0, 'en', 'core/acl/users', 'not_found', 'User not found', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(214, 0, 'en', 'core/acl/users', 'email_exist', 'That email address already belongs to an existing account', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(215, 0, 'en', 'core/acl/users', 'username_exist', 'That username address already belongs to an existing account', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(216, 0, 'en', 'core/acl/users', 'update_profile_success', 'Your profile changes were successfully saved', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(217, 0, 'en', 'core/acl/users', 'password_update_success', 'Password successfully changed', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(218, 0, 'en', 'core/acl/users', 'current_password_not_valid', 'Current password is not valid', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(219, 0, 'en', 'core/acl/users', 'user_exist_in', 'User is already a member', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(220, 0, 'en', 'core/acl/users', 'email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(221, 0, 'en', 'core/acl/users', 'role', 'Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(222, 0, 'en', 'core/acl/users', 'username', 'Username', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(223, 0, 'en', 'core/acl/users', 'last_name', 'Last Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(224, 0, 'en', 'core/acl/users', 'first_name', 'First Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(225, 0, 'en', 'core/acl/users', 'message', 'Message', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(226, 0, 'en', 'core/acl/users', 'cancel_btn', 'Cancel', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(227, 0, 'en', 'core/acl/users', 'change_password', 'Change password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(228, 0, 'en', 'core/acl/users', 'current_password', 'Current password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(229, 0, 'en', 'core/acl/users', 'new_password', 'New Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(230, 0, 'en', 'core/acl/users', 'confirm_new_password', 'Confirm New Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(231, 0, 'en', 'core/acl/users', 'password', 'Password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(232, 0, 'en', 'core/acl/users', 'save', 'Save', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(233, 0, 'en', 'core/acl/users', 'cannot_delete', 'User could not be deleted', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(234, 0, 'en', 'core/acl/users', 'deleted', 'User deleted', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(235, 0, 'en', 'core/acl/users', 'last_login', 'Last Login', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(236, 0, 'en', 'core/acl/users', 'error_update_profile_image', 'Error when update profile image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(237, 0, 'en', 'core/acl/users', 'email_reminder_template', '<h3>Hello :name</h3><p>The system has received a request to restore the password for your account, to complete this task please click the link below.</p><p><a href=\":link\">Reset password now</a></p><p>If not you ask recover password, please ignore this email.</p><p>This email is valid for 60 minutes after receiving the email.</p>', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(238, 0, 'en', 'core/acl/users', 'change_profile_image', 'Change Profile Image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(239, 0, 'en', 'core/acl/users', 'new_image', 'New Image', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(240, 0, 'en', 'core/acl/users', 'loading', 'Loading', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(241, 0, 'en', 'core/acl/users', 'close', 'Close', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(242, 0, 'en', 'core/acl/users', 'update', 'Update', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(243, 0, 'en', 'core/acl/users', 'read_image_failed', 'Failed to read the image file', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(244, 0, 'en', 'core/acl/users', 'users', 'Users', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(245, 0, 'en', 'core/acl/users', 'update_avatar_success', 'Update profile image successfully!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(246, 0, 'en', 'core/acl/users', 'info.title', 'User profile', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(247, 0, 'en', 'core/acl/users', 'info.first_name', 'First Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(248, 0, 'en', 'core/acl/users', 'info.last_name', 'Last Name', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(249, 0, 'en', 'core/acl/users', 'info.email', 'Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(250, 0, 'en', 'core/acl/users', 'info.second_email', 'Secondary Email', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(251, 0, 'en', 'core/acl/users', 'info.address', 'Address', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(252, 0, 'en', 'core/acl/users', 'info.second_address', 'Secondary Address', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(253, 0, 'en', 'core/acl/users', 'info.birth_day', 'Date of birth', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(254, 0, 'en', 'core/acl/users', 'info.job', 'Job Position', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(255, 0, 'en', 'core/acl/users', 'info.mobile_number', 'Mobile Number', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(256, 0, 'en', 'core/acl/users', 'info.second_mobile_number', 'Secondary Phone', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(257, 0, 'en', 'core/acl/users', 'info.interes', 'Interests', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(258, 0, 'en', 'core/acl/users', 'info.about', 'About', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(259, 0, 'en', 'core/acl/users', 'gender.title', 'Gender', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(260, 0, 'en', 'core/acl/users', 'gender.male', 'Male', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(261, 0, 'en', 'core/acl/users', 'gender.female', 'Female', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(262, 0, 'en', 'core/acl/users', 'total_users', 'Total users', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(263, 0, 'en', 'core/acl/users', 'statuses.activated', 'Activated', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(264, 0, 'en', 'core/acl/users', 'statuses.deactivated', 'Deactivated', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(265, 0, 'en', 'core/acl/users', 'make_super', 'Make super', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(266, 0, 'en', 'core/acl/users', 'remove_super', 'Remove super', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(267, 0, 'en', 'core/acl/users', 'is_super', 'Is super?', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(268, 0, 'en', 'core/acl/users', 'email_placeholder', 'Ex: example@gmail.com', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(269, 0, 'en', 'core/acl/users', 'password_confirmation', 'Re-type password', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(270, 0, 'en', 'core/acl/users', 'select_role', 'Select role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(271, 0, 'en', 'core/acl/users', 'create_new_user', 'Create a new user', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(272, 0, 'en', 'core/acl/users', 'cannot_delete_super_user', 'Permission denied. Cannot delete a super user!', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(273, 0, 'en', 'core/acl/users', 'assigned_role', 'Assigned Role', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(274, 0, 'en', 'core/acl/users', 'no_role_assigned', 'No role assigned', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(275, 0, 'en', 'core/acl/users', 'view_user_profile', 'View user\'s profile', '2022-04-20 19:52:50', '2022-04-20 19:53:11'),
(438, 0, 'en', 'core/base/base', 'yes', 'Yes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(439, 0, 'en', 'core/base/base', 'no', 'No', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(440, 0, 'en', 'core/base/base', 'is_default', 'Is default?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(441, 0, 'en', 'core/base/base', 'proc_close_disabled_error', 'Function proc_close() is disabled. Please contact your hosting provider to enable\n    it. Or you can add to .env: CAN_EXECUTE_COMMAND=false to disable this feature.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(442, 0, 'en', 'core/base/base', 'email_template.header', 'Email template header', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(443, 0, 'en', 'core/base/base', 'email_template.footer', 'Email template footer', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(444, 0, 'en', 'core/base/base', 'email_template.site_title', 'Site title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(445, 0, 'en', 'core/base/base', 'email_template.site_url', 'Site URL', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(446, 0, 'en', 'core/base/base', 'email_template.site_logo', 'Site Logo', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(447, 0, 'en', 'core/base/base', 'email_template.date_time', 'Current date time', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(448, 0, 'en', 'core/base/base', 'email_template.date_year', 'Current year', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(449, 0, 'en', 'core/base/base', 'email_template.site_admin_email', 'Site admin email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(450, 0, 'en', 'core/base/base', 'change_image', 'Change image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(451, 0, 'en', 'core/base/base', 'delete_image', 'Delete image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(452, 0, 'en', 'core/base/base', 'preview_image', 'Preview image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(453, 0, 'en', 'core/base/base', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(454, 0, 'en', 'core/base/base', 'using_button', 'Using button', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(455, 0, 'en', 'core/base/base', 'select_image', 'Select image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(456, 0, 'en', 'core/base/base', 'to_add_more_image', 'to add more images', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(457, 0, 'en', 'core/base/base', 'add_image', 'Add image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(458, 0, 'en', 'core/base/base', 'tools', 'Tools', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(459, 0, 'en', 'core/base/cache', 'cache_management', 'Cache management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(460, 0, 'en', 'core/base/cache', 'cache_commands', 'Clear cache commands', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(461, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.title', 'Clear all CMS cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(462, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.description', 'Clear CMS caching: database caching, static blocks... Run this command when you don\'t see the changes after updating data.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(463, 0, 'en', 'core/base/cache', 'commands.clear_cms_cache.success_msg', 'Cache cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(464, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.title', 'Refresh compiled views', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(465, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.description', 'Clear compiled views to make views up to date.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(466, 0, 'en', 'core/base/cache', 'commands.refresh_compiled_views.success_msg', 'Cache view refreshed', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(467, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.title', 'Clear config cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(468, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.description', 'You might need to refresh the config caching when you change something on production environment.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(469, 0, 'en', 'core/base/cache', 'commands.clear_config_cache.success_msg', 'Config cache cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(470, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.title', 'Clear route cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(471, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.description', 'Clear cache routing.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(472, 0, 'en', 'core/base/cache', 'commands.clear_route_cache.success_msg', 'The route cache has been cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(473, 0, 'en', 'core/base/cache', 'commands.clear_log.title', 'Clear log', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(474, 0, 'en', 'core/base/cache', 'commands.clear_log.description', 'Clear system log files', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(475, 0, 'en', 'core/base/cache', 'commands.clear_log.success_msg', 'The system log has been cleaned', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(476, 0, 'en', 'core/base/enums', 'statuses.draft', 'Draft', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(477, 0, 'en', 'core/base/enums', 'statuses.pending', 'Pending', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(478, 0, 'en', 'core/base/enums', 'statuses.published', 'Published', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(479, 0, 'en', 'core/base/errors', '401_title', 'Permission Denied', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(480, 0, 'en', 'core/base/errors', '401_msg', '<li>You have not been granted access to the section by the administrator.</li>\n	                <li>You may have the wrong account type.</li>\n	                <li>You are not authorized to view the requested resource.</li>\n	                <li>Your subscription may have expired.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(481, 0, 'en', 'core/base/errors', '404_title', 'Page could not be found', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(482, 0, 'en', 'core/base/errors', '404_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(483, 0, 'en', 'core/base/errors', '500_title', 'Page could not be loaded', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(484, 0, 'en', 'core/base/errors', '500_msg', '<li>The page you requested does not exist.</li>\n	                <li>The link you clicked is no longer.</li>\n	                <li>The page may have moved to a new location.</li>\n	                <li>An error may have occurred.</li>\n	                <li>You are not authorized to view the requested resource.</li>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(485, 0, 'en', 'core/base/errors', 'reasons', 'This may have occurred because of several reasons', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(486, 0, 'en', 'core/base/errors', 'try_again', 'Please try again in a few minutes, or alternatively return to the homepage by <a href=\"http://botble.test/admin\">clicking here</a>.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(487, 0, 'en', 'core/base/errors', 'not_found', 'Not Found', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(488, 0, 'en', 'core/base/forms', 'choose_image', 'Choose image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(489, 0, 'en', 'core/base/forms', 'actions', 'Actions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(490, 0, 'en', 'core/base/forms', 'save', 'Save', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(491, 0, 'en', 'core/base/forms', 'save_and_continue', 'Save & Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(492, 0, 'en', 'core/base/forms', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(493, 0, 'en', 'core/base/forms', 'image_placeholder', 'Insert path of image or click upload button', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(494, 0, 'en', 'core/base/forms', 'create', 'Create', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(495, 0, 'en', 'core/base/forms', 'edit', 'Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(496, 0, 'en', 'core/base/forms', 'permalink', 'Permalink', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(497, 0, 'en', 'core/base/forms', 'ok', 'OK', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(498, 0, 'en', 'core/base/forms', 'cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(499, 0, 'en', 'core/base/forms', 'character_remain', 'character(s) remain', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(500, 0, 'en', 'core/base/forms', 'template', 'Template', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(501, 0, 'en', 'core/base/forms', 'choose_file', 'Choose file', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(502, 0, 'en', 'core/base/forms', 'file', 'File', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(503, 0, 'en', 'core/base/forms', 'content', 'Content', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(504, 0, 'en', 'core/base/forms', 'description', 'Description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(505, 0, 'en', 'core/base/forms', 'name', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(506, 0, 'en', 'core/base/forms', 'slug', 'Slug', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(507, 0, 'en', 'core/base/forms', 'title', 'Title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(508, 0, 'en', 'core/base/forms', 'value', 'Value', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(509, 0, 'en', 'core/base/forms', 'name_placeholder', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(510, 0, 'en', 'core/base/forms', 'alias_placeholder', 'Alias', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(511, 0, 'en', 'core/base/forms', 'description_placeholder', 'Short description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(512, 0, 'en', 'core/base/forms', 'parent', 'Parent', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(513, 0, 'en', 'core/base/forms', 'icon', 'Icon', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(514, 0, 'en', 'core/base/forms', 'icon_placeholder', 'Ex: fa fa-home', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(515, 0, 'en', 'core/base/forms', 'order_by', 'Order by', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(516, 0, 'en', 'core/base/forms', 'order_by_placeholder', 'Order by', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(517, 0, 'en', 'core/base/forms', 'is_featured', 'Is featured?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(518, 0, 'en', 'core/base/forms', 'is_default', 'Is default?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(519, 0, 'en', 'core/base/forms', 'update', 'Update', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(520, 0, 'en', 'core/base/forms', 'publish', 'Publish', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(521, 0, 'en', 'core/base/forms', 'remove_image', 'Remove image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(522, 0, 'en', 'core/base/forms', 'remove_file', 'Remove file', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(523, 0, 'en', 'core/base/forms', 'order', 'Order', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(524, 0, 'en', 'core/base/forms', 'alias', 'Alias', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(525, 0, 'en', 'core/base/forms', 'basic_information', 'Basic information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(526, 0, 'en', 'core/base/forms', 'short_code', 'Shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(527, 0, 'en', 'core/base/forms', 'add_short_code', 'Add a shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(528, 0, 'en', 'core/base/forms', 'add', 'Add', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(529, 0, 'en', 'core/base/forms', 'link', 'Link', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(530, 0, 'en', 'core/base/forms', 'show_hide_editor', 'Show/Hide Editor', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(531, 0, 'en', 'core/base/forms', 'basic_info_title', 'Basic information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(532, 0, 'en', 'core/base/forms', 'expand_all', 'Expand all', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(533, 0, 'en', 'core/base/forms', 'collapse_all', 'Collapse all', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(534, 0, 'en', 'core/base/forms', 'view_new_tab', 'Open in new tab', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(535, 0, 'en', 'core/base/layouts', 'platform_admin', 'Platform Administration', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(536, 0, 'en', 'core/base/layouts', 'dashboard', 'Dashboard', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(537, 0, 'en', 'core/base/layouts', 'widgets', 'Widgets', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(538, 0, 'en', 'core/base/layouts', 'plugins', 'Plugins', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(539, 0, 'en', 'core/base/layouts', 'settings', 'Settings', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(540, 0, 'en', 'core/base/layouts', 'setting_general', 'General', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(541, 0, 'en', 'core/base/layouts', 'setting_email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(542, 0, 'en', 'core/base/layouts', 'system_information', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(543, 0, 'en', 'core/base/layouts', 'theme', 'Theme', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(544, 0, 'en', 'core/base/layouts', 'copyright', 'Copyright :year &copy; :company. Version: <span>:version</span>', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(545, 0, 'en', 'core/base/layouts', 'profile', 'Profile', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(546, 0, 'en', 'core/base/layouts', 'logout', 'Logout', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(547, 0, 'en', 'core/base/layouts', 'no_search_result', 'No results found, please try with different keywords.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(548, 0, 'en', 'core/base/layouts', 'home', 'Home', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(549, 0, 'en', 'core/base/layouts', 'search', 'Search', '2022-04-20 19:52:51', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(550, 0, 'en', 'core/base/layouts', 'add_new', 'Add new', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(551, 0, 'en', 'core/base/layouts', 'n_a', 'N/A', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(552, 0, 'en', 'core/base/layouts', 'page_loaded_time', 'Page loaded in', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(553, 0, 'en', 'core/base/layouts', 'view_website', 'View website', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(554, 0, 'en', 'core/base/notices', 'create_success_message', 'Created successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(555, 0, 'en', 'core/base/notices', 'update_success_message', 'Updated successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(556, 0, 'en', 'core/base/notices', 'delete_success_message', 'Deleted successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(557, 0, 'en', 'core/base/notices', 'success_header', 'Success!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(558, 0, 'en', 'core/base/notices', 'error_header', 'Error!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(559, 0, 'en', 'core/base/notices', 'no_select', 'Please select at least one record to perform this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(560, 0, 'en', 'core/base/notices', 'processing_request', 'We are processing your request.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(561, 0, 'en', 'core/base/notices', 'error', 'Error!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(562, 0, 'en', 'core/base/notices', 'success', 'Success!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(563, 0, 'en', 'core/base/notices', 'info', 'Info!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(564, 0, 'en', 'core/base/notices', 'enum.validate_message', 'The :attribute value you have entered is invalid.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(565, 0, 'en', 'core/base/system', 'no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(566, 0, 'en', 'core/base/system', 'cannot_find_user', 'Unable to find specified user', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(567, 0, 'en', 'core/base/system', 'supper_revoked', 'Super user access revoked', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(568, 0, 'en', 'core/base/system', 'cannot_revoke_yourself', 'Can not revoke supper user access permission yourself!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(569, 0, 'en', 'core/base/system', 'cant_remove_supper', 'You don\'t has permission to remove this super user', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(570, 0, 'en', 'core/base/system', 'cant_find_user_with_email', 'Unable to find user with specified email address', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(571, 0, 'en', 'core/base/system', 'supper_granted', 'Super user access granted', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(572, 0, 'en', 'core/base/system', 'delete_log_success', 'Delete log file successfully!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(573, 0, 'en', 'core/base/system', 'get_member_success', 'Member list retrieved successfully', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(574, 0, 'en', 'core/base/system', 'error_occur', 'The following errors occurred', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(575, 0, 'en', 'core/base/system', 'user_management', 'User Management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(576, 0, 'en', 'core/base/system', 'user_management_description', 'Manage users.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(577, 0, 'en', 'core/base/system', 'role_and_permission', 'Roles and Permissions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(578, 0, 'en', 'core/base/system', 'role_and_permission_description', 'Manage the available roles.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(579, 0, 'en', 'core/base/system', 'user.list_super', 'List Super Users', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(580, 0, 'en', 'core/base/system', 'user.email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(581, 0, 'en', 'core/base/system', 'user.last_login', 'Last Login', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(582, 0, 'en', 'core/base/system', 'user.username', 'Username', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(583, 0, 'en', 'core/base/system', 'user.add_user', 'Add Super User', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(584, 0, 'en', 'core/base/system', 'user.cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(585, 0, 'en', 'core/base/system', 'user.create', 'Create', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(586, 0, 'en', 'core/base/system', 'options.features', 'Feature Access Control', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(587, 0, 'en', 'core/base/system', 'options.feature_description', 'Manage the available.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(588, 0, 'en', 'core/base/system', 'options.manage_super', 'Super User Management', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(589, 0, 'en', 'core/base/system', 'options.manage_super_description', 'Add/remove super users.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(590, 0, 'en', 'core/base/system', 'options.info', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(591, 0, 'en', 'core/base/system', 'options.info_description', 'All information about current system configuration.', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(592, 0, 'en', 'core/base/system', 'info.title', 'System information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(593, 0, 'en', 'core/base/system', 'info.cache', 'Cache', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(594, 0, 'en', 'core/base/system', 'info.locale', 'Active locale', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(595, 0, 'en', 'core/base/system', 'info.environment', 'Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(596, 0, 'en', 'core/base/system', 'disabled_in_demo_mode', 'You cannot do it in demo mode!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(597, 0, 'en', 'core/base/system', 'report_description', 'Please share this information for troubleshooting', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(598, 0, 'en', 'core/base/system', 'get_system_report', 'Get System Report', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(599, 0, 'en', 'core/base/system', 'system_environment', 'System Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(600, 0, 'en', 'core/base/system', 'framework_version', 'Framework Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(601, 0, 'en', 'core/base/system', 'timezone', 'Timezone', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(602, 0, 'en', 'core/base/system', 'debug_mode', 'Debug Mode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(603, 0, 'en', 'core/base/system', 'storage_dir_writable', 'Storage Dir Writable', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(604, 0, 'en', 'core/base/system', 'cache_dir_writable', 'Cache Dir Writable', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(605, 0, 'en', 'core/base/system', 'app_size', 'App Size', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(606, 0, 'en', 'core/base/system', 'server_environment', 'Server Environment', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(607, 0, 'en', 'core/base/system', 'php_version', 'PHP Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(608, 0, 'en', 'core/base/system', 'php_version_error', 'PHP must be >= :version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(609, 0, 'en', 'core/base/system', 'server_software', 'Server Software', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(610, 0, 'en', 'core/base/system', 'server_os', 'Server OS', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(611, 0, 'en', 'core/base/system', 'database', 'Database', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(612, 0, 'en', 'core/base/system', 'ssl_installed', 'SSL Installed', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(613, 0, 'en', 'core/base/system', 'cache_driver', 'Cache Driver', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(614, 0, 'en', 'core/base/system', 'session_driver', 'Session Driver', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(615, 0, 'en', 'core/base/system', 'queue_connection', 'Queue Connection', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(616, 0, 'en', 'core/base/system', 'mbstring_ext', 'Mbstring Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(617, 0, 'en', 'core/base/system', 'openssl_ext', 'OpenSSL Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(618, 0, 'en', 'core/base/system', 'pdo_ext', 'PDO Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(619, 0, 'en', 'core/base/system', 'curl_ext', 'CURL Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(620, 0, 'en', 'core/base/system', 'exif_ext', 'Exif Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(621, 0, 'en', 'core/base/system', 'file_info_ext', 'File info Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(622, 0, 'en', 'core/base/system', 'tokenizer_ext', 'Tokenizer Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(623, 0, 'en', 'core/base/system', 'extra_stats', 'Extra Stats', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(624, 0, 'en', 'core/base/system', 'installed_packages', 'Installed packages and their version numbers', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(625, 0, 'en', 'core/base/system', 'extra_information', 'Extra Information', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(626, 0, 'en', 'core/base/system', 'copy_report', 'Copy Report', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(627, 0, 'en', 'core/base/system', 'package_name', 'Package Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(628, 0, 'en', 'core/base/system', 'dependency_name', 'Dependency Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(629, 0, 'en', 'core/base/system', 'version', 'Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(630, 0, 'en', 'core/base/system', 'cms_version', 'CMS Version', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(631, 0, 'en', 'core/base/system', 'imagick_or_gd_ext', 'Imagick/GD Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(632, 0, 'en', 'core/base/system', 'updater', 'System Updater', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(633, 0, 'en', 'core/base/system', 'zip', 'Zip Ext', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(634, 0, 'en', 'core/base/system', 'memory_limit', 'Memory limit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(635, 0, 'en', 'core/base/system', 'max_execution_time', 'Max execution time (s)', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(636, 0, 'en', 'core/base/tables', 'id', 'ID', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(637, 0, 'en', 'core/base/tables', 'name', 'Name', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(638, 0, 'en', 'core/base/tables', 'slug', 'Slug', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(639, 0, 'en', 'core/base/tables', 'title', 'Title', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(640, 0, 'en', 'core/base/tables', 'order_by', 'Order By', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(641, 0, 'en', 'core/base/tables', 'order', 'Order', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(642, 0, 'en', 'core/base/tables', 'status', 'Status', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(643, 0, 'en', 'core/base/tables', 'created_at', 'Created At', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(644, 0, 'en', 'core/base/tables', 'updated_at', 'Updated At', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(645, 0, 'en', 'core/base/tables', 'description', 'Description', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(646, 0, 'en', 'core/base/tables', 'operations', 'Operations', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(647, 0, 'en', 'core/base/tables', 'url', 'URL', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(648, 0, 'en', 'core/base/tables', 'author', 'Author', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(649, 0, 'en', 'core/base/tables', 'notes', 'Notes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(650, 0, 'en', 'core/base/tables', 'column', 'Column', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(651, 0, 'en', 'core/base/tables', 'origin', 'Origin', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(652, 0, 'en', 'core/base/tables', 'after_change', 'After changes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(653, 0, 'en', 'core/base/tables', 'views', 'Views', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(654, 0, 'en', 'core/base/tables', 'browser', 'Browser', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(655, 0, 'en', 'core/base/tables', 'session', 'Session', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(656, 0, 'en', 'core/base/tables', 'activated', 'activated', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(657, 0, 'en', 'core/base/tables', 'deactivated', 'deactivated', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(658, 0, 'en', 'core/base/tables', 'is_featured', 'Is featured', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(659, 0, 'en', 'core/base/tables', 'edit', 'Edit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(660, 0, 'en', 'core/base/tables', 'delete', 'Delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(661, 0, 'en', 'core/base/tables', 'restore', 'Restore', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(662, 0, 'en', 'core/base/tables', 'activate', 'Activate', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(663, 0, 'en', 'core/base/tables', 'deactivate', 'Deactivate', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(664, 0, 'en', 'core/base/tables', 'excel', 'Excel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(665, 0, 'en', 'core/base/tables', 'export', 'Export', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(666, 0, 'en', 'core/base/tables', 'csv', 'CSV', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(667, 0, 'en', 'core/base/tables', 'pdf', 'PDF', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(668, 0, 'en', 'core/base/tables', 'print', 'Print', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(669, 0, 'en', 'core/base/tables', 'reset', 'Reset', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(670, 0, 'en', 'core/base/tables', 'reload', 'Reload', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(671, 0, 'en', 'core/base/tables', 'display', 'Display', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(672, 0, 'en', 'core/base/tables', 'all', 'All', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(673, 0, 'en', 'core/base/tables', 'add_new', 'Add New', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(674, 0, 'en', 'core/base/tables', 'action', 'Actions', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(675, 0, 'en', 'core/base/tables', 'delete_entry', 'Delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(676, 0, 'en', 'core/base/tables', 'view', 'View Detail', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(677, 0, 'en', 'core/base/tables', 'save', 'Save', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(678, 0, 'en', 'core/base/tables', 'show_from', 'Show from', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(679, 0, 'en', 'core/base/tables', 'to', 'to', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(680, 0, 'en', 'core/base/tables', 'in', 'in', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(681, 0, 'en', 'core/base/tables', 'records', 'records', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(682, 0, 'en', 'core/base/tables', 'no_data', 'No data to display', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(683, 0, 'en', 'core/base/tables', 'no_record', 'No record', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(684, 0, 'en', 'core/base/tables', 'confirm_delete', 'Confirm delete', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(685, 0, 'en', 'core/base/tables', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(686, 0, 'en', 'core/base/tables', 'confirm_delete_many_msg', 'Do you really want to delete selected record(s)?', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(687, 0, 'en', 'core/base/tables', 'cancel', 'Cancel', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(688, 0, 'en', 'core/base/tables', 'template', 'Template', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(689, 0, 'en', 'core/base/tables', 'email', 'Email', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(690, 0, 'en', 'core/base/tables', 'last_login', 'Last login', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(691, 0, 'en', 'core/base/tables', 'shortcode', 'Shortcode', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(692, 0, 'en', 'core/base/tables', 'image', 'Image', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(693, 0, 'en', 'core/base/tables', 'bulk_changes', 'Bulk changes', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(694, 0, 'en', 'core/base/tables', 'submit', 'Submit', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(695, 0, 'en', 'core/base/tables', 'please_select_record', 'Please select at least one record to perform this action!', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(696, 0, 'en', 'core/base/tabs', 'detail', 'Detail', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(697, 0, 'en', 'core/base/tabs', 'file', 'Files', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(698, 0, 'en', 'core/base/tabs', 'record_note', 'Record Note', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(699, 0, 'en', 'core/base/tabs', 'revision', 'Revision History', '2022-04-20 19:52:51', '2022-04-20 19:53:11'),
(955, 0, 'en', 'core/dashboard/dashboard', 'update_position_success', 'Update widget position successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(956, 0, 'en', 'core/dashboard/dashboard', 'hide_success', 'Update widget successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(957, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide', 'Are you sure?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(958, 0, 'en', 'core/dashboard/dashboard', 'hide_message', 'Do you really want to hide this widget? It will be disappear on Dashboard!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(959, 0, 'en', 'core/dashboard/dashboard', 'confirm_hide_btn', 'Yes, hide this widget', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(960, 0, 'en', 'core/dashboard/dashboard', 'cancel_hide_btn', 'Cancel', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(961, 0, 'en', 'core/dashboard/dashboard', 'collapse_expand', 'Collapse/Expand', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(962, 0, 'en', 'core/dashboard/dashboard', 'hide', 'Hide', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(963, 0, 'en', 'core/dashboard/dashboard', 'reload', 'Reload', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(964, 0, 'en', 'core/dashboard/dashboard', 'save_setting_success', 'Save widget settings successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(965, 0, 'en', 'core/dashboard/dashboard', 'widget_not_exists', 'Widget is not exits!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(966, 0, 'en', 'core/dashboard/dashboard', 'manage_widgets', 'Manage Widgets', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(967, 0, 'en', 'core/dashboard/dashboard', 'fullscreen', 'Full screen', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(968, 0, 'en', 'core/dashboard/dashboard', 'title', 'Dashboard', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(969, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.today', 'Today', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(970, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.yesterday', 'Yesterday', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(971, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_week', 'This Week', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(972, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_7_days', 'Last 7 Days', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(973, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_month', 'This Month', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(974, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.last_30_days', 'Last 30 Days', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(975, 0, 'en', 'core/dashboard/dashboard', 'predefined_ranges.this_year', 'This Year', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(990, 0, 'en', 'core/media/media', 'filter', 'Filter', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(991, 0, 'en', 'core/media/media', 'everything', 'Everything', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(992, 0, 'en', 'core/media/media', 'image', 'Image', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(993, 0, 'en', 'core/media/media', 'video', 'Video', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(994, 0, 'en', 'core/media/media', 'document', 'Document', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(995, 0, 'en', 'core/media/media', 'view_in', 'View in', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(996, 0, 'en', 'core/media/media', 'all_media', 'All media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(997, 0, 'en', 'core/media/media', 'trash', 'Trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(998, 0, 'en', 'core/media/media', 'recent', 'Recent', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(999, 0, 'en', 'core/media/media', 'favorites', 'Favorites', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1000, 0, 'en', 'core/media/media', 'upload', 'Upload', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1001, 0, 'en', 'core/media/media', 'create_folder', 'Create folder', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1002, 0, 'en', 'core/media/media', 'refresh', 'Refresh', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1003, 0, 'en', 'core/media/media', 'empty_trash', 'Empty trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1004, 0, 'en', 'core/media/media', 'search_file_and_folder', 'Search in current folder', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1005, 0, 'en', 'core/media/media', 'sort', 'Sort', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1006, 0, 'en', 'core/media/media', 'file_name_asc', 'File name - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1007, 0, 'en', 'core/media/media', 'file_name_desc', 'File name - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1008, 0, 'en', 'core/media/media', 'uploaded_date_asc', 'Uploaded date - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1009, 0, 'en', 'core/media/media', 'uploaded_date_desc', 'Uploaded date - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1010, 0, 'en', 'core/media/media', 'size_asc', 'Size - ASC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1011, 0, 'en', 'core/media/media', 'size_desc', 'Size - DESC', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1012, 0, 'en', 'core/media/media', 'actions', 'Actions', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1013, 0, 'en', 'core/media/media', 'nothing_is_selected', 'Nothing is selected', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1014, 0, 'en', 'core/media/media', 'insert', 'Insert', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1015, 0, 'en', 'core/media/media', 'folder_name', 'Folder name', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1016, 0, 'en', 'core/media/media', 'create', 'Create', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1017, 0, 'en', 'core/media/media', 'rename', 'Rename', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1018, 0, 'en', 'core/media/media', 'close', 'Close', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1019, 0, 'en', 'core/media/media', 'save_changes', 'Save changes', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1020, 0, 'en', 'core/media/media', 'move_to_trash', 'Move items to trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1021, 0, 'en', 'core/media/media', 'confirm_trash', 'Are you sure you want to move these items to trash?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1022, 0, 'en', 'core/media/media', 'confirm', 'Confirm', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1023, 0, 'en', 'core/media/media', 'confirm_delete', 'Delete item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1024, 0, 'en', 'core/media/media', 'confirm_delete_description', 'Your request cannot rollback. Are you sure you wanna delete these items?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1025, 0, 'en', 'core/media/media', 'empty_trash_title', 'Empty trash', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1026, 0, 'en', 'core/media/media', 'empty_trash_description', 'Your request cannot rollback. Are you sure you wanna remove all items in trash?', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1027, 0, 'en', 'core/media/media', 'up_level', 'Up one level', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1028, 0, 'en', 'core/media/media', 'upload_progress', 'Upload progress', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1029, 0, 'en', 'core/media/media', 'folder_created', 'Folder is created successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1030, 0, 'en', 'core/media/media', 'gallery', 'Media gallery', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1031, 0, 'en', 'core/media/media', 'trash_error', 'Error when delete selected item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1032, 0, 'en', 'core/media/media', 'trash_success', 'Moved selected item(s) to trash successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1033, 0, 'en', 'core/media/media', 'restore_error', 'Error when restore selected item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1034, 0, 'en', 'core/media/media', 'restore_success', 'Restore selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1035, 0, 'en', 'core/media/media', 'copy_success', 'Copied selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1036, 0, 'en', 'core/media/media', 'delete_success', 'Deleted selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1037, 0, 'en', 'core/media/media', 'favorite_success', 'Favorite selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1038, 0, 'en', 'core/media/media', 'remove_favorite_success', 'Remove selected item(s) from favorites successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1039, 0, 'en', 'core/media/media', 'rename_error', 'Error when rename item(s)', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1040, 0, 'en', 'core/media/media', 'rename_success', 'Rename selected item(s) successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1041, 0, 'en', 'core/media/media', 'empty_trash_success', 'Empty trash successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1042, 0, 'en', 'core/media/media', 'invalid_action', 'Invalid action!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1043, 0, 'en', 'core/media/media', 'file_not_exists', 'File is not exists!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1044, 0, 'en', 'core/media/media', 'download_file_error', 'Error when downloading files!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1045, 0, 'en', 'core/media/media', 'missing_zip_archive_extension', 'Please enable ZipArchive extension to download file!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1046, 0, 'en', 'core/media/media', 'can_not_download_file', 'Can not download this file!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1047, 0, 'en', 'core/media/media', 'invalid_request', 'Invalid request!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1048, 0, 'en', 'core/media/media', 'add_success', 'Add item successfully!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1049, 0, 'en', 'core/media/media', 'file_too_big', 'File too big. Max file upload is :size bytes', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1050, 0, 'en', 'core/media/media', 'can_not_detect_file_type', 'File type is not allowed or can not detect file type!', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1051, 0, 'en', 'core/media/media', 'upload_failed', 'The file is NOT uploaded completely. The server allows max upload file size is :size . Please check your file size OR try to upload again in case of having network errors', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1052, 0, 'en', 'core/media/media', 'menu_name', 'Media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1053, 0, 'en', 'core/media/media', 'add', 'Add media', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1054, 0, 'en', 'core/media/media', 'javascript.name', 'Name', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1055, 0, 'en', 'core/media/media', 'javascript.url', 'URL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1056, 0, 'en', 'core/media/media', 'javascript.full_url', 'Full URL', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1057, 0, 'en', 'core/media/media', 'javascript.size', 'Size', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1058, 0, 'en', 'core/media/media', 'javascript.mime_type', 'Type', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1059, 0, 'en', 'core/media/media', 'javascript.created_at', 'Uploaded at', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1060, 0, 'en', 'core/media/media', 'javascript.updated_at', 'Modified at', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1061, 0, 'en', 'core/media/media', 'javascript.nothing_selected', 'Nothing is selected', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1062, 0, 'en', 'core/media/media', 'javascript.visit_link', 'Open link', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1063, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.icon', 'fas fa-cloud-upload-alt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1064, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.title', 'Drop files and folders here', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1065, 0, 'en', 'core/media/media', 'javascript.no_item.all_media.message', 'Or use the upload button above', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1066, 0, 'en', 'core/media/media', 'javascript.no_item.trash.icon', 'fas fa-trash-alt', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1067, 0, 'en', 'core/media/media', 'javascript.no_item.trash.title', 'There is nothing in your trash currently', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1068, 0, 'en', 'core/media/media', 'javascript.no_item.trash.message', 'Delete files to move them to trash automatically. Delete files from trash to remove them permanently', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1069, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.icon', 'fas fa-star', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1070, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.title', 'You have not added anything to your favorites yet', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1071, 0, 'en', 'core/media/media', 'javascript.no_item.favorites.message', 'Add files to favorites to easily find them later', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1072, 0, 'en', 'core/media/media', 'javascript.no_item.recent.icon', 'far fa-clock', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1073, 0, 'en', 'core/media/media', 'javascript.no_item.recent.title', 'You did not opened anything yet', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1074, 0, 'en', 'core/media/media', 'javascript.no_item.recent.message', 'All recent files that you opened will be appeared here', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1075, 0, 'en', 'core/media/media', 'javascript.no_item.default.icon', 'fas fa-sync', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1076, 0, 'en', 'core/media/media', 'javascript.no_item.default.title', 'No items', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1077, 0, 'en', 'core/media/media', 'javascript.no_item.default.message', 'This directory has no item', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1078, 0, 'en', 'core/media/media', 'javascript.clipboard.success', 'These file links has been copied to clipboard', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1079, 0, 'en', 'core/media/media', 'javascript.message.error_header', 'Error', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1080, 0, 'en', 'core/media/media', 'javascript.message.success_header', 'Success', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1081, 0, 'en', 'core/media/media', 'javascript.download.error', 'No files selected or cannot download these files', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1082, 0, 'en', 'core/media/media', 'javascript.actions_list.basic.preview', 'Preview', '2022-04-20 19:52:52', '2022-04-20 19:53:11'),
(1083, 0, 'en', 'core/media/media', 'javascript.actions_list.file.copy_link', 'Copy link', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1084, 0, 'en', 'core/media/media', 'javascript.actions_list.file.rename', 'Rename', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1085, 0, 'en', 'core/media/media', 'javascript.actions_list.file.make_copy', 'Make a copy', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1086, 0, 'en', 'core/media/media', 'javascript.actions_list.user.favorite', 'Add to favorite', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1087, 0, 'en', 'core/media/media', 'javascript.actions_list.user.remove_favorite', 'Remove favorite', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1088, 0, 'en', 'core/media/media', 'javascript.actions_list.other.download', 'Download', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1089, 0, 'en', 'core/media/media', 'javascript.actions_list.other.trash', 'Move to trash', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1090, 0, 'en', 'core/media/media', 'javascript.actions_list.other.delete', 'Delete permanently', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1091, 0, 'en', 'core/media/media', 'javascript.actions_list.other.restore', 'Restore', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1092, 0, 'en', 'core/media/media', 'name_invalid', 'The folder name has invalid character(s).', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1093, 0, 'en', 'core/media/media', 'url_invalid', 'Please provide a valid URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1094, 0, 'en', 'core/media/media', 'path_invalid', 'Please provide a valid path', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1095, 0, 'en', 'core/media/media', 'download_link', 'Download', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1096, 0, 'en', 'core/media/media', 'url', 'URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1097, 0, 'en', 'core/media/media', 'download_explain', 'Enter one URL per line.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1098, 0, 'en', 'core/media/media', 'downloading', 'Downloading...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1207, 0, 'en', 'core/setting/setting', 'title', 'Settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1208, 0, 'en', 'core/setting/setting', 'email_setting_title', 'Email settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1209, 0, 'en', 'core/setting/setting', 'general.theme', 'Theme', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1210, 0, 'en', 'core/setting/setting', 'general.description', 'Setting site information', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1211, 0, 'en', 'core/setting/setting', 'general.title', 'General', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1212, 0, 'en', 'core/setting/setting', 'general.general_block', 'General Information', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1213, 0, 'en', 'core/setting/setting', 'general.rich_editor', 'Rich Editor', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1214, 0, 'en', 'core/setting/setting', 'general.site_title', 'Site title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1215, 0, 'en', 'core/setting/setting', 'general.admin_email', 'Admin Email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1216, 0, 'en', 'core/setting/setting', 'general.seo_block', 'SEO Configuration', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1217, 0, 'en', 'core/setting/setting', 'general.seo_title', 'SEO Title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1218, 0, 'en', 'core/setting/setting', 'general.seo_description', 'SEO Description', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1219, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_block', 'Google Webmaster Tools', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1220, 0, 'en', 'core/setting/setting', 'general.google_site_verification', 'Google site verification', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1221, 0, 'en', 'core/setting/setting', 'general.placeholder.site_title', 'Site Title (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1222, 0, 'en', 'core/setting/setting', 'general.placeholder.admin_email', 'Admin Email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1223, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_title', 'SEO Title (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1224, 0, 'en', 'core/setting/setting', 'general.placeholder.seo_description', 'SEO Description (maximum 120 characters)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1225, 0, 'en', 'core/setting/setting', 'general.placeholder.google_analytics', 'Google Analytics', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1226, 0, 'en', 'core/setting/setting', 'general.placeholder.google_site_verification', 'Google Site Verification', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1227, 0, 'en', 'core/setting/setting', 'general.cache_admin_menu', 'Cache admin menu?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1228, 0, 'en', 'core/setting/setting', 'general.enable_send_error_reporting_via_email', 'Enable to send error reporting via email?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1229, 0, 'en', 'core/setting/setting', 'general.time_zone', 'Timezone', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1230, 0, 'en', 'core/setting/setting', 'general.default_admin_theme', 'Default admin theme', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1231, 0, 'en', 'core/setting/setting', 'general.enable_change_admin_theme', 'Enable change admin theme?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1232, 0, 'en', 'core/setting/setting', 'general.enable', 'Enable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1233, 0, 'en', 'core/setting/setting', 'general.disable', 'Disable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1234, 0, 'en', 'core/setting/setting', 'general.enable_cache', 'Enable cache?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1235, 0, 'en', 'core/setting/setting', 'general.cache_time', 'Cache time (minutes)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1236, 0, 'en', 'core/setting/setting', 'general.cache_time_site_map', 'Cache Time Site map', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1237, 0, 'en', 'core/setting/setting', 'general.admin_logo', 'Admin logo', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1238, 0, 'en', 'core/setting/setting', 'general.admin_favicon', 'Admin favicon', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1239, 0, 'en', 'core/setting/setting', 'general.admin_title', 'Admin title', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1240, 0, 'en', 'core/setting/setting', 'general.admin_title_placeholder', 'Title show to tab of browser', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1241, 0, 'en', 'core/setting/setting', 'general.cache_block', 'Cache', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1242, 0, 'en', 'core/setting/setting', 'general.admin_appearance_title', 'Admin appearance', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1243, 0, 'en', 'core/setting/setting', 'general.admin_appearance_description', 'Setting admin appearance such as editor, language...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1244, 0, 'en', 'core/setting/setting', 'general.seo_block_description', 'Setting site title, site meta description, site keyword for optimize SEO', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1245, 0, 'en', 'core/setting/setting', 'general.webmaster_tools_description', 'Google Webmaster Tools (GWT) is free software that helps you manage the technical side of your website', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1246, 0, 'en', 'core/setting/setting', 'general.cache_description', 'Config cache for system for optimize speed', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1247, 0, 'en', 'core/setting/setting', 'general.yes', 'Yes', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1248, 0, 'en', 'core/setting/setting', 'general.no', 'No', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1249, 0, 'en', 'core/setting/setting', 'general.show_on_front', 'Your homepage displays', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1250, 0, 'en', 'core/setting/setting', 'general.select', '— Select —', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1251, 0, 'en', 'core/setting/setting', 'general.show_site_name', 'Show site name after page title, separate with \"-\"?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1252, 0, 'en', 'core/setting/setting', 'general.locale', 'Site language', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1253, 0, 'en', 'core/setting/setting', 'general.locale_direction', 'Front site language direction', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1254, 0, 'en', 'core/setting/setting', 'general.admin_locale_direction', 'Admin language direction', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1255, 0, 'en', 'core/setting/setting', 'general.admin_login_screen_backgrounds', 'Login screen backgrounds (~1366x768)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1256, 0, 'en', 'core/setting/setting', 'email.subject', 'Subject', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1257, 0, 'en', 'core/setting/setting', 'email.content', 'Content', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1258, 0, 'en', 'core/setting/setting', 'email.title', 'Setting for email template', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1259, 0, 'en', 'core/setting/setting', 'email.description', 'Email template using HTML & system variables.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1260, 0, 'en', 'core/setting/setting', 'email.reset_to_default', 'Reset to default', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1261, 0, 'en', 'core/setting/setting', 'email.back', 'Back to settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1262, 0, 'en', 'core/setting/setting', 'email.reset_success', 'Reset back to default successfully', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1263, 0, 'en', 'core/setting/setting', 'email.confirm_reset', 'Confirm reset email template?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1264, 0, 'en', 'core/setting/setting', 'email.confirm_message', 'Do you really want to reset this email template to default?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1265, 0, 'en', 'core/setting/setting', 'email.continue', 'Continue', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1266, 0, 'en', 'core/setting/setting', 'email.sender_name', 'Sender name', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1267, 0, 'en', 'core/setting/setting', 'email.sender_name_placeholder', 'Name', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1268, 0, 'en', 'core/setting/setting', 'email.sender_email', 'Sender email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1269, 0, 'en', 'core/setting/setting', 'email.mailer', 'Mailer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1270, 0, 'en', 'core/setting/setting', 'email.port', 'Port', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1271, 0, 'en', 'core/setting/setting', 'email.port_placeholder', 'Ex: 587', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1272, 0, 'en', 'core/setting/setting', 'email.host', 'Host', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1273, 0, 'en', 'core/setting/setting', 'email.host_placeholder', 'Ex: smtp.gmail.com', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1274, 0, 'en', 'core/setting/setting', 'email.username', 'Username', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1275, 0, 'en', 'core/setting/setting', 'email.username_placeholder', 'Username to login to mail server', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1276, 0, 'en', 'core/setting/setting', 'email.password', 'Password', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1277, 0, 'en', 'core/setting/setting', 'email.password_placeholder', 'Password to login to mail server', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1278, 0, 'en', 'core/setting/setting', 'email.encryption', 'Encryption', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1279, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain', 'Domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1280, 0, 'en', 'core/setting/setting', 'email.mail_gun_domain_placeholder', 'Domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1281, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1282, 0, 'en', 'core/setting/setting', 'email.mail_gun_secret_placeholder', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1283, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1284, 0, 'en', 'core/setting/setting', 'email.mail_gun_endpoint_placeholder', 'Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1285, 0, 'en', 'core/setting/setting', 'email.log_channel', 'Log channel', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1286, 0, 'en', 'core/setting/setting', 'email.sendmail_path', 'Sendmail Path', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1287, 0, 'en', 'core/setting/setting', 'email.encryption_placeholder', 'Encryption: ssl or tls', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1288, 0, 'en', 'core/setting/setting', 'email.ses_key', 'Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1289, 0, 'en', 'core/setting/setting', 'email.ses_key_placeholder', 'Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1290, 0, 'en', 'core/setting/setting', 'email.ses_secret', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1291, 0, 'en', 'core/setting/setting', 'email.ses_secret_placeholder', 'Secret', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1292, 0, 'en', 'core/setting/setting', 'email.ses_region', 'Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1293, 0, 'en', 'core/setting/setting', 'email.ses_region_placeholder', 'Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1294, 0, 'en', 'core/setting/setting', 'email.postmark_token', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1295, 0, 'en', 'core/setting/setting', 'email.postmark_token_placeholder', 'Token', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1296, 0, 'en', 'core/setting/setting', 'email.template_title', 'Email templates', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1297, 0, 'en', 'core/setting/setting', 'email.template_description', 'Base templates for all emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1298, 0, 'en', 'core/setting/setting', 'email.template_header', 'Email template header', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1299, 0, 'en', 'core/setting/setting', 'email.template_header_description', 'Template for header of emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1300, 0, 'en', 'core/setting/setting', 'email.template_footer', 'Email template footer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1301, 0, 'en', 'core/setting/setting', 'email.template_footer_description', 'Template for footer of emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1302, 0, 'en', 'core/setting/setting', 'email.default', 'Default', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1303, 0, 'en', 'core/setting/setting', 'email.using_queue_to_send_mail', 'Using queue job to send emails (Must to setup Queue first https://laravel.com/docs/queues#supervisor-configuration)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1304, 0, 'en', 'core/setting/setting', 'media.title', 'Media', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1305, 0, 'en', 'core/setting/setting', 'media.driver', 'Driver', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1306, 0, 'en', 'core/setting/setting', 'media.description', 'Settings for media', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1307, 0, 'en', 'core/setting/setting', 'media.aws_access_key_id', 'AWS Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1308, 0, 'en', 'core/setting/setting', 'media.aws_secret_key', 'AWS Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1309, 0, 'en', 'core/setting/setting', 'media.aws_default_region', 'AWS Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1310, 0, 'en', 'core/setting/setting', 'media.aws_bucket', 'AWS Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1311, 0, 'en', 'core/setting/setting', 'media.aws_url', 'AWS URL', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1312, 0, 'en', 'core/setting/setting', 'media.aws_endpoint', 'AWS Endpoint (Optional)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1313, 0, 'en', 'core/setting/setting', 'media.do_spaces_access_key_id', 'DO Spaces Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1314, 0, 'en', 'core/setting/setting', 'media.do_spaces_secret_key', 'DO Spaces Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1315, 0, 'en', 'core/setting/setting', 'media.do_spaces_default_region', 'DO Spaces Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1316, 0, 'en', 'core/setting/setting', 'media.do_spaces_bucket', 'DO Spaces Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1317, 0, 'en', 'core/setting/setting', 'media.do_spaces_endpoint', 'DO Spaces Endpoint', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1318, 0, 'en', 'core/setting/setting', 'media.do_spaces_cdn_enabled', 'Is DO Spaces CDN enabled?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1319, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain', 'Do Spaces CDN custom domain', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1320, 0, 'en', 'core/setting/setting', 'media.media_do_spaces_cdn_custom_domain_placeholder', 'https://your-custom-domain.com', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1321, 0, 'en', 'core/setting/setting', 'media.wasabi_access_key_id', 'Wasabi Access Key ID', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1322, 0, 'en', 'core/setting/setting', 'media.wasabi_secret_key', 'Wasabi Secret Key', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1323, 0, 'en', 'core/setting/setting', 'media.wasabi_default_region', 'Wasabi Default Region', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1324, 0, 'en', 'core/setting/setting', 'media.wasabi_bucket', 'Wasabi Bucket', '2022-04-20 19:52:53', '2022-04-20 19:53:11');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1325, 0, 'en', 'core/setting/setting', 'media.wasabi_root', 'Wasabi Root', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1326, 0, 'en', 'core/setting/setting', 'media.default_placeholder_image', 'Default placeholder image', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1327, 0, 'en', 'core/setting/setting', 'media.enable_chunk', 'Enable chunk size upload?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1328, 0, 'en', 'core/setting/setting', 'media.chunk_size', 'Chunk size (Bytes)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1329, 0, 'en', 'core/setting/setting', 'media.chunk_size_placeholder', 'Default: 1048576 ~ 1MB', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1330, 0, 'en', 'core/setting/setting', 'media.max_file_size', 'Chunk max file size (MB)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1331, 0, 'en', 'core/setting/setting', 'media.max_file_size_placeholder', 'Default: 1048576 ~ 1GB', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1332, 0, 'en', 'core/setting/setting', 'media.enable_watermark', 'Enable watermark?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1333, 0, 'en', 'core/setting/setting', 'media.watermark_source', 'Watermark image', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1334, 0, 'en', 'core/setting/setting', 'media.watermark_size', 'Size of watermark (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1335, 0, 'en', 'core/setting/setting', 'media.watermark_size_placeholder', 'Default: 10 (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1336, 0, 'en', 'core/setting/setting', 'media.watermark_opacity', 'Watermark Opacity (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1337, 0, 'en', 'core/setting/setting', 'media.watermark_opacity_placeholder', 'Default: 70 (%)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1338, 0, 'en', 'core/setting/setting', 'media.watermark_position', 'Watermark position', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1339, 0, 'en', 'core/setting/setting', 'media.watermark_position_x', 'Watermark position X', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1340, 0, 'en', 'core/setting/setting', 'media.watermark_position_y', 'Watermark position Y', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1341, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_left', 'Top left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1342, 0, 'en', 'core/setting/setting', 'media.watermark_position_top_right', 'Top right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1343, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_left', 'Bottom left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1344, 0, 'en', 'core/setting/setting', 'media.watermark_position_bottom_right', 'Bottom right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1345, 0, 'en', 'core/setting/setting', 'media.watermark_position_center', 'Center', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1346, 0, 'en', 'core/setting/setting', 'media.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1347, 0, 'en', 'core/setting/setting', 'media.bunnycdn_hostname', 'Hostname', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1348, 0, 'en', 'core/setting/setting', 'media.bunnycdn_zone', 'Zone Name (The name of your storage zone)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1349, 0, 'en', 'core/setting/setting', 'media.bunnycdn_key', 'FTP & API Access Password (The storage zone API Access Password)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1350, 0, 'en', 'core/setting/setting', 'media.bunnycdn_region', 'Region (The storage zone region)', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1351, 0, 'en', 'core/setting/setting', 'media.optional', 'Optional', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1352, 0, 'en', 'core/setting/setting', 'license.purchase_code', 'Purchase code', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1353, 0, 'en', 'core/setting/setting', 'license.buyer', 'Buyer', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1354, 0, 'en', 'core/setting/setting', 'field_type_not_exists', 'This field type does not exist', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1355, 0, 'en', 'core/setting/setting', 'save_settings', 'Save settings', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1356, 0, 'en', 'core/setting/setting', 'template', 'Template', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1357, 0, 'en', 'core/setting/setting', 'description', 'Description', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1358, 0, 'en', 'core/setting/setting', 'enable', 'Enable', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1359, 0, 'en', 'core/setting/setting', 'send', 'Send', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1360, 0, 'en', 'core/setting/setting', 'test_email_description', 'To send test email, please make sure you are updated configuration to send mail!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1361, 0, 'en', 'core/setting/setting', 'test_email_input_placeholder', 'Enter the email which you want to send test email.', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1362, 0, 'en', 'core/setting/setting', 'test_email_modal_title', 'Send a test email', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1363, 0, 'en', 'core/setting/setting', 'test_send_mail', 'Send test mail', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1364, 0, 'en', 'core/setting/setting', 'test_email_send_success', 'Send email successfully!', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1365, 0, 'en', 'core/setting/setting', 'locale_direction_ltr', 'Left to Right', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1366, 0, 'en', 'core/setting/setting', 'locale_direction_rtl', 'Right to Left', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1367, 0, 'en', 'core/setting/setting', 'saving', 'Saving...', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1368, 0, 'en', 'core/setting/setting', 'emails_warning', 'You can add up to :count emails', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1369, 0, 'en', 'core/setting/setting', 'email_add_more', 'Add more', '2022-04-20 19:52:53', '2022-04-20 19:53:11'),
(1516, 0, 'en', 'core/table/table', 'operations', 'Operations', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1517, 0, 'en', 'core/table/table', 'loading_data', 'Loading data from server', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1518, 0, 'en', 'core/table/table', 'display', 'Display', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1519, 0, 'en', 'core/table/table', 'all', 'All', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1520, 0, 'en', 'core/table/table', 'edit_entry', 'Edit', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1521, 0, 'en', 'core/table/table', 'delete_entry', 'Delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1522, 0, 'en', 'core/table/table', 'show_from', 'Showing from', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1523, 0, 'en', 'core/table/table', 'to', 'to', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1524, 0, 'en', 'core/table/table', 'in', 'in', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1525, 0, 'en', 'core/table/table', 'records', 'records', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1526, 0, 'en', 'core/table/table', 'no_data', 'No data to display', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1527, 0, 'en', 'core/table/table', 'no_record', 'No record', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1528, 0, 'en', 'core/table/table', 'loading', 'Loading data from server', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1529, 0, 'en', 'core/table/table', 'confirm_delete', 'Confirm delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1530, 0, 'en', 'core/table/table', 'confirm_delete_msg', 'Do you really want to delete this record?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1531, 0, 'en', 'core/table/table', 'cancel', 'Cancel', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1532, 0, 'en', 'core/table/table', 'delete', 'Delete', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1533, 0, 'en', 'core/table/table', 'close', 'Close', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1534, 0, 'en', 'core/table/table', 'contains', 'Contains', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1535, 0, 'en', 'core/table/table', 'is_equal_to', 'Is equal to', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1536, 0, 'en', 'core/table/table', 'greater_than', 'Greater than', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1537, 0, 'en', 'core/table/table', 'less_than', 'Less than', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1538, 0, 'en', 'core/table/table', 'value', 'Value', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1539, 0, 'en', 'core/table/table', 'select_field', 'Select field', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1540, 0, 'en', 'core/table/table', 'reset', 'Reset', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1541, 0, 'en', 'core/table/table', 'add_additional_filter', 'Add additional filter', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1542, 0, 'en', 'core/table/table', 'apply', 'Apply', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1543, 0, 'en', 'core/table/table', 'filters', 'Filters', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1544, 0, 'en', 'core/table/table', 'bulk_change', 'Bulk changes', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1545, 0, 'en', 'core/table/table', 'select_option', 'Select option', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1546, 0, 'en', 'core/table/table', 'bulk_actions', 'Bulk Actions', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1547, 0, 'en', 'core/table/table', 'save_bulk_change_success', 'Update data for selected record(s) successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1548, 0, 'en', 'core/table/table', 'please_select_record', 'Please select at least one record to perform this action!', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1549, 0, 'en', 'core/table/table', 'filtered', '(filtered from _MAX_ total records)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1550, 0, 'en', 'core/table/table', 'search', 'Search...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1586, 0, 'en', 'packages/menu/menu', 'name', 'Menus', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1587, 0, 'en', 'packages/menu/menu', 'key_name', 'Menu name (key: :key)', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1588, 0, 'en', 'packages/menu/menu', 'basic_info', 'Basic information', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1589, 0, 'en', 'packages/menu/menu', 'add_to_menu', 'Add to menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1590, 0, 'en', 'packages/menu/menu', 'custom_link', 'Custom link', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1591, 0, 'en', 'packages/menu/menu', 'add_link', 'Add link', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1592, 0, 'en', 'packages/menu/menu', 'structure', 'Menu structure', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1593, 0, 'en', 'packages/menu/menu', 'remove', 'Remove', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1594, 0, 'en', 'packages/menu/menu', 'cancel', 'Cancel', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1595, 0, 'en', 'packages/menu/menu', 'title', 'Title', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1596, 0, 'en', 'packages/menu/menu', 'icon', 'Icon', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1597, 0, 'en', 'packages/menu/menu', 'url', 'URL', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1598, 0, 'en', 'packages/menu/menu', 'target', 'Target', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1599, 0, 'en', 'packages/menu/menu', 'css_class', 'CSS class', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1600, 0, 'en', 'packages/menu/menu', 'self_open_link', 'Open link directly', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1601, 0, 'en', 'packages/menu/menu', 'blank_open_link', 'Open link in new tab', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1602, 0, 'en', 'packages/menu/menu', 'create', 'Create menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1603, 0, 'en', 'packages/menu/menu', 'edit', 'Edit menu', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1604, 0, 'en', 'packages/menu/menu', 'menu_settings', 'Menu settings', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1605, 0, 'en', 'packages/menu/menu', 'display_location', 'Display location', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1626, 0, 'en', 'packages/optimize/optimize', 'settings.title', 'Optimize page speed', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1627, 0, 'en', 'packages/optimize/optimize', 'settings.description', 'Minify HTML output, inline CSS, remove comments...', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1628, 0, 'en', 'packages/optimize/optimize', 'settings.enable', 'Enable optimize page speed?', '2022-04-20 19:52:54', '2022-04-20 19:53:11'),
(1632, 0, 'en', 'packages/page/pages', 'create', 'Create new page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1633, 0, 'en', 'packages/page/pages', 'edit', 'Edit page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1634, 0, 'en', 'packages/page/pages', 'form.name', 'Name', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1635, 0, 'en', 'packages/page/pages', 'form.name_placeholder', 'Page\'s name (Maximum 120 characters)', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1636, 0, 'en', 'packages/page/pages', 'form.content', 'Content', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1637, 0, 'en', 'packages/page/pages', 'form.note', 'Note content', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1638, 0, 'en', 'packages/page/pages', 'notices.no_select', 'Please select at least one record to take this action!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1639, 0, 'en', 'packages/page/pages', 'notices.update_success_message', 'Update successfully', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1640, 0, 'en', 'packages/page/pages', 'cannot_delete', 'Page could not be deleted', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1641, 0, 'en', 'packages/page/pages', 'deleted', 'Page deleted', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1642, 0, 'en', 'packages/page/pages', 'pages', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1643, 0, 'en', 'packages/page/pages', 'menu', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1644, 0, 'en', 'packages/page/pages', 'menu_name', 'Pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1645, 0, 'en', 'packages/page/pages', 'edit_this_page', 'Edit this page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1646, 0, 'en', 'packages/page/pages', 'total_pages', 'Total pages', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1647, 0, 'en', 'packages/page/pages', 'settings.show_on_front', 'Your homepage displays', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1648, 0, 'en', 'packages/page/pages', 'settings.select', '— Select —', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1649, 0, 'en', 'packages/page/pages', 'front_page', 'Front Page', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1668, 0, 'en', 'packages/plugin-management/plugin', 'enabled', 'Enabled', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1669, 0, 'en', 'packages/plugin-management/plugin', 'deactivated', 'Deactivated', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1670, 0, 'en', 'packages/plugin-management/plugin', 'activated', 'Activated', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1671, 0, 'en', 'packages/plugin-management/plugin', 'activate', 'Activate', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1672, 0, 'en', 'packages/plugin-management/plugin', 'deactivate', 'Deactivate', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1673, 0, 'en', 'packages/plugin-management/plugin', 'author', 'By', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1674, 0, 'en', 'packages/plugin-management/plugin', 'update_plugin_status_success', 'Update plugin successfully', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1675, 0, 'en', 'packages/plugin-management/plugin', 'plugins', 'Plugins', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1676, 0, 'en', 'packages/plugin-management/plugin', 'missing_required_plugins', 'Please activate plugin(s): :plugins before activate this plugin!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1677, 0, 'en', 'packages/plugin-management/plugin', 'remove', 'Remove', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1678, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_success', 'Remove plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1679, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin', 'Remove plugin', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1680, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_message', 'Do you really want to remove this plugin?', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1681, 0, 'en', 'packages/plugin-management/plugin', 'remove_plugin_confirm_yes', 'Yes, remove it!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1682, 0, 'en', 'packages/plugin-management/plugin', 'total_plugins', 'Total plugins', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1683, 0, 'en', 'packages/plugin-management/plugin', 'invalid_plugin', 'This plugin is not a valid plugin, please check it again!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1684, 0, 'en', 'packages/plugin-management/plugin', 'version', 'Version', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1685, 0, 'en', 'packages/plugin-management/plugin', 'invalid_json', 'Invalid plugin.json!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1686, 0, 'en', 'packages/plugin-management/plugin', 'activate_success', 'Activate plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1687, 0, 'en', 'packages/plugin-management/plugin', 'activated_already', 'This plugin is activated already!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1688, 0, 'en', 'packages/plugin-management/plugin', 'plugin_not_exist', 'This plugin is not exists.', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1689, 0, 'en', 'packages/plugin-management/plugin', 'missing_json_file', 'Missing file plugin.json!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1690, 0, 'en', 'packages/plugin-management/plugin', 'plugin_invalid', 'Plugin is valid!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1691, 0, 'en', 'packages/plugin-management/plugin', 'published_assets_success', 'Publish assets for plugin :name successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1692, 0, 'en', 'packages/plugin-management/plugin', 'plugin_removed', 'Plugin has been removed!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1693, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_success', 'Deactivate plugin successfully!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1694, 0, 'en', 'packages/plugin-management/plugin', 'deactivated_already', 'This plugin is deactivated already!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1695, 0, 'en', 'packages/plugin-management/plugin', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1696, 0, 'en', 'packages/plugin-management/plugin', 'plugin_is_not_ready', 'Plugin :name is not ready to use', '2022-04-20 19:52:54', '2022-04-20 19:53:12'),
(1724, 0, 'en', 'packages/seo-helper/seo-helper', 'meta_box_header', 'Search Engine Optimize', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1725, 0, 'en', 'packages/seo-helper/seo-helper', 'edit_seo_meta', 'Edit SEO meta', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1726, 0, 'en', 'packages/seo-helper/seo-helper', 'default_description', 'Setup meta title & description to make your site easy to discovered on search engines such as Google', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1727, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_title', 'SEO Title', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1728, 0, 'en', 'packages/seo-helper/seo-helper', 'seo_description', 'SEO description', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1734, 0, 'en', 'packages/slug/slug', 'permalink_settings', 'Permalink', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1735, 0, 'en', 'packages/slug/slug', 'settings.title', 'Permalink settings', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1736, 0, 'en', 'packages/slug/slug', 'settings.description', 'Manage permalink for all modules.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1737, 0, 'en', 'packages/slug/slug', 'settings.preview', 'Preview', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1738, 0, 'en', 'packages/slug/slug', 'settings.turn_off_automatic_url_translation_into_latin', 'Turn off automatic URL translation into Latin?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1739, 0, 'en', 'packages/slug/slug', 'preview', 'Preview', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1740, 0, 'en', 'packages/slug/slug', 'prefix_for', 'Prefix for :name', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1746, 0, 'en', 'packages/theme/theme', 'name', 'Themes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1747, 0, 'en', 'packages/theme/theme', 'theme', 'Theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1748, 0, 'en', 'packages/theme/theme', 'author', 'Author', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1749, 0, 'en', 'packages/theme/theme', 'version', 'Version', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1750, 0, 'en', 'packages/theme/theme', 'description', 'Description', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1751, 0, 'en', 'packages/theme/theme', 'active_success', 'Activate theme :name successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1752, 0, 'en', 'packages/theme/theme', 'active', 'Active', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1753, 0, 'en', 'packages/theme/theme', 'activated', 'Activated', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1754, 0, 'en', 'packages/theme/theme', 'appearance', 'Appearance', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1755, 0, 'en', 'packages/theme/theme', 'theme_options', 'Theme options', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1756, 0, 'en', 'packages/theme/theme', 'save_changes', 'Save Changes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1757, 0, 'en', 'packages/theme/theme', 'developer_mode', 'Developer Mode Enabled', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1758, 0, 'en', 'packages/theme/theme', 'custom_css', 'Custom CSS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1759, 0, 'en', 'packages/theme/theme', 'custom_js', 'Custom JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1760, 0, 'en', 'packages/theme/theme', 'custom_header_js', 'Header JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1761, 0, 'en', 'packages/theme/theme', 'custom_header_js_placeholder', 'JS in header of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1762, 0, 'en', 'packages/theme/theme', 'custom_body_js', 'Body JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1763, 0, 'en', 'packages/theme/theme', 'custom_body_js_placeholder', 'JS in body of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1764, 0, 'en', 'packages/theme/theme', 'custom_footer_js', 'Footer JS', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1765, 0, 'en', 'packages/theme/theme', 'custom_footer_js_placeholder', 'JS in footer of page, wrap it inside &#x3C;script&#x3E;&#x3C;/script&#x3E;', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1766, 0, 'en', 'packages/theme/theme', 'remove_theme_success', 'Remove theme successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1767, 0, 'en', 'packages/theme/theme', 'theme_is_not_existed', 'This theme is not existed!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1768, 0, 'en', 'packages/theme/theme', 'remove', 'Remove', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1769, 0, 'en', 'packages/theme/theme', 'remove_theme', 'Remove theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1770, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_message', 'Do you really want to remove this theme?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1771, 0, 'en', 'packages/theme/theme', 'remove_theme_confirm_yes', 'Yes, remove it!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1772, 0, 'en', 'packages/theme/theme', 'total_themes', 'Total themes', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1773, 0, 'en', 'packages/theme/theme', 'show_admin_bar', 'Show admin bar (When admin logged in, still show admin bar in website)?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1774, 0, 'en', 'packages/theme/theme', 'settings.title', 'Theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1775, 0, 'en', 'packages/theme/theme', 'settings.description', 'Setting for theme', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1776, 0, 'en', 'packages/theme/theme', 'settings.redirect_404_to_homepage', 'Redirect all not found requests to homepage?', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1777, 0, 'en', 'packages/theme/theme', 'add_new', 'Add new', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1778, 0, 'en', 'packages/theme/theme', 'theme_activated_already', 'Theme \":name\" is activated already!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1779, 0, 'en', 'packages/theme/theme', 'missing_json_file', 'Missing file theme.json!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1780, 0, 'en', 'packages/theme/theme', 'theme_invalid', 'Theme is valid!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1781, 0, 'en', 'packages/theme/theme', 'published_assets_success', 'Publish assets for :themes successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1782, 0, 'en', 'packages/theme/theme', 'cannot_remove_theme', 'Cannot remove activated theme, please activate another theme before removing \":name\"!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1783, 0, 'en', 'packages/theme/theme', 'theme_deleted', 'Theme \":name\" has been destroyed.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1784, 0, 'en', 'packages/theme/theme', 'removed_assets', 'Remove assets of a theme :name successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1785, 0, 'en', 'packages/theme/theme', 'update_custom_css_success', 'Update custom CSS successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1786, 0, 'en', 'packages/theme/theme', 'update_custom_js_success', 'Update custom JS successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1787, 0, 'en', 'packages/theme/theme', 'go_to_dashboard', 'Go to dashboard', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1788, 0, 'en', 'packages/theme/theme', 'custom_css_placeholder', 'Using Ctrl + Space to autocomplete.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1789, 0, 'en', 'packages/theme/theme', 'theme_option_general', 'General', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1790, 0, 'en', 'packages/theme/theme', 'theme_option_general_description', 'General settings', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1791, 0, 'en', 'packages/theme/theme', 'theme_option_seo_open_graph_image', 'SEO default Open Graph image', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1792, 0, 'en', 'packages/theme/theme', 'theme_option_logo', 'Logo', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1793, 0, 'en', 'packages/theme/theme', 'theme_option_favicon', 'Favicon', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1794, 0, 'en', 'packages/theme/theme', 'folder_is_not_writeable', 'Cannot write files! Folder :name is not writable. Please chmod to make it writable!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1818, 0, 'en', 'packages/widget/widget', 'name', 'Widgets', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1819, 0, 'en', 'packages/widget/widget', 'create', 'New widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1820, 0, 'en', 'packages/widget/widget', 'edit', 'Edit widget', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1821, 0, 'en', 'packages/widget/widget', 'delete', 'Delete', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1822, 0, 'en', 'packages/widget/widget', 'available', 'Available Widgets', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1823, 0, 'en', 'packages/widget/widget', 'instruction', 'To activate a widget drag it to a sidebar or click on it. To deactivate a widget and delete its settings, drag it back.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1824, 0, 'en', 'packages/widget/widget', 'number_tag_display', 'Number tags will be display', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1825, 0, 'en', 'packages/widget/widget', 'number_post_display', 'Number posts will be display', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1826, 0, 'en', 'packages/widget/widget', 'select_menu', 'Select Menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1827, 0, 'en', 'packages/widget/widget', 'widget_text', 'Text', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1828, 0, 'en', 'packages/widget/widget', 'widget_text_description', 'Arbitrary text or HTML.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1829, 0, 'en', 'packages/widget/widget', 'widget_recent_post', 'Recent Posts', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1830, 0, 'en', 'packages/widget/widget', 'widget_recent_post_description', 'Recent posts widget.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1831, 0, 'en', 'packages/widget/widget', 'widget_custom_menu', 'Custom Menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1832, 0, 'en', 'packages/widget/widget', 'widget_custom_menu_description', 'Add a custom menu to your widget area.', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1833, 0, 'en', 'packages/widget/widget', 'widget_tag', 'Tags', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1834, 0, 'en', 'packages/widget/widget', 'widget_tag_description', 'Popular tags', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1835, 0, 'en', 'packages/widget/widget', 'save_success', 'Save widget successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1836, 0, 'en', 'packages/widget/widget', 'delete_success', 'Delete widget successfully!', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1837, 0, 'en', 'packages/widget/widget', 'primary_sidebar_name', 'Primary sidebar', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1838, 0, 'en', 'packages/widget/widget', 'primary_sidebar_description', 'Primary sidebar section', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1858, 0, 'en', 'plugins/analytics/analytics', 'sessions', 'Sessions', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1859, 0, 'en', 'plugins/analytics/analytics', 'visitors', 'Visitors', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1860, 0, 'en', 'plugins/analytics/analytics', 'pageviews', 'Pageviews', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1861, 0, 'en', 'plugins/analytics/analytics', 'bounce_rate', 'Bounce Rate', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1862, 0, 'en', 'plugins/analytics/analytics', 'page_session', 'Pages/Session', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1863, 0, 'en', 'plugins/analytics/analytics', 'avg_duration', 'Avg. Duration', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1864, 0, 'en', 'plugins/analytics/analytics', 'percent_new_session', 'Percent new session', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1865, 0, 'en', 'plugins/analytics/analytics', 'new_users', 'New visitors', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1866, 0, 'en', 'plugins/analytics/analytics', 'visits', 'visits', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1867, 0, 'en', 'plugins/analytics/analytics', 'views', 'views', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1868, 0, 'en', 'plugins/analytics/analytics', 'view_id_not_specified', 'You must provide a valid view id. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1869, 0, 'en', 'plugins/analytics/analytics', 'credential_is_not_valid', 'Analytics credentials is not valid. The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1870, 0, 'en', 'plugins/analytics/analytics', 'start_date_can_not_before_end_date', 'Start date :start_date cannot be after end date :end_date', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1871, 0, 'en', 'plugins/analytics/analytics', 'wrong_configuration', 'To view analytics you\'ll need to get a google analytics client id and add it to your settings. <br /> You also need JSON credential data. <br /> The document here: <a href=\"https://docs.botble.com/cms/master/plugin-analytics\" target=\"_blank\">https://docs.botble.com/cms/master/plugin-analytics</a>', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1872, 0, 'en', 'plugins/analytics/analytics', 'settings.title', 'Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1873, 0, 'en', 'plugins/analytics/analytics', 'settings.description', 'Config Credentials for Google Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1874, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code', 'Tracking ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1875, 0, 'en', 'plugins/analytics/analytics', 'settings.tracking_code_placeholder', 'Example: GA-12586526-8', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1876, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id', 'View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1877, 0, 'en', 'plugins/analytics/analytics', 'settings.view_id_description', 'Google Analytics View ID', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1878, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1879, 0, 'en', 'plugins/analytics/analytics', 'settings.json_credential_description', 'Service Account Credentials', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1880, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_page', 'Top Most Visit Pages', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1881, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_browser', 'Top Browsers', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1882, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_referrer', 'Top Referrers', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1883, 0, 'en', 'plugins/analytics/analytics', 'widget_analytics_general', 'Site Analytics', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1910, 0, 'en', 'plugins/audit-log/history', 'name', 'Activities Logs', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1911, 0, 'en', 'plugins/audit-log/history', 'created', 'created', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1912, 0, 'en', 'plugins/audit-log/history', 'updated', 'updated', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1913, 0, 'en', 'plugins/audit-log/history', 'deleted', 'deleted', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1914, 0, 'en', 'plugins/audit-log/history', 'logged in', 'logged in', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1915, 0, 'en', 'plugins/audit-log/history', 'logged out', 'logged out', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1916, 0, 'en', 'plugins/audit-log/history', 'changed password', 'changed password', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1917, 0, 'en', 'plugins/audit-log/history', 'updated profile', 'updated profile', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1918, 0, 'en', 'plugins/audit-log/history', 'attached', 'attached', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1919, 0, 'en', 'plugins/audit-log/history', 'shared', 'shared', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1920, 0, 'en', 'plugins/audit-log/history', 'to the system', 'to the system', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1921, 0, 'en', 'plugins/audit-log/history', 'of the system', 'of the system', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1922, 0, 'en', 'plugins/audit-log/history', 'menu', 'menu', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1923, 0, 'en', 'plugins/audit-log/history', 'post', 'post', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1924, 0, 'en', 'plugins/audit-log/history', 'page', 'page', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1925, 0, 'en', 'plugins/audit-log/history', 'category', 'category', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1926, 0, 'en', 'plugins/audit-log/history', 'tag', 'tag', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1927, 0, 'en', 'plugins/audit-log/history', 'user', 'user', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1928, 0, 'en', 'plugins/audit-log/history', 'contact', 'contact', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1929, 0, 'en', 'plugins/audit-log/history', 'backup', 'backup', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1930, 0, 'en', 'plugins/audit-log/history', 'custom-field', 'custom field', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1931, 0, 'en', 'plugins/audit-log/history', 'widget_audit_logs', 'Activities Logs', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1932, 0, 'en', 'plugins/audit-log/history', 'action', 'Action', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1933, 0, 'en', 'plugins/audit-log/history', 'user_agent', 'User Agent', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1934, 0, 'en', 'plugins/audit-log/history', 'system', 'System', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1935, 0, 'en', 'plugins/audit-log/history', 'delete_all', 'Delete all records', '2022-04-20 19:52:55', '2022-04-20 19:53:12'),
(1962, 0, 'en', 'plugins/backup/backup', 'name', 'Backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1963, 0, 'en', 'plugins/backup/backup', 'backup_description', 'Backup database and uploads folder.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1964, 0, 'en', 'plugins/backup/backup', 'create_backup_success', 'Created backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1965, 0, 'en', 'plugins/backup/backup', 'delete_backup_success', 'Delete backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1966, 0, 'en', 'plugins/backup/backup', 'restore_backup_success', 'Restore backup successfully!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1967, 0, 'en', 'plugins/backup/backup', 'generate_btn', 'Generate backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1968, 0, 'en', 'plugins/backup/backup', 'create', 'Create a backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1969, 0, 'en', 'plugins/backup/backup', 'restore', 'Restore a backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1970, 0, 'en', 'plugins/backup/backup', 'create_btn', 'Create', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1971, 0, 'en', 'plugins/backup/backup', 'restore_btn', 'Restore', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1972, 0, 'en', 'plugins/backup/backup', 'restore_confirm_msg', 'Do you really want to restore this revision?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1973, 0, 'en', 'plugins/backup/backup', 'download_uploads_folder', 'Download backup of uploads folder', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1974, 0, 'en', 'plugins/backup/backup', 'download_database', 'Download backup of database', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1975, 0, 'en', 'plugins/backup/backup', 'restore_tooltip', 'Restore this backup', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1976, 0, 'en', 'plugins/backup/backup', 'demo_alert', 'Hi guest, if you see demo site is destroyed, please help me <a href=\":link\">go here</a> and restore demo site to the latest revision! Thank you so much!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1977, 0, 'en', 'plugins/backup/backup', 'menu_name', 'Backups', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1978, 0, 'en', 'plugins/backup/backup', 'size', 'Size', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1979, 0, 'en', 'plugins/backup/backup', 'no_backups', 'There is no backup now!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1980, 0, 'en', 'plugins/backup/backup', 'proc_open_disabled_error', 'Function <strong>proc_open()</strong> has been disabled so the system cannot backup the database. Please contact your hosting provider to enable it.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1981, 0, 'en', 'plugins/backup/backup', 'database_backup_not_existed', 'Backup database is not existed!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1982, 0, 'en', 'plugins/backup/backup', 'uploads_folder_backup_not_existed', 'Backup uploads folder is not existed!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1983, 0, 'en', 'plugins/backup/backup', 'important_message1', 'This is a simple backup feature, it is a solution for you if your site has < 1GB data and can be used for quickly backup your site.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1984, 0, 'en', 'plugins/backup/backup', 'important_message2', 'If you have more than 1GB images/files in local storage, you should use backup feature of your hosting or VPS.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1985, 0, 'en', 'plugins/backup/backup', 'important_message3', 'To backup your database, function <strong>proc_open()</strong> or <strong>system()</strong> must be enabled. Contact your hosting provider to enable it if it is disabled.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1986, 0, 'en', 'plugins/backup/backup', 'important_message4', 'It is not a full backup, it is just back up uploaded files and your database.', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(1987, 0, 'en', 'plugins/backup/backup', 'cannot_restore_database', 'Cannot restore database. The database backup is missing!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2004, 0, 'en', 'plugins/block/block', 'name', 'Block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2005, 0, 'en', 'plugins/block/block', 'create', 'New block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2006, 0, 'en', 'plugins/block/block', 'edit', 'Edit block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2007, 0, 'en', 'plugins/block/block', 'menu', 'Static Blocks', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2008, 0, 'en', 'plugins/block/block', 'static_block_short_code_name', 'Static Block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2009, 0, 'en', 'plugins/block/block', 'static_block_short_code_description', 'Add a custom static block', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2010, 0, 'en', 'plugins/block/block', 'alias', 'Alias', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2015, 0, 'en', 'plugins/blog/base', 'menu_name', 'Blog', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2016, 0, 'en', 'plugins/blog/base', 'blog_page', 'Blog Page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2017, 0, 'en', 'plugins/blog/base', 'select', '-- Select --', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2018, 0, 'en', 'plugins/blog/base', 'blog_page_id', 'Blog page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2019, 0, 'en', 'plugins/blog/base', 'number_posts_per_page', 'Number posts per page', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2020, 0, 'en', 'plugins/blog/base', 'write_some_tags', 'Write some tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2021, 0, 'en', 'plugins/blog/base', 'short_code_name', 'Blog posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2022, 0, 'en', 'plugins/blog/base', 'short_code_description', 'Add blog posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2023, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_category', 'Number of posts per page in a category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2024, 0, 'en', 'plugins/blog/base', 'number_posts_per_page_in_tag', 'Number of posts per page in a tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2025, 0, 'en', 'plugins/blog/categories', 'create', 'Create new category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2026, 0, 'en', 'plugins/blog/categories', 'edit', 'Edit category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2027, 0, 'en', 'plugins/blog/categories', 'menu', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2028, 0, 'en', 'plugins/blog/categories', 'edit_this_category', 'Edit this category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2029, 0, 'en', 'plugins/blog/categories', 'menu_name', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2030, 0, 'en', 'plugins/blog/categories', 'none', 'None', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2031, 0, 'en', 'plugins/blog/categories', 'total_posts', 'Total posts: :total', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2032, 0, 'en', 'plugins/blog/member', 'dob', 'Born :date', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2033, 0, 'en', 'plugins/blog/member', 'draft_posts', 'Draft Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2034, 0, 'en', 'plugins/blog/member', 'pending_posts', 'Pending Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2035, 0, 'en', 'plugins/blog/member', 'published_posts', 'Published Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2036, 0, 'en', 'plugins/blog/member', 'posts', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2037, 0, 'en', 'plugins/blog/member', 'write_post', 'Write a post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2038, 0, 'en', 'plugins/blog/posts', 'create', 'Create new post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2039, 0, 'en', 'plugins/blog/posts', 'edit', 'Edit post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2040, 0, 'en', 'plugins/blog/posts', 'form.name', 'Name', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2041, 0, 'en', 'plugins/blog/posts', 'form.name_placeholder', 'Post\'s name (Maximum :c characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2042, 0, 'en', 'plugins/blog/posts', 'form.description', 'Description', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2043, 0, 'en', 'plugins/blog/posts', 'form.description_placeholder', 'Short description for post (Maximum :c characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2044, 0, 'en', 'plugins/blog/posts', 'form.categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2045, 0, 'en', 'plugins/blog/posts', 'form.tags', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2046, 0, 'en', 'plugins/blog/posts', 'form.tags_placeholder', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2047, 0, 'en', 'plugins/blog/posts', 'form.content', 'Content', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2048, 0, 'en', 'plugins/blog/posts', 'form.is_featured', 'Is featured?', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2049, 0, 'en', 'plugins/blog/posts', 'form.note', 'Note content', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2050, 0, 'en', 'plugins/blog/posts', 'form.format_type', 'Format', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2051, 0, 'en', 'plugins/blog/posts', 'cannot_delete', 'Post could not be deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2052, 0, 'en', 'plugins/blog/posts', 'post_deleted', 'Post deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2053, 0, 'en', 'plugins/blog/posts', 'posts', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2054, 0, 'en', 'plugins/blog/posts', 'post', 'Post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2055, 0, 'en', 'plugins/blog/posts', 'edit_this_post', 'Edit this post', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2056, 0, 'en', 'plugins/blog/posts', 'no_new_post_now', 'There is no new post now!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2057, 0, 'en', 'plugins/blog/posts', 'menu_name', 'Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2058, 0, 'en', 'plugins/blog/posts', 'widget_posts_recent', 'Recent Posts', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2059, 0, 'en', 'plugins/blog/posts', 'categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2060, 0, 'en', 'plugins/blog/posts', 'category', 'Category', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2061, 0, 'en', 'plugins/blog/posts', 'author', 'Author', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2062, 0, 'en', 'plugins/blog/tags', 'form.name', 'Name', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2063, 0, 'en', 'plugins/blog/tags', 'form.name_placeholder', 'Tag\'s name (Maximum 120 characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2064, 0, 'en', 'plugins/blog/tags', 'form.description', 'Description', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2065, 0, 'en', 'plugins/blog/tags', 'form.description_placeholder', 'Short description for tag (Maximum 400 characters)', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2066, 0, 'en', 'plugins/blog/tags', 'form.categories', 'Categories', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2067, 0, 'en', 'plugins/blog/tags', 'notices.no_select', 'Please select at least one tag to take this action!', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2068, 0, 'en', 'plugins/blog/tags', 'create', 'Create new tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2069, 0, 'en', 'plugins/blog/tags', 'edit', 'Edit tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2070, 0, 'en', 'plugins/blog/tags', 'cannot_delete', 'Tag could not be deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2071, 0, 'en', 'plugins/blog/tags', 'deleted', 'Tag deleted', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2072, 0, 'en', 'plugins/blog/tags', 'menu', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2073, 0, 'en', 'plugins/blog/tags', 'edit_this_tag', 'Edit this tag', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2074, 0, 'en', 'plugins/blog/tags', 'menu_name', 'Tags', '2022-04-20 19:52:56', '2022-04-20 19:53:12'),
(2128, 0, 'en', 'plugins/captcha/captcha', 'settings.title', 'Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2129, 0, 'en', 'plugins/captcha/captcha', 'settings.description', 'Settings for Google Captcha', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2130, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_site_key', 'Captcha Site Key', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2131, 0, 'en', 'plugins/captcha/captcha', 'settings.captcha_secret', 'Captcha Secret', '2022-04-20 19:52:57', '2022-04-20 19:53:12');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2132, 0, 'en', 'plugins/captcha/captcha', 'settings.enable_captcha', 'Enable Captcha?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2133, 0, 'en', 'plugins/captcha/captcha', 'settings.helper', 'Go here to get credentials https://www.google.com/recaptcha/admin#list.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2134, 0, 'en', 'plugins/captcha/captcha', 'settings.hide_badge', 'Hide recaptcha badge (for v3)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2135, 0, 'en', 'plugins/captcha/captcha', 'settings.type', 'Type', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2136, 0, 'en', 'plugins/captcha/captcha', 'settings.v2_description', 'V2 (Verify requests with a challenge)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2137, 0, 'en', 'plugins/captcha/captcha', 'settings.v3_description', 'V3 (Verify requests with a score)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2138, 0, 'en', 'plugins/captcha/captcha', 'failed_validate', 'Failed to validate the captcha.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2145, 0, 'en', 'plugins/contact/contact', 'menu', 'Contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2146, 0, 'en', 'plugins/contact/contact', 'edit', 'View contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2147, 0, 'en', 'plugins/contact/contact', 'tables.phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2148, 0, 'en', 'plugins/contact/contact', 'tables.email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2149, 0, 'en', 'plugins/contact/contact', 'tables.full_name', 'Full Name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2150, 0, 'en', 'plugins/contact/contact', 'tables.time', 'Time', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2151, 0, 'en', 'plugins/contact/contact', 'tables.address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2152, 0, 'en', 'plugins/contact/contact', 'tables.subject', 'Subject', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2153, 0, 'en', 'plugins/contact/contact', 'tables.content', 'Content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2154, 0, 'en', 'plugins/contact/contact', 'contact_information', 'Contact information', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2155, 0, 'en', 'plugins/contact/contact', 'replies', 'Replies', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2156, 0, 'en', 'plugins/contact/contact', 'email.header', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2157, 0, 'en', 'plugins/contact/contact', 'email.title', 'New contact from your site', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2158, 0, 'en', 'plugins/contact/contact', 'form.name.required', 'Name is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2159, 0, 'en', 'plugins/contact/contact', 'form.email.required', 'Email is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2160, 0, 'en', 'plugins/contact/contact', 'form.email.email', 'The email address is not valid', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2161, 0, 'en', 'plugins/contact/contact', 'form.content.required', 'Content is required', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2162, 0, 'en', 'plugins/contact/contact', 'contact_sent_from', 'This contact information sent from', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2163, 0, 'en', 'plugins/contact/contact', 'sender', 'Sender', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2164, 0, 'en', 'plugins/contact/contact', 'sender_email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2165, 0, 'en', 'plugins/contact/contact', 'sender_address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2166, 0, 'en', 'plugins/contact/contact', 'sender_phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2167, 0, 'en', 'plugins/contact/contact', 'message_content', 'Message content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2168, 0, 'en', 'plugins/contact/contact', 'sent_from', 'Email sent from', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2169, 0, 'en', 'plugins/contact/contact', 'form_name', 'Name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2170, 0, 'en', 'plugins/contact/contact', 'form_email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2171, 0, 'en', 'plugins/contact/contact', 'form_address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2172, 0, 'en', 'plugins/contact/contact', 'form_subject', 'Subject', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2173, 0, 'en', 'plugins/contact/contact', 'form_phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2174, 0, 'en', 'plugins/contact/contact', 'form_message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2175, 0, 'en', 'plugins/contact/contact', 'required_field', 'The field with (<span style=\"color: red\">*</span>) is required.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2176, 0, 'en', 'plugins/contact/contact', 'send_btn', 'Send message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2177, 0, 'en', 'plugins/contact/contact', 'new_msg_notice', 'You have <span class=\"bold\">:count</span> New Messages', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2178, 0, 'en', 'plugins/contact/contact', 'view_all', 'View all', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2179, 0, 'en', 'plugins/contact/contact', 'statuses.read', 'Read', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2180, 0, 'en', 'plugins/contact/contact', 'statuses.unread', 'Unread', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2181, 0, 'en', 'plugins/contact/contact', 'phone', 'Phone', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2182, 0, 'en', 'plugins/contact/contact', 'address', 'Address', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2183, 0, 'en', 'plugins/contact/contact', 'message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2184, 0, 'en', 'plugins/contact/contact', 'settings.email.title', 'Contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2185, 0, 'en', 'plugins/contact/contact', 'settings.email.description', 'Contact email configuration', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2186, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_title', 'Send notice to administrator', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2187, 0, 'en', 'plugins/contact/contact', 'settings.email.templates.notice_description', 'Email template to send notice to administrator when system get new contact', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2188, 0, 'en', 'plugins/contact/contact', 'no_reply', 'No reply yet!', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2189, 0, 'en', 'plugins/contact/contact', 'reply', 'Reply', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2190, 0, 'en', 'plugins/contact/contact', 'send', 'Send', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2191, 0, 'en', 'plugins/contact/contact', 'shortcode_name', 'Contact form', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2192, 0, 'en', 'plugins/contact/contact', 'shortcode_description', 'Add a contact form', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2193, 0, 'en', 'plugins/contact/contact', 'shortcode_content_description', 'Add shortcode [contact-form][/contact-form] to editor?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2194, 0, 'en', 'plugins/contact/contact', 'message_sent_success', 'Message sent successfully!', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2238, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.name', 'Cookie Consent', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2239, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.description', 'Cookie consent settings', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2240, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.enable', 'Enable cookie consent?', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2241, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.message', 'Message', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2242, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.button_text', 'Button text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2243, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.max_width', 'Max width (px)', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2244, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.background_color', 'Background color', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2245, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.text_color', 'Text color', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2246, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_url', 'Learn more URL', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2247, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.learn_more_text', 'Learn more text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2248, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.style', 'Style', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2249, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.full_width', 'Full width', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2250, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'theme_options.minimal', 'Minimal', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2251, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'message', 'Your experience on this site will be improved by allowing cookies.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2252, 0, 'en', 'plugins/cookie-consent/cookie-consent', 'button_text', 'Allow cookies', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2253, 0, 'en', 'plugins/custom-field/base', 'admin_menu.title', 'Custom Fields', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2254, 0, 'en', 'plugins/custom-field/base', 'page_title', 'Custom Fields', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2255, 0, 'en', 'plugins/custom-field/base', 'all_field_groups', 'All field groups', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2256, 0, 'en', 'plugins/custom-field/base', 'form.create_field_group', 'Create field group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2257, 0, 'en', 'plugins/custom-field/base', 'form.edit_field_group', 'Edit field group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2258, 0, 'en', 'plugins/custom-field/base', 'form.field_items_information', 'Field items information', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2259, 0, 'en', 'plugins/custom-field/base', 'form.repeater_fields', 'Repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2260, 0, 'en', 'plugins/custom-field/base', 'form.add_field', 'Add field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2261, 0, 'en', 'plugins/custom-field/base', 'form.remove_field', 'Remove field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2262, 0, 'en', 'plugins/custom-field/base', 'form.close_field', 'Close field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2263, 0, 'en', 'plugins/custom-field/base', 'form.new_field', 'New field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2264, 0, 'en', 'plugins/custom-field/base', 'form.field_label', 'Label', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2265, 0, 'en', 'plugins/custom-field/base', 'form.field_label_helper', 'This is the title of field item. It will be shown on edit pages.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2266, 0, 'en', 'plugins/custom-field/base', 'form.field_name', 'Field name', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2267, 0, 'en', 'plugins/custom-field/base', 'form.field_name_helper', 'The alias of field item. Accepted numbers, characters and underscore.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2268, 0, 'en', 'plugins/custom-field/base', 'form.field_type', 'Field type', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2269, 0, 'en', 'plugins/custom-field/base', 'form.field_type_helper', 'Please select the type of this field.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2270, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions', 'Field instructions', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2271, 0, 'en', 'plugins/custom-field/base', 'form.field_instructions_helper', 'The instructions guide for user easier know what they need to input.', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2272, 0, 'en', 'plugins/custom-field/base', 'form.default_value', 'Default value', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2273, 0, 'en', 'plugins/custom-field/base', 'form.default_value_helper', 'The default value of field when leave it blank', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2274, 0, 'en', 'plugins/custom-field/base', 'form.placeholder', 'Placeholder', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2275, 0, 'en', 'plugins/custom-field/base', 'form.placeholder_helper', 'Placeholder text', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2276, 0, 'en', 'plugins/custom-field/base', 'form.rows', 'Rows', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2277, 0, 'en', 'plugins/custom-field/base', 'form.rows_helper', 'Rows of this textarea', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2278, 0, 'en', 'plugins/custom-field/base', 'form.choices', 'Choices', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2279, 0, 'en', 'plugins/custom-field/base', 'form.choices_helper', 'Enter each choice on a new line.<br>For more control, you may specify both a value and label like this:<br>red: Red<br>blue: Blue', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2280, 0, 'en', 'plugins/custom-field/base', 'form.button_label', 'Button for repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2281, 0, 'en', 'plugins/custom-field/base', 'form.groups.basic', 'Basic', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2282, 0, 'en', 'plugins/custom-field/base', 'form.groups.content', 'Content', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2283, 0, 'en', 'plugins/custom-field/base', 'form.groups.choice', 'Choices', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2284, 0, 'en', 'plugins/custom-field/base', 'form.groups.other', 'Other', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2285, 0, 'en', 'plugins/custom-field/base', 'form.types.text', 'Text field', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2286, 0, 'en', 'plugins/custom-field/base', 'form.types.textarea', 'Textarea', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2287, 0, 'en', 'plugins/custom-field/base', 'form.types.number', 'Number', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2288, 0, 'en', 'plugins/custom-field/base', 'form.types.email', 'Email', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2289, 0, 'en', 'plugins/custom-field/base', 'form.types.password', 'Password', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2290, 0, 'en', 'plugins/custom-field/base', 'form.types.wysiwyg', 'WYSIWYG editor', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2291, 0, 'en', 'plugins/custom-field/base', 'form.types.image', 'Image', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2292, 0, 'en', 'plugins/custom-field/base', 'form.types.file', 'File', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2293, 0, 'en', 'plugins/custom-field/base', 'form.types.select', 'Select', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2294, 0, 'en', 'plugins/custom-field/base', 'form.types.checkbox', 'Checkbox', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2295, 0, 'en', 'plugins/custom-field/base', 'form.types.radio', 'Radio', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2296, 0, 'en', 'plugins/custom-field/base', 'form.types.repeater', 'Repeater', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2297, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules', 'Display rules', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2298, 0, 'en', 'plugins/custom-field/base', 'form.rules.rules_helper', 'Show this field group if', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2299, 0, 'en', 'plugins/custom-field/base', 'form.rules.add_rule_group', 'Add rule group', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2300, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_equal_to', 'Equal to', '2022-04-20 19:52:57', '2022-04-20 19:53:12'),
(2301, 0, 'en', 'plugins/custom-field/base', 'form.rules.is_not_equal_to', 'Not equal to', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2302, 0, 'en', 'plugins/custom-field/base', 'form.rules.and', 'And', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2303, 0, 'en', 'plugins/custom-field/base', 'form.rules.or', 'Or', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2304, 0, 'en', 'plugins/custom-field/base', 'import', 'Import', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2305, 0, 'en', 'plugins/custom-field/base', 'export', 'Export', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2306, 0, 'en', 'plugins/custom-field/base', 'publish', 'Publish', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2307, 0, 'en', 'plugins/custom-field/base', 'remove_this_line', 'Remove this line', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2308, 0, 'en', 'plugins/custom-field/base', 'collapse_this_line', 'Collapse this line', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2309, 0, 'en', 'plugins/custom-field/base', 'error_occurred', 'Error occurred', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2310, 0, 'en', 'plugins/custom-field/base', 'request_completed', 'Request completed', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2311, 0, 'en', 'plugins/custom-field/base', 'item_not_existed', 'Item is not exists', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2312, 0, 'en', 'plugins/custom-field/rules', 'groups.basic', 'Basic', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2313, 0, 'en', 'plugins/custom-field/rules', 'groups.other', 'Other', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2314, 0, 'en', 'plugins/custom-field/rules', 'groups.blog', 'Blog', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2315, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user', 'Logged in user', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2316, 0, 'en', 'plugins/custom-field/rules', 'logged_in_user_has_role', 'Logged in has role', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2317, 0, 'en', 'plugins/custom-field/rules', 'page_template', 'Page template', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2318, 0, 'en', 'plugins/custom-field/rules', 'page', 'Page', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2319, 0, 'en', 'plugins/custom-field/rules', 'model_name', 'Model name', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2320, 0, 'en', 'plugins/custom-field/rules', 'model_name_page', 'Page', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2321, 0, 'en', 'plugins/custom-field/rules', 'category', 'Category', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2322, 0, 'en', 'plugins/custom-field/rules', 'post_with_related_category', 'Post with related category', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2323, 0, 'en', 'plugins/custom-field/rules', 'model_name_post', 'Post (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2324, 0, 'en', 'plugins/custom-field/rules', 'model_name_category', 'Category (blog)', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2325, 0, 'en', 'plugins/custom-field/rules', 'post_format', 'Post format', '2022-04-20 19:52:58', '2022-04-20 19:53:12'),
(2396, 0, 'en', 'plugins/gallery/gallery', 'create', 'Create new gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2397, 0, 'en', 'plugins/gallery/gallery', 'edit', 'Edit gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2398, 0, 'en', 'plugins/gallery/gallery', 'galleries', 'Galleries', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2399, 0, 'en', 'plugins/gallery/gallery', 'item', 'Gallery item', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2400, 0, 'en', 'plugins/gallery/gallery', 'select_image', 'Select images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2401, 0, 'en', 'plugins/gallery/gallery', 'reset', 'Reset gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2402, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description', 'Update photo\'s description', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2403, 0, 'en', 'plugins/gallery/gallery', 'update_photo_description_placeholder', 'Photo\'s description...', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2404, 0, 'en', 'plugins/gallery/gallery', 'delete_photo', 'Delete this photo', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2405, 0, 'en', 'plugins/gallery/gallery', 'gallery_box', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2406, 0, 'en', 'plugins/gallery/gallery', 'by', 'By', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2407, 0, 'en', 'plugins/gallery/gallery', 'menu_name', 'Galleries', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2408, 0, 'en', 'plugins/gallery/gallery', 'gallery_images', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2409, 0, 'en', 'plugins/gallery/gallery', 'add_gallery_short_code', 'Add a gallery', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2410, 0, 'en', 'plugins/gallery/gallery', 'shortcode_name', 'Gallery images', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2411, 0, 'en', 'plugins/gallery/gallery', 'limit_display', 'Limit number display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2426, 0, 'en', 'plugins/language/language', 'name', 'Languages', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2427, 0, 'en', 'plugins/language/language', 'choose_language', 'Choose a language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2428, 0, 'en', 'plugins/language/language', 'select_language', 'Select language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2429, 0, 'en', 'plugins/language/language', 'choose_language_helper', 'You can choose a language in the list or directly edit it below.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2430, 0, 'en', 'plugins/language/language', 'language_name', 'Language name', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2431, 0, 'en', 'plugins/language/language', 'language_name_helper', 'The name is how it is displayed on your site (for example: English).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2432, 0, 'en', 'plugins/language/language', 'locale', 'Locale', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2433, 0, 'en', 'plugins/language/language', 'locale_helper', 'Laravel Locale for the language (for example: <code>en</code>).', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2434, 0, 'en', 'plugins/language/language', 'language_code', 'Language code', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2435, 0, 'en', 'plugins/language/language', 'language_code_helper', 'Language code - preferably 2-letters ISO 639-1 (for example: en)', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2436, 0, 'en', 'plugins/language/language', 'text_direction', 'Text direction', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2437, 0, 'en', 'plugins/language/language', 'text_direction_helper', 'Choose the text direction for the language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2438, 0, 'en', 'plugins/language/language', 'left_to_right', 'Left to right', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2439, 0, 'en', 'plugins/language/language', 'right_to_left', 'Right to left', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2440, 0, 'en', 'plugins/language/language', 'flag', 'Flag', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2441, 0, 'en', 'plugins/language/language', 'flag_helper', 'Choose a flag for the language.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2442, 0, 'en', 'plugins/language/language', 'order', 'Order', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2443, 0, 'en', 'plugins/language/language', 'order_helper', 'Position of the language in the language switcher', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2444, 0, 'en', 'plugins/language/language', 'add_new_language', 'Add new language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2445, 0, 'en', 'plugins/language/language', 'code', 'Code', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2446, 0, 'en', 'plugins/language/language', 'default_language', 'Is default?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2447, 0, 'en', 'plugins/language/language', 'actions', 'Actions', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2448, 0, 'en', 'plugins/language/language', 'translations', 'Translations', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2449, 0, 'en', 'plugins/language/language', 'edit', 'Edit', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2450, 0, 'en', 'plugins/language/language', 'edit_tooltip', 'Edit this language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2451, 0, 'en', 'plugins/language/language', 'delete', 'Delete', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2452, 0, 'en', 'plugins/language/language', 'delete_tooltip', 'Delete this language and all its associated data', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2453, 0, 'en', 'plugins/language/language', 'choose_default_language', 'Choose :language as default language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2454, 0, 'en', 'plugins/language/language', 'current_language', 'Current record\'s language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2455, 0, 'en', 'plugins/language/language', 'edit_related', 'Edit related language for this record', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2456, 0, 'en', 'plugins/language/language', 'add_language_for_item', 'Add other language version for this record', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2457, 0, 'en', 'plugins/language/language', 'settings', 'Settings', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2458, 0, 'en', 'plugins/language/language', 'language_hide_default', 'Hide default language from URL?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2459, 0, 'en', 'plugins/language/language', 'language_display_flag_only', 'Flag only', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2460, 0, 'en', 'plugins/language/language', 'language_display_name_only', 'Name only', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2461, 0, 'en', 'plugins/language/language', 'language_display_all', 'Display all flag and name', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2462, 0, 'en', 'plugins/language/language', 'language_display', 'Language display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2463, 0, 'en', 'plugins/language/language', 'switcher_display', 'Switcher language display', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2464, 0, 'en', 'plugins/language/language', 'language_switcher_display_dropdown', 'Dropdown', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2465, 0, 'en', 'plugins/language/language', 'language_switcher_display_list', 'List', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2466, 0, 'en', 'plugins/language/language', 'current_language_edit_notification', 'You are editing \"<strong class=\"current_language_text\">:language</strong>\" version', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2467, 0, 'en', 'plugins/language/language', 'confirm-change-language', 'Confirm change language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2468, 0, 'en', 'plugins/language/language', 'confirm-change-language-message', 'Do you really want to change language to \"<strong class=\"change_to_language_text\"></strong>\" ? This action will be override \"<strong class=\"change_to_language_text\"></strong>\" version if it\'s existed!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2469, 0, 'en', 'plugins/language/language', 'confirm-change-language-btn', 'Confirm change', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2470, 0, 'en', 'plugins/language/language', 'hide_languages', 'Hide languages', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2471, 0, 'en', 'plugins/language/language', 'hide_languages_description', 'You can completely hide content in specific languages from visitors and search engines, but still view it yourself. This allows reviewing translations that are in progress.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2472, 0, 'en', 'plugins/language/language', 'hide_languages_helper_display_hidden', '{0} All languages are currently displayed.|{1} :language is currently hidden to visitors.|[2, Inf] :language are currently hidden to visitors.', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2473, 0, 'en', 'plugins/language/language', 'show_all', 'Show all', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2474, 0, 'en', 'plugins/language/language', 'change_language', 'Language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2475, 0, 'en', 'plugins/language/language', 'language_show_default_item_if_current_version_not_existed', 'Show item in default language if it is not existed in current language', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2476, 0, 'en', 'plugins/language/language', 'select_flag', 'Select a flag...', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2477, 0, 'en', 'plugins/language/language', 'delete_confirmation_message', 'Do you really want to delete this language? It also deletes all items in this language and cannot rollback!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2478, 0, 'en', 'plugins/language/language', 'added_already', 'This language was added already!', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2479, 0, 'en', 'plugins/language/language', 'language_auto_detect_user_language', 'Auto detect user language?', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2530, 0, 'en', 'plugins/member/dashboard', 'joined_on', 'Joined :date', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2531, 0, 'en', 'plugins/member/dashboard', 'dob', 'Born :date', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2532, 0, 'en', 'plugins/member/dashboard', 'email', 'Email', '2022-04-20 19:52:58', '2022-04-20 19:53:13'),
(2533, 0, 'en', 'plugins/member/dashboard', 'password', 'Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2534, 0, 'en', 'plugins/member/dashboard', 'password-confirmation', 'Confirm Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2535, 0, 'en', 'plugins/member/dashboard', 'remember-me', 'Remember Me', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2536, 0, 'en', 'plugins/member/dashboard', 'login-title', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2537, 0, 'en', 'plugins/member/dashboard', 'login-cta', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2538, 0, 'en', 'plugins/member/dashboard', 'register-title', 'Register', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2539, 0, 'en', 'plugins/member/dashboard', 'register-cta', 'Register', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2540, 0, 'en', 'plugins/member/dashboard', 'forgot-password-cta', 'Forgot Your Password?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2541, 0, 'en', 'plugins/member/dashboard', 'name', 'Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2542, 0, 'en', 'plugins/member/dashboard', 'reset-password-title', 'Reset Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2543, 0, 'en', 'plugins/member/dashboard', 'reset-password-cta', 'Reset Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2544, 0, 'en', 'plugins/member/dashboard', 'cancel-link', 'Cancel', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2545, 0, 'en', 'plugins/member/dashboard', 'logout-cta', 'Logout', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2546, 0, 'en', 'plugins/member/dashboard', 'header_profile_link', 'Profile', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2547, 0, 'en', 'plugins/member/dashboard', 'header_settings_link', 'Settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2548, 0, 'en', 'plugins/member/dashboard', 'header_logout_link', 'Logout', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2549, 0, 'en', 'plugins/member/dashboard', 'unknown_state', 'Unknown', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2550, 0, 'en', 'plugins/member/dashboard', 'close', 'Close', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2551, 0, 'en', 'plugins/member/dashboard', 'save', 'Save', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2552, 0, 'en', 'plugins/member/dashboard', 'loading', 'Loading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2553, 0, 'en', 'plugins/member/dashboard', 'new_image', 'New image', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2554, 0, 'en', 'plugins/member/dashboard', 'change_profile_image', 'Change avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2555, 0, 'en', 'plugins/member/dashboard', 'save_cropped_image_failed', 'Save cropped image failed!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2556, 0, 'en', 'plugins/member/dashboard', 'failed_to_crop_image', 'Failed to crop image', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2557, 0, 'en', 'plugins/member/dashboard', 'failed_to_load_data', 'Failed to load data', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2558, 0, 'en', 'plugins/member/dashboard', 'read_image_failed', 'Read image failed', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2559, 0, 'en', 'plugins/member/dashboard', 'update_avatar_success', 'Update avatar successfully!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2560, 0, 'en', 'plugins/member/dashboard', 'change_avatar_description', 'Click on image to change avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2561, 0, 'en', 'plugins/member/dashboard', 'notices.error', 'Error!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2562, 0, 'en', 'plugins/member/dashboard', 'notices.success', 'Success!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2563, 0, 'en', 'plugins/member/dashboard', 'sidebar_title', 'Personal settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2564, 0, 'en', 'plugins/member/dashboard', 'sidebar_information', 'Account Information', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2565, 0, 'en', 'plugins/member/dashboard', 'sidebar_security', 'Security', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2566, 0, 'en', 'plugins/member/dashboard', 'account_field_title', 'Account Information', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2567, 0, 'en', 'plugins/member/dashboard', 'profile-picture', 'Profile picture', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2568, 0, 'en', 'plugins/member/dashboard', 'uploading', 'Uploading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2569, 0, 'en', 'plugins/member/dashboard', 'phone', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2570, 0, 'en', 'plugins/member/dashboard', 'first_name', 'First name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2571, 0, 'en', 'plugins/member/dashboard', 'last_name', 'Last name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2572, 0, 'en', 'plugins/member/dashboard', 'description', 'Short description', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2573, 0, 'en', 'plugins/member/dashboard', 'description_placeholder', 'Tell something about yourself...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2574, 0, 'en', 'plugins/member/dashboard', 'verified', 'Verified', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2575, 0, 'en', 'plugins/member/dashboard', 'verify_require_desc', 'Please verify email by link we sent to you.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2576, 0, 'en', 'plugins/member/dashboard', 'birthday', 'Birthday', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2577, 0, 'en', 'plugins/member/dashboard', 'year_lc', 'year', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2578, 0, 'en', 'plugins/member/dashboard', 'month_lc', 'month', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2579, 0, 'en', 'plugins/member/dashboard', 'day_lc', 'day', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2580, 0, 'en', 'plugins/member/dashboard', 'gender', 'Gender', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2581, 0, 'en', 'plugins/member/dashboard', 'gender_male', 'Male', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2582, 0, 'en', 'plugins/member/dashboard', 'gender_female', 'Female', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2583, 0, 'en', 'plugins/member/dashboard', 'gender_other', 'Other', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2584, 0, 'en', 'plugins/member/dashboard', 'security_title', 'Security', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2585, 0, 'en', 'plugins/member/dashboard', 'current_password', 'Current password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2586, 0, 'en', 'plugins/member/dashboard', 'password_new', 'New password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2587, 0, 'en', 'plugins/member/dashboard', 'password_new_confirmation', 'Confirmation password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2588, 0, 'en', 'plugins/member/dashboard', 'password_update_btn', 'Update password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2589, 0, 'en', 'plugins/member/dashboard', 'activity_logs', 'Activity Logs', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2590, 0, 'en', 'plugins/member/dashboard', 'oops', 'Oops!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2591, 0, 'en', 'plugins/member/dashboard', 'no_activity_logs', 'You have no activity logs yet', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2592, 0, 'en', 'plugins/member/dashboard', 'actions.create_post', 'You have created post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2593, 0, 'en', 'plugins/member/dashboard', 'actions.update_post', 'You have updated post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2594, 0, 'en', 'plugins/member/dashboard', 'actions.delete_post', 'You have deleted post \":name\"', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2595, 0, 'en', 'plugins/member/dashboard', 'actions.update_setting', 'You have updated your settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2596, 0, 'en', 'plugins/member/dashboard', 'actions.update_security', 'You have updated your security settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2597, 0, 'en', 'plugins/member/dashboard', 'actions.your_post_updated_by_admin', 'Your post \":name\" is updated by administrator', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2598, 0, 'en', 'plugins/member/dashboard', 'actions.changed_avatar', 'You have changed your avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2599, 0, 'en', 'plugins/member/dashboard', 'load_more', 'Load more', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2600, 0, 'en', 'plugins/member/dashboard', 'loading_more', 'Loading...', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2601, 0, 'en', 'plugins/member/dashboard', 'back-to-login', 'Back to login page', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2602, 0, 'en', 'plugins/member/member', 'create', 'New member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2603, 0, 'en', 'plugins/member/member', 'edit', 'Edit member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2604, 0, 'en', 'plugins/member/member', 'menu_name', 'Members', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2605, 0, 'en', 'plugins/member/member', 'confirmation_subject', 'Email verification', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2606, 0, 'en', 'plugins/member/member', 'confirmation_subject_title', 'Verify your email', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2607, 0, 'en', 'plugins/member/member', 'not_confirmed', 'The given email address has not been confirmed. <a href=\":resend_link\">Resend confirmation link.</a>', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2608, 0, 'en', 'plugins/member/member', 'confirmation_successful', 'You successfully confirmed your email address.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2609, 0, 'en', 'plugins/member/member', 'confirmation_info', 'Please confirm your email address.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2610, 0, 'en', 'plugins/member/member', 'confirmation_resent', 'We sent you another confirmation email. You should receive it shortly.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2611, 0, 'en', 'plugins/member/member', 'form.email', 'Email', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2612, 0, 'en', 'plugins/member/member', 'form.password', 'Password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2613, 0, 'en', 'plugins/member/member', 'form.password_confirmation', 'Password confirmation', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2614, 0, 'en', 'plugins/member/member', 'form.change_password', 'Change password?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2615, 0, 'en', 'plugins/member/member', 'forgot_password', 'Forgot password', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2616, 0, 'en', 'plugins/member/member', 'login', 'Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2617, 0, 'en', 'plugins/member/member', 'settings.email.title', 'Member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2618, 0, 'en', 'plugins/member/member', 'settings.email.description', 'Member email configuration', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2619, 0, 'en', 'plugins/member/member', 'first_name', 'First Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2620, 0, 'en', 'plugins/member/member', 'last_name', 'Last Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2621, 0, 'en', 'plugins/member/member', 'email_placeholder', 'Ex: example@gmail.com', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2622, 0, 'en', 'plugins/member/member', 'write_a_post', 'Write a post', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2623, 0, 'en', 'plugins/member/member', 'phone', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2624, 0, 'en', 'plugins/member/member', 'phone_placeholder', 'Phone', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2625, 0, 'en', 'plugins/member/member', 'confirmed_at', 'Confirmed at', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2626, 0, 'en', 'plugins/member/member', 'avatar', 'Avatar', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2627, 0, 'en', 'plugins/member/member', 'dob', 'Date of birth', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2628, 0, 'en', 'plugins/member/settings', 'title', 'Member', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2629, 0, 'en', 'plugins/member/settings', 'description', 'Settings for members', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2630, 0, 'en', 'plugins/member/settings', 'verify_account_email', 'Verify account\'s email?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2631, 0, 'en', 'plugins/member/settings', 'verify_account_email_description', 'Need to config email in Admin -> Settings -> Email to send email verification.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2632, 0, 'en', 'plugins/member/settings', 'enable_recaptcha_in_register_page', 'Enable Recaptcha in the registration page?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2633, 0, 'en', 'plugins/member/settings', 'enable_recaptcha_in_register_page_description', 'Need to setup Captcha in Admin -> Settings -> General first.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2634, 0, 'en', 'plugins/request-log/request-log', 'name', 'Request Logs', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2635, 0, 'en', 'plugins/request-log/request-log', 'status_code', 'Status Code', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2636, 0, 'en', 'plugins/request-log/request-log', 'no_request_error', 'No request error now!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2637, 0, 'en', 'plugins/request-log/request-log', 'widget_request_errors', 'Request Errors', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2638, 0, 'en', 'plugins/request-log/request-log', 'count', 'Count', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2639, 0, 'en', 'plugins/request-log/request-log', 'delete_all', 'Delete all records', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2645, 0, 'en', 'plugins/social-login/social-login', 'settings.title', 'Social Login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2646, 0, 'en', 'plugins/social-login/social-login', 'settings.description', 'Configure social login options', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2647, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.title', 'Facebook login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2648, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.description', 'Enable/disable & configure app credentials for Facebook login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2649, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2650, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2651, 0, 'en', 'plugins/social-login/social-login', 'settings.facebook.helper', 'Please go to https://developers.facebook.com to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2652, 0, 'en', 'plugins/social-login/social-login', 'settings.google.title', 'Google login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2653, 0, 'en', 'plugins/social-login/social-login', 'settings.google.description', 'Enable/disable & configure app credentials for Google login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2654, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2655, 0, 'en', 'plugins/social-login/social-login', 'settings.google.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2656, 0, 'en', 'plugins/social-login/social-login', 'settings.google.helper', 'Please go to https://console.developers.google.com/apis/dashboard to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2657, 0, 'en', 'plugins/social-login/social-login', 'settings.github.title', 'Github login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2658, 0, 'en', 'plugins/social-login/social-login', 'settings.github.description', 'Enable/disable & configure app credentials for Github login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2659, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2660, 0, 'en', 'plugins/social-login/social-login', 'settings.github.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2661, 0, 'en', 'plugins/social-login/social-login', 'settings.github.helper', 'Please go to https://github.com/settings/developers to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2662, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.title', 'Linkedin login settings', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2663, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.description', 'Enable/disable & configure app credentials for Linkedin login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2664, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_id', 'App ID', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2665, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.app_secret', 'App Secret', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2666, 0, 'en', 'plugins/social-login/social-login', 'settings.linkedin.helper', 'Please go to https://www.linkedin.com/developers/apps/new to create new app update App ID, App Secret. Callback URL is :callback', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2667, 0, 'en', 'plugins/social-login/social-login', 'settings.enable', 'Enable?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2668, 0, 'en', 'plugins/social-login/social-login', 'menu', 'Social Login', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2693, 0, 'en', 'plugins/translation/translation', 'translations', 'Translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2694, 0, 'en', 'plugins/translation/translation', 'translations_description', 'Translate all words in system.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2695, 0, 'en', 'plugins/translation/translation', 'export_warning', 'Warning, translations are not visible until they are exported back to the resources/lang file, using \'php artisan cms:translations:export\' command or publish button.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2696, 0, 'en', 'plugins/translation/translation', 'import_done', 'Done importing, processed :counter items! Reload this page to refresh the groups!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2697, 0, 'en', 'plugins/translation/translation', 'translation_manager', 'Translations Manager', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2698, 0, 'en', 'plugins/translation/translation', 'done_publishing', 'Done publishing the translations for group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2699, 0, 'en', 'plugins/translation/translation', 'append_translation', 'Append new translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2700, 0, 'en', 'plugins/translation/translation', 'replace_translation', 'Replace existing translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2701, 0, 'en', 'plugins/translation/translation', 'import_group', 'Import group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2702, 0, 'en', 'plugins/translation/translation', 'confirm_publish_group', 'Are you sure you want to publish the translations group \":group\"? This will overwrite existing language files.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2703, 0, 'en', 'plugins/translation/translation', 'publish_translations', 'Publish translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2704, 0, 'en', 'plugins/translation/translation', 'back', 'Back', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2705, 0, 'en', 'plugins/translation/translation', 'edit_title', 'Enter translation', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2706, 0, 'en', 'plugins/translation/translation', 'choose_group_msg', 'Choose a group to display the group translations. If no groups are visible, make sure you have imported the translations.', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2707, 0, 'en', 'plugins/translation/translation', 'choose_a_group', 'Choose a group', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2708, 0, 'en', 'plugins/translation/translation', 'locales', 'Locales', '2022-04-20 19:52:59', '2022-04-20 19:53:13');
INSERT INTO `translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2709, 0, 'en', 'plugins/translation/translation', 'theme-translations', 'Theme translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2710, 0, 'en', 'plugins/translation/translation', 'admin-translations', 'Other translations', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2711, 0, 'en', 'plugins/translation/translation', 'translate_from', 'Translate from', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2712, 0, 'en', 'plugins/translation/translation', 'to', 'to', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2713, 0, 'en', 'plugins/translation/translation', 'no_other_languages', 'No other language to translate!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2714, 0, 'en', 'plugins/translation/translation', 'edit', 'Edit', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2715, 0, 'en', 'plugins/translation/translation', 'locale', 'Locale', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2716, 0, 'en', 'plugins/translation/translation', 'locale_placeholder', 'Ex: en', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2717, 0, 'en', 'plugins/translation/translation', 'name', 'Name', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2718, 0, 'en', 'plugins/translation/translation', 'default_locale', 'Default locale?', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2719, 0, 'en', 'plugins/translation/translation', 'actions', 'Actions', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2720, 0, 'en', 'plugins/translation/translation', 'choose_language', 'Choose language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2721, 0, 'en', 'plugins/translation/translation', 'add_new_language', 'Add new language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2722, 0, 'en', 'plugins/translation/translation', 'select_language', 'Select language', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2723, 0, 'en', 'plugins/translation/translation', 'flag', 'Flag', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2724, 0, 'en', 'plugins/translation/translation', 'folder_is_not_writeable', 'Cannot write files! Folder /resources/lang is not writable. Please chmod to make it writable!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2725, 0, 'en', 'plugins/translation/translation', 'delete', 'Delete', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2726, 0, 'en', 'plugins/translation/translation', 'confirm_delete_message', 'Do you really want to delete this locale? It will delete all files/folders for this local in /resources/lang!', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2727, 0, 'en', 'plugins/translation/translation', 'download', 'Download', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2728, 0, 'en', 'plugins/translation/translation', 'select_locale', 'Select locale', '2022-04-20 19:52:59', '2022-04-20 19:53:13'),
(2729, 0, 'en', 'plugins/translation/translation', 'theme_translations_instruction', 'Click on text to translate. Do NOT translate variables, Eg. :username, :query, :link...', '2022-04-20 19:52:59', '2022-04-20 19:53:13');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@botble.com', NULL, '$2y$10$CwHGs8.monZd1ZYdiKjS..1s4yaiIkVTo0mLGUXx0PzaltG5cyL9W', 'SvUSX8OAhbVgzJW5npeLxCklPlzY39ZOuayM7KEgh6AMOLS6Fr4sWz2Z83dq', '2022-01-04 04:39:02', '2022-06-06 04:55:56', 'System', 'Admin', 'admin', NULL, 1, 1, NULL, '2022-06-06 04:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`) VALUES
(1, 'RecentPostsWidget', 'footer_sidebar', 'ripple-en_US', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(2, 'RecentPostsWidget', 'top_sidebar', 'ripple-en_US', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(3, 'TagsWidget', 'primary_sidebar', 'ripple-en_US', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(4, 'CustomMenuWidget', 'primary_sidebar', 'ripple-en_US', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(5, 'CustomMenuWidget', 'primary_sidebar', 'ripple-en_US', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(6, 'CustomMenuWidget', 'footer_sidebar', 'ripple-en_US', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite Websites\",\"menu_id\":\"favorite-websites\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(7, 'CustomMenuWidget', 'footer_sidebar', 'ripple-en_US', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"My Links\",\"menu_id\":\"my-links\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(8, 'RecentPostsWidget', 'footer_sidebar', 'ripple-vi-en_US', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(9, 'RecentPostsWidget', 'top_sidebar', 'ripple-vi-en_US', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(10, 'TagsWidget', 'primary_sidebar', 'ripple-vi-en_US', 0, '{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(11, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi-en_US', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"danh-muc-noi-bat\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(12, 'CustomMenuWidget', 'primary_sidebar', 'ripple-vi-en_US', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i\",\"menu_id\":\"social\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(13, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi-en_US', 1, '{\"id\":\"CustomMenuWidget\",\"name\":\"Trang web y\\u00eau th\\u00edch\",\"menu_id\":\"trang-web-yeu-thich\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(14, 'CustomMenuWidget', 'footer_sidebar', 'ripple-vi-en_US', 2, '{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft\",\"menu_id\":\"lien-ket\"}', '2022-01-04 04:39:09', '2022-06-24 05:31:26'),
(15, 'RecentPostsWidget', 'primary_sidebar', 'nammqi-en_US', 0, '{\"id\":\"RecentPostsWidget\",\"name\":\"Recent posts\",\"number_display\":\"5\"}', '2022-05-28 01:50:46', '2022-06-24 05:31:26'),
(16, 'CustomMenuWidget', 'primary_sidebar', 'nammqi', 0, '{\"id\":\"CustomMenuWidget\",\"name\":\"Custom Menu\",\"menu_id\":\"asosiy-menyu\"}', '2022-06-25 08:07:10', '2022-06-25 08:07:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Indexes for table `audit_histories`
--
ALTER TABLE `audit_histories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `audit_histories_user_id_index` (`user_id`),
  ADD KEY `audit_histories_module_index` (`module`);

--
-- Indexes for table `bb_comments`
--
ALTER TABLE `bb_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_likes_comment_id_index` (`comment_id`),
  ADD KEY `bb_comment_likes_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_ratings`
--
ALTER TABLE `bb_comment_ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_ratings_user_id_index` (`user_id`);

--
-- Indexes for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bb_comment_recommends_user_id_index` (`user_id`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blocks_translations`
--
ALTER TABLE `blocks_translations`
  ADD PRIMARY KEY (`lang_code`,`blocks_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`);

--
-- Indexes for table `categories_translations`
--
ALTER TABLE `categories_translations`
  ADD PRIMARY KEY (`lang_code`,`categories_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `favorite_posts_post_id_user_id_type_unique` (`post_id`,`user_id`,`type`);

--
-- Indexes for table `field_groups`
--
ALTER TABLE `field_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_items`
--
ALTER TABLE `field_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `galleries_user_id_index` (`user_id`);

--
-- Indexes for table `galleries_translations`
--
ALTER TABLE `galleries_translations`
  ADD PRIMARY KEY (`lang_code`,`galleries_id`);

--
-- Indexes for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gallery_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `ims`
--
ALTER TABLE `ims`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ims_translations`
--
ALTER TABLE `ims_translations`
  ADD PRIMARY KEY (`lang_code`,`ims_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Indexes for table `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Indexes for table `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`),
  ADD KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`),
  ADD KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`);

--
-- Indexes for table `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Indexes for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Indexes for table `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Indexes for table `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`);

--
-- Indexes for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`),
  ADD KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`);

--
-- Indexes for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
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
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_translations`
--
ALTER TABLE `pages_translations`
  ADD PRIMARY KEY (`lang_code`,`pages_id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`);

--
-- Indexes for table `posts_translations`
--
ALTER TABLE `posts_translations`
  ADD PRIMARY KEY (`lang_code`,`posts_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections`
--
ALTER TABLE `post_collections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_logs`
--
ALTER TABLE `request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags_translations`
--
ALTER TABLE `tags_translations`
  ADD PRIMARY KEY (`lang_code`,`tags_id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_histories`
--
ALTER TABLE `audit_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `bb_comments`
--
ALTER TABLE `bb_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_likes`
--
ALTER TABLE `bb_comment_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_ratings`
--
ALTER TABLE `bb_comment_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bb_comment_recommends`
--
ALTER TABLE `bb_comment_recommends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favorite_posts`
--
ALTER TABLE `favorite_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_groups`
--
ALTER TABLE `field_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `field_items`
--
ALTER TABLE `field_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `gallery_meta`
--
ALTER TABLE `gallery_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `ims`
--
ALTER TABLE `ims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `post_collections`
--
ALTER TABLE `post_collections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_collections_posts`
--
ALTER TABLE `post_collections_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `request_logs`
--
ALTER TABLE `request_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2730;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
