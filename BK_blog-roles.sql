-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-03-2023 a las 03:07:06
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog-roles`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Felinos', 'felinos', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(2, 'Aves', 'aves', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(3, 'Reptiles', 'reptiles', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(4, 'Insectos', 'insectos', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(7, 'Anfibios', 'anfibios', '2023-03-25 06:48:47', '2023-03-25 06:48:47');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageable_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `images`
--

INSERT INTO `images` (`id`, `url`, `imageable_type`, `imageable_id`, `created_at`, `updated_at`) VALUES
(1, 'public/posts/tU3fRMiieg7ngIvwSDCD4SeofgVEW8OtIxtCC9Q9.jpg', 'App\\Models\\Post', 21, '2023-02-19 08:50:46', '2023-02-19 08:50:46'),
(2, 'public/posts/XiDTavYtyvIdeLomvWVNobJnX6mR2EdexhAP1MT5.jpg', 'App\\Models\\Post', 22, '2023-02-19 08:58:29', '2023-02-19 09:47:49'),
(3, 'public/posts/PbV2FerC0A8NsMd4rygP2xNKUYlxTThaH4rapkNl.jpg', 'App\\Models\\Post', 23, '2023-02-19 09:51:26', '2023-02-19 09:51:26'),
(4, 'public/posts/PKWaLOXoFQp3tUEDVE1ByfWrzcydiOgjIAZZYtvs.jpg', 'App\\Models\\Post', 27, '2023-03-25 05:15:28', '2023-03-25 05:15:28'),
(5, 'public/posts/NoJF21mE5Fttu3ramApaUPxozknc0mWWrZJzmUeW.jpg', 'App\\Models\\Post', 28, '2023-03-25 06:51:30', '2023-03-25 06:51:30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_04_27_015452_create_sessions_table', 1),
(7, '2022_04_27_020946_create_categories_table', 1),
(8, '2022_04_27_021057_create_posts_table', 1),
(9, '2022_04_27_021853_create_tags_table', 1),
(10, '2022_04_27_021958_create_post_tag_table', 1),
(11, '2022_04_27_022303_create_images_table', 1),
(12, '2022_05_14_181523_create_permission_tables', 1),
(13, '2023_02_20_023832_add_is_admin_column_on_users_table', 2),
(14, '2023_02_23_010237_add_role_to_users_table', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 13),
(2, 'App\\Models\\User', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `description`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin.home', 'See the dashboard', 'web', '2023-02-19 07:40:59', '2023-02-19 07:40:59'),
(2, 'admin.users.index', 'See the list of users', 'web', '2023-02-19 07:41:00', '2023-02-19 07:41:00'),
(3, 'admin.users.edit', 'Assign roles to users', 'web', '2023-02-19 07:41:00', '2023-02-19 07:41:00'),
(4, 'admin.categories.index', 'See the list of categories', 'web', '2023-02-19 07:41:00', '2023-02-19 07:41:00'),
(5, 'admin.categories.create', 'Create a new category', 'web', '2023-02-19 07:41:00', '2023-02-19 07:41:00'),
(6, 'admin.categories.edit', 'Edit categories', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(7, 'admin.categories.destroy', 'Delete categories', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(8, 'admin.tags.index', 'See the list of tags', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(9, 'admin.tags.create', 'Create a new tag', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(10, 'admin.tags.edit', 'Edit tags', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(11, 'admin.tags.destroy', 'Delete tags', 'web', '2023-02-19 07:41:01', '2023-02-19 07:41:01'),
(12, 'admin.posts.index', 'See the list of posts', 'web', '2023-02-19 07:41:02', '2023-02-19 07:41:02'),
(13, 'admin.posts.create', 'Create a new post', 'web', '2023-02-19 07:41:02', '2023-02-19 07:41:02'),
(14, 'admin.posts.edit', 'Edit posts', 'web', '2023-02-19 07:41:02', '2023-02-19 07:41:02'),
(15, 'admin.posts.destroy', 'Delete posts', 'web', '2023-02-19 07:41:02', '2023-02-19 07:41:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
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
-- Volcado de datos para la tabla `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'mytoken', '890af32386179b43dc9897d3cf0571d7325ddf31484b711a498e3e469b5ad3f0', '[\"*\"]', '2023-02-20 08:57:38', '2023-02-20 08:37:47', '2023-02-20 08:57:38'),
(2, 'App\\Models\\User', 1, 'mytoken', '7dfc769173a834afa35532f5f48ea7b6a3875aec7b3cd6227c8ab0ebe4ba6b6e', '[\"*\"]', '2023-02-20 09:01:11', '2023-02-20 08:50:39', '2023-02-20 09:01:11'),
(3, 'App\\Models\\User', 1, 'mytoken', 'f682f101ea452761621876e1f8b636f5d55a9fd972dcf196a1fc1f80fa38bbdb', '[\"*\"]', '2023-02-20 09:25:01', '2023-02-20 09:08:25', '2023-02-20 09:25:01'),
(4, 'App\\Models\\User', 1, 'mytoken', 'dd3c97a54e02790786e5d183279543eb116b89b3a2ca4062940499408ad1b88a', '[\"*\"]', '2023-02-20 09:28:14', '2023-02-20 09:21:25', '2023-02-20 09:28:14'),
(5, 'App\\Models\\User', 1, 'mytoken', '1594ef3588268f1baf9873c463f8a24a5159bb6237ee456e44c24b21b7b6276c', '[\"*\"]', '2023-02-20 10:00:27', '2023-02-20 09:28:56', '2023-02-20 10:00:27'),
(6, 'App\\Models\\User', 1, 'mytoken', 'e01d4601ed3df22f042c786b1939653cd1430259ca75850197efeb0507d71787', '[\"*\"]', '2023-03-18 05:19:43', '2023-02-20 09:59:52', '2023-03-18 05:19:43'),
(7, 'App\\Models\\User', 1, 'mytoken', '2b05c01a211343852660b4e06074c2bff762f0e82e56087fd6689ec4b35fa36d', '[\"*\"]', NULL, '2023-03-18 04:13:46', '2023-03-18 04:13:46'),
(8, 'App\\Models\\User', 1, 'mytoken', '1a0a2da3aaad9c2a3b442aec47a16478c39b26acb53a396704ebc68c0180c092', '[\"*\"]', NULL, '2023-03-18 04:40:03', '2023-03-18 04:40:03'),
(9, 'App\\Models\\User', 1, 'mytoken', '53c067871400909be941d4053834f02863caa657148e89e550243f7e3ae3b07f', '[\"*\"]', NULL, '2023-03-18 05:18:48', '2023-03-18 05:18:48'),
(10, 'App\\Models\\User', 1, 'mytoken', '9ebf7694c2189c4a3fc3a5a9138c8e6048b31af26a8e8003bbaa9363f527da55', '[\"*\"]', NULL, '2023-03-18 07:42:01', '2023-03-18 07:42:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extract` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `extract`, `body`, `status`, `user_id`, `category_id`, `created_at`, `updated_at`) VALUES
(21, 'Felino en acción', 'felino-en-accion', '<p>Leopardo</p>', '<p>El leopardo es uno de los grandes félidos más adaptables. Habita en todo tipo de hábitats, siempre que tenga un lugar donde esconderse y existan suficientes presas para sobrevivir; se encuentra presente en y selvas, en las sabanas, en los sembrados y en lugares rocosos, e incluso en desiertos. En algunos hábitats, el leopardo desarrolla formas para evadir a otros depredadores mayores o más numerosos, como es el caso del león y las hienas en África, y el tigre en Asia. Realmente, el único factor que limita al leopardo son los humanos</p>', 2, 1, 1, '2023-02-19 08:50:45', '2023-02-19 08:50:45'),
(22, 'Pájaro lindo', 'pajaro-lindo', '<p>Pájaro</p>', '<p>Ave del orden de las paseriformes, de pico pequeño y plumaje ceniciento, rojizo y gris, que fabrica su nido en forma de bolsa y lo cuelga de una rama flexible, generalmente encima del agua. Se alimenta de insectos y semillas</p>', 2, 1, 2, '2023-02-19 08:58:29', '2023-02-19 08:58:29'),
(26, 'Post1 de blogger1', 'post1-de-blogger1', '<p>Blog 1 de blogger1</p>', '<p>Blog 1 de blogger1 Prueba</p>', 2, 11, 4, '2023-03-19 07:23:59', '2023-03-19 07:23:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `post_tag`
--

INSERT INTO `post_tag` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 21, 7, NULL, NULL),
(2, 22, 2, NULL, NULL),
(4, 26, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-02-19 07:40:59', '2023-02-19 07:40:59'),
(2, 'blogger', 'web', '2023-02-19 07:40:59', '2023-02-19 07:40:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 1),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(8, 2),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(12, 2),
(13, 1),
(13, 2),
(14, 1),
(14, 2),
(15, 1),
(15, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jgwMyzxd5kPJOR2lnAcMbC7JVMeUPgDNK6M6hNFL', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjNRZDBLRHhmY3ZaN2NxZGJBRmZCcHBzdmFHN2l0VFBhNDJkN2V0WCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1679709191);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `color`, `created_at`, `updated_at`) VALUES
(1, 'veniam', 'veniam', 'orange', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(2, 'eius', 'eius', 'orange', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(3, 'dolorum', 'dolorum', 'cyan', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(4, 'laboriosam', 'laboriosam', 'purple', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(5, 'itaque', 'itaque', 'orange', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(6, 'rem', 'rem', 'lime', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(7, 'repellendus', 'repellendus', 'orange', '2023-02-19 07:41:04', '2023-02-19 07:41:04'),
(8, 'perspiciatis', 'perspiciatis', 'cyan', '2023-02-19 07:41:04', '2023-02-19 07:41:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 1,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `role`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Walter Carvajal', 1, 'admin@example.com', NULL, '$2y$10$iIY9p0KQpcst85chW7w4AevUXg.t1hDdjcfMF2GXYZCUVVsVOqcp2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-19 07:41:03', '2023-02-19 07:41:03'),
(11, 'blogger1', 2, 'blogger1@gmail.com', NULL, '$2y$10$q8DR/h7Opt4yk2gCUG3ViuZz5VlZtyb06Z2x8DB2TJnyGJtVkPlpO', NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-23 05:16:51', '2023-02-23 05:16:51'),
(17, 'walterc', 1, 'walterc@gmail.com', NULL, '$2y$10$1WxCS8LjVDF9a8kYzhBBLeYy.OXl1UkQHUwpBq5OeEHtUujdMJ9JC', NULL, NULL, NULL, NULL, NULL, NULL, '2023-03-25 06:47:04', '2023-03-25 06:47:04');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_imageable_type_imageable_id_index` (`imageable_type`,`imageable_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_category_id_foreign` (`category_id`);

--
-- Indices de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tag_post_id_foreign` (`post_id`),
  ADD KEY `post_tag_tag_id_foreign` (`tag_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
