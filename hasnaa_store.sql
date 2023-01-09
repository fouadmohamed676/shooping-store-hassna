-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 04:40 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hasnaa_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `email_verified_at` varchar(150) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `device_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `remember_token`, `device_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin Fouad', 'admin1@gmail.com', NULL, '$2y$10$oEKdg19deb/SIQXc6q5rVOCeB/s9YHlG6JlgdJOKQWUBY.isLiBuC', '', NULL, 'Notification Admin', '2022-08-31 15:38:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_collection_discount` int(11) NOT NULL DEFAULT 0,
  `has_product` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `is_collection_discount`, `has_product`, `product_id`, `status`) VALUES
(1, 'banners/slide1.jpeg', 0, 1, 1, 1),
(2, 'banners/slide2.jpeg', 0, 0, 2, 1),
(3, 'banners/slide3.jpeg', 0, 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `best_seller_products`
--

CREATE TABLE `best_seller_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `best_seller_products`
--

INSERT INTO `best_seller_products` (`id`, `product_id`, `status`) VALUES
(3, 35, 1),
(7, 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `is_deleted`) VALUES
(1, 'اكسسوارات', 'icons/accessories.png', 0),
(2, 'عناية بالبشرة', 'icons/skincare.png', 0),
(3, 'عناية بالجسم', 'icons/cream.png', 0),
(4, 'العناية بالشعر', 'icons/hair.png', 0),
(5, 'مجموعات', 'icons/collection.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `body` varchar(255) NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `product_id`, `body`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 44, 'جميل جداٌ', 1, 1, '2022-10-03 12:42:19', '2022-10-03 12:42:19'),
(2, 44, 'المنتج كويس و ما بعمل أثار جانبية', 1, 0, '2022-10-02 12:42:19', '2022-10-03 12:42:19'),
(3, 45, 'تجربة', 1, 0, '2022-10-01 12:42:19', '2022-10-03 12:42:19');

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
-- Table structure for table `latest_products`
--

CREATE TABLE `latest_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `latest_products`
--

INSERT INTO `latest_products` (`id`, `product_id`, `status`) VALUES
(19, 46, 1),
(23, 45, 1),
(24, 36, 1),
(25, 42, 1);

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
-- Table structure for table `new_products`
--

CREATE TABLE `new_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `new_products`
--

INSERT INTO `new_products` (`id`, `product_id`, `category_id`, `status`) VALUES
(1, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(6, 'تحديث جديد', 'اضافة', '2022-09-06 12:23:06', '2022-09-06 12:23:06'),
(7, 'اشعار', 'تجربة الاشعار', '2022-09-06 12:23:23', '2022-09-06 12:23:23'),
(11, 'تحديث', 'الرجاء التحديث', '2022-09-06 19:14:33', '2022-09-06 19:14:33'),
(12, 'test App', 'send Notification', '2022-09-07 09:55:18', '2022-09-07 09:55:18'),
(13, 'new Version', 'Update App', '2022-09-07 10:43:34', '2022-09-07 10:43:34'),
(15, 'tets token', 'Token App', '2022-09-08 08:13:37', '2022-09-08 08:13:37'),
(16, 'Soon', 'كن ضمن أول المستخدمين للتمتع بالعروض الخاصة', '2022-09-10 11:00:22', '2022-09-10 11:00:22');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `total` int(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivery_cost` int(100) NOT NULL,
  `user_id` int(10) NOT NULL,
  `regon_id` int(10) NOT NULL,
  `delivery_period` varchar(200) NOT NULL,
  `items_count` int(122) NOT NULL,
  `note` text DEFAULT NULL,
  `status` int(10) NOT NULL,
  `order_from` varchar(200) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total`, `address`, `delivery_cost`, `user_id`, `regon_id`, `delivery_period`, `items_count`, `note`, `status`, `order_from`, `created_at`, `updated_at`) VALUES
(1, 122, 'BAhry', 1223, 1, 1, '12', 12, 'Test Api Update', 2, 'DAshBoard', '2022-09-10 11:14:39', '2022-09-27 11:26:45'),
(2, 122, 'BAhry', 1223, 1, 1, '12', 12, 'Test Api Update', 1, 'DashBoard', '2022-09-13 04:12:07', '2022-09-25 11:24:08'),
(4, 122, 'BAhry', 1223, 1, 1, '12', 12, 'Test Api', 1, 'DashBoard', '2022-09-13 11:39:06', '2022-09-19 20:19:17'),
(5, 12, 'khartoum', 45, 1, 1, '6', 2, 'eeefefef', 1, 'app', '2022-09-13 11:40:32', '2022-09-13 11:40:32'),
(6, 12, 'الخرطوم حي المطار', 1200, 1, 1, '444', 44, 'ddfdf', 1, 'app', '2022-09-14 08:06:40', '2022-09-14 08:06:40'),
(7, 12, 'الخرطوم حي المطار', 1200, 1, 1, '444', 44, 'ddfdf', 1, 'app', '2022-09-14 08:07:47', '2022-09-14 08:07:47'),
(8, 12, 'الخرطوم حي المطار', 1200, 1, 1, '444', 44, 'ddfdf', 1, 'app', '2022-09-14 08:09:11', '2022-09-14 08:09:11'),
(9, 12, 'الخرطوم حي المطار', 1200, 1, 1, '444', 44, 'ddfdf', 1, 'app', '2022-09-14 08:10:04', '2022-09-14 08:10:04'),
(10, 12, 'الخرطوم حي المطار', 1200, 1, 1, '444', 44, 'ddfdf', 1, 'app', '2022-09-14 08:12:04', '2022-09-14 08:12:04'),
(12, 123, 'khartoum', 33, 1, 1, '44', 2, 'new add', 1, 'app', '2022-09-14 10:19:29', '2022-09-14 10:19:29'),
(13, 123, 'khartoum', 33, 1, 1, '44', 2, 'new add', 1, 'app', '2022-09-14 10:19:41', '2022-09-14 10:19:41'),
(14, 123, 'khartoum', 33, 1, 1, '44', 2, 'new add', 1, 'app', '2022-09-14 10:21:29', '2022-09-14 10:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `count`) VALUES
(5, 2, 42, 51),
(6, 5, 38, 1),
(7, 6, 33, 1),
(8, 6, 34, 1),
(9, 7, 36, 1),
(10, 11, 33, 2),
(11, 11, 34, 2),
(12, 11, 35, 2),
(110, 2, 22, 51),
(111, 2, 44, 21);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT 1,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL DEFAULT '/',
  `code` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `price` float NOT NULL,
  `details` text COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category_id`, `image`, `code`, `quantity`, `status`, `price`, `details`, `created_at`, `updated_at`) VALUES
(33, 'Clock', 4, 'img/1660839247.jpg', 'u', 2, 1, 4300, 'ساعة حائط', '2022-08-29 14:48:45', '2022-08-18 14:14:07'),
(34, 'icecream', 5, 'img/1660839296.jpg', 'c', 43, 1, 455, 'sssssssss', '2022-08-18 14:14:56', '2022-08-18 14:14:56'),
(35, 'اساور يد', 4, 'img/1660928470.jpg', '5', 12, 0, 5555, 'جديدة', '2022-09-10 13:02:16', '2022-09-10 11:02:16'),
(36, 'كريم ترطيب جسم', 2, 'img/1661006909.jpg', '3', 43, 0, 200, 'كريم ترطيب جسم', '2022-08-30 16:45:41', '2022-08-30 14:45:41'),
(37, 'شامبو طبي', 4, 'img/1661065202.jpg', 'sh', 7, 1, 2390, 'شامبو خاص بالشعر', '2022-08-30 16:45:21', '2022-08-30 14:45:21'),
(38, 'كريم جلخ', 3, 'img/1661095137.jpg', 'k', 30, 1, 1500, 'كريم جلخ خااااااااص', '2022-08-21 13:18:57', '2022-08-21 13:18:57'),
(42, 'اكسسوارات', 1, 'img/1661467521.jpg', 'u', 90, 1, 1200, 'تفااااااااااااااااصيل', '2022-08-25 20:45:21', '2022-08-25 20:45:21'),
(43, 'شاي لبن بالحليب', 2, 'img/1661699095.jpg', 'T', 30, 1, 120, 'شاي باللبن خاص للاطفال', '2022-08-28 13:04:55', '2022-08-28 13:04:55'),
(44, 'dsaa', 5, 'img/1662024363.jpg', 'd', 12, 1, 23, 'vvvvvvvvvvvvvvvvvv', '2022-09-01 07:26:05', '2022-09-01 07:26:05'),
(45, 'م معروف', 2, 'img/1662026255.jpg', 'i', 12, 1, 900, 'pppppppppppp', '2022-09-01 07:57:36', '2022-09-01 07:57:36'),
(46, 'test Product', 3, 'img/1662222796.jpg', 'tct', 40, 1, 1233, 'for test best add', '2022-09-03 14:33:17', '2022-09-03 14:33:17');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `is_deleted`) VALUES
(1, 1, 'img/img1111.png', 0),
(2, 1, 'img/img2222.png', 0),
(3, 2, 'img/s2214799-main-zoom.jpeg', 0),
(4, 2, 'img/51vbKG2M3pL._SL1024_.jpeg', 0),
(5, 2, 'img/df1f284037d8850f41536a57e84ec0a4b4.png', 0),
(6, 3, 'img/s2264406-main-zoom.jpeg', 0),
(7, 3, 'img/8e6bf0480e53a1ef7b226fe296f0b5f12abb5427_original.jpeg', 0),
(8, 3, 'img/81zIPSIoTML._SL1500_.jpeg', 0),
(9, 3, 'img/1456862738-blue-mascara.jpeg', 0),
(10, 4, 'img/NOTCOSTRCB-1-1.png', 0),
(11, 4, 'img/note-slider.jpeg', 0),
(12, 5, 'img/EBREeZvXkAA1kux.jpeg', 0),
(13, 5, 'img/top-10-affordable-foundations-that-can-stand-the-heat-note.png', 0),
(14, 5, 'img/s-l500.png', 0),
(15, 6, 'img/GUEST_290a70b8-167e-43d7-b9bc-7e1612acddf8.jpeg', 0),
(16, 6, 'img/lip-gloss-indybest.png', 0),
(17, 6, 'img/best-lip-glosses-1632315135.jpeg', 0),
(18, 6, 'img/20200115_145707.jpeg', 0),
(19, 7, 'img/velour-lashes-contest-1-1.png', 0),
(20, 7, 'img/Shopify_VeganLuxe_PackShot_CantBeTamed_1024x1024.png', 0),
(21, 7, 'img/Shopify_Effortless_Box_Short_Sweet_1024x1024.png', 0),
(22, 8, 'img/Shadow-SPF-50-Cream-.3.jpeg', 0),
(23, 8, 'img/Fixderma-Sunscreen-Gel.png', 0),
(24, 16, 'img/Photoblock-plus-1-2-1.jpeg', 0),
(25, 16, 'img/Photoblock-plus-1-1-1.jpeg', 0),
(26, 16, 'img/photoblock_plus_p_s_60-600x600.jpeg', 0),
(27, 16, 'img/photoblock-gel.jpeg', 0),
(28, 16, 'img/Secondary-Package.jpeg', 0),
(29, 17, 'img/bioderma-photoderm-m-spf-50-gel-cream-40-ml-golden.jpeg', 0),
(30, 17, 'img/PhotodermSPOT-AGE-SPF-50-40ml.png', 0),
(31, 18, 'img/10341450776626.jpeg', 0),
(32, 18, 'img/Paxtor-Krem-ve-Merhem.jpeg', 0),
(33, 19, 'img/Macro-Panthenol-Cream-50gm-1-391x500.jpeg', 0),
(34, 19, 'img/macropanthenole.jpeg', 0),
(35, 19, 'img/1628598890macro-panthenol-cream-50gm-chefaajpeg.jpeg', 0),
(36, 9, 'img/navia-beauty-cream-women.jpeg', 0),
(37, 9, 'img/61UnUCdmzvL.jpeg', 0),
(38, 10, 'img/acne-3-step-600x600.jpeg', 0),
(39, 10, 'img/rejuvenating-line-pearls.jpeg', 0),
(40, 10, 'img/1542042703566.jpeg', 0),
(41, 10, 'img/71r5bohc9vL._SL1500_.jpeg', 0),
(42, 11, 'img/oxU0fZoC3wgfcvszMR5XWy4nwrOZSrNFH27O7CspVgcpTVHhMjZXx7THyTkIqIsVYhnAdl7QRCKZCfxUJ6brrYTJKY3D0Nbgm.jpeg', 0),
(43, 11, 'img/maxresdefault.jpeg', 0),
(44, 12, 'img/laitsStayWhite2.png', 0),
(45, 12, 'img/images.jpeg', 0),
(46, 12, 'img/Lait-super-eclaircissant-Ovie-Stay-White.jpeg', 0),
(47, 13, 'img/1-body-lotion-scaled.jpeg', 0),
(48, 13, 'img/4428f227-6614-4851-a995-5f81aeee11d0_1.b941e48f8e9050edb4309adbf3aa719e.jpeg', 0),
(49, 13, 'img/d123fa3d-6a2f-48ce-ade9-0dd5cb9d3c73_1.5a20369feb80bef5d134c3e7c249cc8c.jpeg', 0),
(50, 14, 'img/618NvIUf0SL.jpeg', 0),
(51, 14, 'img/74c4db356c30dc7be9940f10a44bdd0f.jpeg', 0),
(52, 15, 'img/12b196286acbca10442facf96890efa5.jpeg', 0),
(58, 43, 'img/NIxJCRTFIoYk0mrjdq8Vf88gkPlDSnlHsyDJ3ItA.jpg', 0),
(59, 43, 'img/a647pvK0YJrltYT33n44sfPh322AVYJ1dOq4QJTG.jpg', 0),
(60, 43, 'img/fRA01aoopxezTgVgcI1l6W18S4zm2jCb1TgzW6Zq.jpg', 0),
(61, 33, 'img/ibOVGjhCCri6NjCRtnAK8B8hnkLABkc7uPYmIs45.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_offers`
--

CREATE TABLE `product_offers` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `items` int(11) NOT NULL,
  `present` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE `product_options` (
  `id` int(10) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_options`
--

INSERT INTO `product_options` (`id`, `product_id`, `image`, `name`) VALUES
(3, 33, 'option/1661677189.jpg', 'اصفر'),
(4, 33, 'option/1661695168.jpg', 'ازق'),
(6, 43, 'option/1661699143.jpg', 'لبن حليب'),
(7, 43, 'option/1661708439.jpg', 'كاسترد'),
(8, 43, 'option/1661708573.jpg', 'ماسكرا'),
(13, 35, 'option/1661713868.jpg', 'ttt'),
(18, 43, 'option/1661845350.jpg', 'fff'),
(19, 33, 'option/1661875398.jpg', 'بلب'),
(20, 36, 'option/1662138600.jpg', 'hhhh'),
(21, 33, 'option/1662278568.jpg', 'جو');

-- --------------------------------------------------------

--
-- Table structure for table `product_properties`
--

CREATE TABLE `product_properties` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `property_value` varchar(255) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `product_properties`
--

INSERT INTO `product_properties` (`id`, `property_id`, `product_id`, `property_value`) VALUES
(1, 5, 26, '2022-2-2'),
(2, 3, 26, 'يبيبيب'),
(3, 3, 26, 'fgfgfg'),
(4, 5, 26, 'fcvgfgfg'),
(5, 6, 32, '5'),
(6, 2, 29, 'fff'),
(7, 2, 31, '777'),
(8, 2, 26, 'vvvvvvvvvv'),
(9, 6, 26, '4444'),
(10, 8, 26, 'حبة عند اللزوم'),
(11, 7, 35, 'استعمال خفيف'),
(12, 8, 35, 'ما تكتر منو الشغل دا'),
(13, 13, 35, 'علبة 250 جىام'),
(14, 6, 35, 'ikikik'),
(15, 7, 35, 'ololool'),
(16, 12, 35, 'ععععع'),
(17, 14, 26, 'عناية بالبشرة'),
(18, 15, 26, 'صباح ومساء'),
(19, 16, 26, 'مع كل حمام'),
(20, 16, 33, 'مع كل حمام'),
(21, 15, 40, 'مره في الاسبوع'),
(22, 15, 38, 'مره في الاسبوع بس'),
(23, 14, 42, 'شعر'),
(24, 8, 42, 'حبة عند اللزوم'),
(25, 8, 43, 'صباح ومساء'),
(26, 15, 43, 'الصباح بس');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(8, 'إرشادات', 'instructions', '2022-08-19 13:17:59', '2022-08-19 13:43:30'),
(13, 'نوع التغليف', 'علبة', '2022-08-20 14:50:35', '2022-08-20 14:50:35'),
(14, 'ماسك', 'عناية بالبشرة', '2022-08-21 07:12:53', '2022-08-21 07:12:53'),
(15, 'حمام كريم', 'شعر', '2022-08-21 07:13:38', '2022-08-21 07:13:38'),
(16, 'الغسول', 'وجه', '2022-08-21 07:14:12', '2022-08-21 07:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `regons`
--

CREATE TABLE `regons` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin NOT NULL,
  `delivery_cost` float NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `regons`
--

INSERT INTO `regons` (`id`, `name`, `delivery_cost`, `status`) VALUES
(1, 'الخرطوم', 1200, 0),
(2, 'ام درمان', 1500, 0),
(3, 'بحري', 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `replyes`
--

CREATE TABLE `replyes` (
  `id` int(10) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `user_id` int(10) NOT NULL,
  `comment_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `replyes`
--

INSERT INTO `replyes` (`id`, `body`, `user_id`, `comment_id`, `created_at`, `updated_at`) VALUES
(1, 'يستحق التقيييم 5 نجوم', 1, 1, '2022-10-03 16:27:35', '2022-10-03 16:27:35'),
(2, 'جيد للصغار', 3, 1, '2022-10-01 16:27:35', '2022-10-02 16:27:35'),
(3, 'رائع بالنسبة للطقس', 1, 1, '2022-10-05 12:57:38', '2022-10-05 12:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `about` text COLLATE utf8mb4_bin NOT NULL,
  `has_banners` int(11) NOT NULL,
  `delivery_cost` float NOT NULL,
  `whatsapp` varchar(20) COLLATE utf8mb4_bin NOT NULL,
  `facebook` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `instagram` varchar(50) COLLATE utf8mb4_bin NOT NULL,
  `twitter` varchar(50) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `about`, `has_banners`, `delivery_cost`, `whatsapp`, `facebook`, `instagram`, `twitter`) VALUES
(1, 'about', 0, 2000, '+249123342124', 'mohmedbrbr', 'mohmedbrbr', 'albrerahmed11');

-- --------------------------------------------------------

--
-- Table structure for table `similar_products`
--

CREATE TABLE `similar_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) UNSIGNED DEFAULT NULL,
  `similar_product_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `similar_products`
--

INSERT INTO `similar_products` (`id`, `product_id`, `similar_product_id`, `status`) VALUES
(26, 26, 29, 1),
(27, 26, 36, 1),
(28, 26, 5, 1),
(29, 29, 1, 1),
(30, 31, 38, NULL),
(31, 31, 36, NULL),
(32, 31, 26, NULL),
(33, 31, 37, NULL),
(39, 36, 36, NULL),
(40, 42, 37, NULL),
(41, 42, 38, NULL),
(42, 42, 34, NULL),
(43, 33, 37, NULL),
(46, 37, 42, NULL),
(47, 37, 37, NULL),
(48, 37, 33, NULL),
(50, 33, 36, NULL),
(53, 43, 36, NULL),
(54, 43, 37, NULL),
(55, 36, 33, NULL),
(56, 33, 43, NULL),
(57, NULL, 36, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deleted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`, `remember_token`, `device_token`, `created_at`, `updated_at`, `is_deleted`) VALUES
(1, 'Admin Fouad', 'admin@gmail.com', '0912344672', '$2y$10$oEKdg19deb/SIQXc6q5rVOCeB/s9YHlG6JlgdJOKQWUBY.isLiBuC', 'tokeeeeeeen', 'eSOwb0_8lEnDu_l73_Unx_:APA91bELmc_Vzp9S1wEu72bLhb4RcEJX1b_EDa8_jUz8wsZjnjTWqPoMsRrNv8WpaoASPvd9wG1juLWr86j3OQ-YM7wQrRreftMlW9aJDmte0Awh5XgYqQFVtMlTMVJS9s89D6b0xLWT', '2022-08-31 09:37:18', '2022-08-31 09:37:18', 0),
(3, 'Token Locall', 'f@gmail.com', '09999999999', '1222333', 'ffff', 'fvh_O69CTDGPUtMtQbMnPH:APA91bEHkkNe01wHs7c-1KSpvbAgNastOmu_XfzrFRbakp_8dir8hT9FXmUO33dZYn8cgtngOQurVsgHxdfcH-1bXTZAf8NaVFiLB0kuAZwM6e26VnZ8lqkU3ZAuPcjELxB8Q9xXtcuA', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `best_seller_products`
--
ALTER TABLE `best_seller_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `latest_products`
--
ALTER TABLE `latest_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_products`
--
ALTER TABLE `new_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_phone_index` (`phone`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_offers`
--
ALTER TABLE `product_offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_options`
--
ALTER TABLE `product_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_properties`
--
ALTER TABLE `product_properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regons`
--
ALTER TABLE `regons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replyes`
--
ALTER TABLE `replyes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `similar_products`
--
ALTER TABLE `similar_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `best_seller_products`
--
ALTER TABLE `best_seller_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `latest_products`
--
ALTER TABLE `latest_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `new_products`
--
ALTER TABLE `new_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `product_options`
--
ALTER TABLE `product_options`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_properties`
--
ALTER TABLE `product_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `regons`
--
ALTER TABLE `regons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `replyes`
--
ALTER TABLE `replyes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `similar_products`
--
ALTER TABLE `similar_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
