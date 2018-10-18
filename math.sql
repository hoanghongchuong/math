-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 18, 2018 lúc 11:36 AM
-- Phiên bản máy phục vụ: 10.1.34-MariaDB
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `math`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, '', '1536381569_about-1.jpg', '<p>Website học to&aacute;n online mathx.vn l&agrave; chương tr&igrave;nh học to&aacute;n d&agrave;nh cho học sinh tiểu học v&agrave; trung học cơ sở với nội dung phong ph&uacute;, đa dạng, dễ hiểu v&agrave; hấp dẫn học sinh, k&iacute;ch th&iacute;ch s&aacute;ng tạo v&agrave; say m&ecirc; học to&aacute;n hơn.</p>\r\n<p>MathX.vn được th&agrave;nh lập bởi thầy gi&aacute;o Trần Hữu Hiếu v&agrave; đội ngũ gi&aacute;o vi&ecirc;n t&acirc;m huyết, gi&agrave;u kinh nghiệm giảng dạy. Trang học to&aacute;n online mathx.vn ch&iacute;nh l&agrave; sự tiếp nối tự nhi&ecirc;n của c&acirc;u lạc bộ To&aacute;n học MathSpace - địa chỉ học to&aacute;n y&ecirc;u th&iacute;ch của học sinh tại H&agrave; Nội.</p>\r\n<p>MathX.vn gi&uacute;p học sinh c&oacute; th&ecirc;m người bạn đồng h&agrave;nh th&acirc;n thiết, c&ugrave;ng học sinh học to&aacute;n hiệu quả hơn!</p>', NULL, '<h5>TIỆN LỢI</h5>\r\n<p>Nhiều event th&uacute; vị, event kiếm tiền thiết thực. 123doc lu&ocirc;n lu&ocirc;n tạo cơ hội gia tăng thu nhập online cho tất cả c&aacute;c th&agrave;nh vi&ecirc;n của website.</p>\r\n<h5>HỮU &Iacute;CH</h5>\r\n<p>123doc sở hữu một kho thư viện khổng lồ với hơn 2.000.000 t&agrave;i liệu ở tất cả lĩnh vực: t&agrave;i ch&iacute;nh t&iacute;n dụng, c&ocirc;ng nghệ th&ocirc;ng tin, ngoại ngữ,...Kh&aacute;ch h&agrave;ng c&oacute; thể dễ d&agrave;ng tra cứu t&agrave;i liệu một c&aacute;ch ch&iacute;nh x&aacute;c, nhanh ch&oacute;ng. Upload t&agrave;i liệu đơn giản v&agrave; dễ d&ugrave;ng.</p>\r\n<h5>CHẤT LƯỢNG</h5>\r\n<p>Mang lại trả nghiệm mới mẻ cho người d&ugrave;ng, c&ocirc;ng nghệ hiện thị hiện đại, bản online kh&ocirc;ng kh&aacute;c g&igrave; so với bản gốc. Bạn c&oacute; thể ph&oacute;ng to, thu nhỏ t&ugrave;y &yacute;.</p>\r\n<p>Lu&ocirc;n hướng tới l&agrave; website dẫn đầu chia sẻ v&agrave; mua b&aacute;n t&agrave;i liệu h&agrave;ng đầu Việt Nam. T&aacute;c phong chuy&ecirc;n nghiệp, ho&agrave;n hảo, đề cao t&iacute;nh tr&aacute;ch nhiệm đối với từng người d&ugrave;ng. Mục ti&ecirc;u h&agrave;ng đầu của 123doc.org trở th&agrave;nh thư viện t&agrave;i liệu online lớn nhất Việt Nam, cung cấp những t&agrave;i liệu độc kh&ocirc;ng thể t&igrave;m thấy tr&ecirc;n thị trường ngoại trừ 123doc.org.</p>\r\n<p>H&atilde;y đăng k&yacute; cho m&igrave;nh một t&agrave;i khoản 123doc.org để được hưởng những t&iacute;nh năng mới v&agrave; cơ hội kiếm tiền tại 123doc.org. Đăng k&yacute; tại đ&acirc;y</p>', 0, NULL, NULL, NULL, 'gioi-thieu', '2018-09-08 04:41:37', '2018-09-07 21:41:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN Ho&agrave;ng&nbsp;Hải</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-10-14 02:01:30', '2017-10-13 19:01:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `mota` text CHARACTER SET utf8,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `title`, `mota`, `updated_at`, `created_at`) VALUES
(1, '1536543885_banner-1.jpg', NULL, 3, NULL, NULL, '2018-09-09 18:44:45', '2018-09-09 18:44:45'),
(2, '1536543906_ads-1.jpg', NULL, 4, NULL, NULL, '2018-09-09 18:45:15', '2018-09-09 18:45:06'),
(3, '1536543926_ads-2.jpg', NULL, 5, NULL, NULL, '2018-09-09 18:45:26', '2018-09-09 18:45:26'),
(4, '1536545695_ads-4.jpg', NULL, 6, NULL, NULL, '2018-09-09 19:14:55', '2018-09-09 19:14:55'),
(5, '1536545702_ads-3.jpg', NULL, 7, NULL, NULL, '2018-09-09 19:15:02', '2018-09-09 19:15:02'),
(6, '1536547034_ads-2.jpg', NULL, 8, NULL, NULL, '2018-09-09 19:37:14', '2018-09-09 19:37:14'),
(7, '1536547161_ads-1.jpg', NULL, 9, NULL, NULL, '2018-09-09 19:39:21', '2018-09-09 19:39:21'),
(8, '1536566740_ads-1.jpg', NULL, 10, NULL, NULL, '2018-09-10 01:05:40', '2018-09-10 01:05:40'),
(9, '1536633838_ads-5.jpg', NULL, 11, NULL, NULL, '2018-09-10 19:43:58', '2018-09-10 19:43:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ - vị trí 1', '2018-09-09 18:39:39', '2018-09-09 18:39:39'),
(2, 'Trang chủ - vị trí 2', '2018-09-09 18:39:50', '2018-09-09 18:39:50'),
(3, 'Tin tức- vị trí 1', '2018-09-09 18:39:58', '2018-09-09 18:39:58'),
(4, 'Tin tức - vị trí 2', '2018-09-09 18:40:07', '2018-09-09 18:40:07'),
(5, 'Tin tức - vị trí 3', '2018-09-09 18:40:32', '2018-09-09 18:40:32'),
(6, 'sidebar - vị trí 1', '2018-09-09 18:42:38', '2018-09-09 18:42:38'),
(7, 'sidebar - vị trí 2', '2018-09-09 18:42:45', '2018-09-09 18:42:45'),
(8, 'Trang chi tiết tin tức', '2018-09-10 02:35:43', '2018-09-09 19:35:43'),
(9, 'Trang giới thiệu', '2018-09-10 02:35:07', '2018-09-09 19:35:07'),
(10, 'Trang tài liệu - vị trí 2', '2018-09-11 02:43:30', '2018-09-10 19:43:30'),
(11, 'Trang tài liệu - vị trí 1', '2018-09-10 19:43:22', '2018-09-10 19:43:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `bills`
--

INSERT INTO `bills` (`id`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(8, 'Hoàng Hồng Chương', 'admin@team.vn', '987654321', 'Hà Nội', NULL, NULL, 'dgdg', 0, 1200000, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m 1\",\"product_numb\":1,\"product_price\":500000,\"product_img\":\"1521003014_1.jpg\",\"product_code\":null},{\"product_name\":\"S\\u1ea3n ph\\u1ea9m 2\",\"product_numb\":1,\"product_price\":700000,\"product_img\":\"1521003043_2.jpg\",\"product_code\":null}]', '2018-03-14 18:54:48', '2018-03-14 18:54:48', NULL, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `province_id` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `address` text,
  `content` text CHARACTER SET latin1,
  `website` varchar(250) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `district_name` varchar(250) DEFAULT NULL,
  `province_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `district`
--

INSERT INTO `district` (`id`, `district_name`, `province_id`, `created_at`, `updated_at`) VALUES
(1, 'Ba Đình', 4, '2017-09-24 18:03:47', '2017-09-24 18:03:47'),
(2, 'Từ Liêm', 4, '2017-09-24 18:04:29', '2017-09-24 18:04:29'),
(3, 'Hoàn Kiếm', 4, '2017-09-24 18:04:40', '2017-09-24 18:04:40'),
(4, 'Cầu giấy', 4, '2017-09-25 00:14:58', '2017-09-25 00:14:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `position` varchar(250) DEFAULT NULL,
  `zip` text,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gioithieu`
--

CREATE TABLE `gioithieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `image` text,
  `mota` text,
  `content` text,
  `title` varchar(250) DEFAULT NULL,
  `keyword` varchar(250) DEFAULT NULL,
  `description` text,
  `status` int(2) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT '0',
  `news_id` int(10) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo2` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `photo2`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', NULL, 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', NULL, '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', NULL, 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', NULL, 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', NULL, 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', NULL, 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(47, 5, 'Thời trang nam', 'http://localhost/classic/san-pham/quan-ao-nam', '1521088500_mens.png', NULL, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', NULL, 1, 0, 'chuyen-muc', 2, '2018-03-14 21:35:00', '2018-03-14 21:35:00'),
(48, 8, '100% sản phẩm nhập khẩu', NULL, '1532922754_icon1.png', NULL, NULL, NULL, 1, 0, 'taisao', 4, '2018-07-30 03:52:34', '2018-07-29 20:52:34'),
(49, 8, 'Đơn giản - Tinh tế', NULL, '1532922779_icon2.png', NULL, NULL, NULL, 1, 0, 'taisao', 2, '2018-07-30 03:52:59', '2018-07-29 20:52:59'),
(50, 8, 'Đẳng cấp - Sang trọng', NULL, '1532922795_icon3.png', NULL, NULL, NULL, 1, 0, 'taisao', 3, '2018-07-30 03:53:15', '2018-07-29 20:53:15'),
(89, 8, 'Thiết kế bởi các Designer hàng đầu thế giới', NULL, '1532922811_icon4.png', '', NULL, NULL, 1, 0, 'taisao', 4, '2018-07-29 20:53:31', '2018-07-29 20:53:31'),
(51, 8, 'TỐI ƯU TRANG BÁN HÀNG', NULL, '1531189057_why-seo-1.png', NULL, 'Giúp khách hàng  gia tăng tỉ lệ chuyển đổi và bán hàng lên đến 60%', NULL, 0, 0, 'seo', 1, '2018-07-26 04:08:34', '2018-07-25 21:08:34'),
(52, 8, 'KHO TÀI NGUYÊN HƠN 200 VỆ TINH', NULL, '1531707966_why-seo-2.png', NULL, 'Phục vụ việc trao đổi backlink hiệu quả, rút ngắn thời gian tăng thứ hạng trên các công cụ tìm kiếm, đặc biệt là Google.', NULL, 1, 0, 'seo', 2, '2018-07-26 04:09:46', '2018-07-25 21:09:46'),
(53, 8, 'MIỄN PHÍ ĐẨY TOP TỪ KHÓA', NULL, '1531189104_why-seo-3.png', NULL, 'Đẩy top Google miễn phí, chúng tôi chỉ thu phí khi từ khóa đó duy trì thứ hạng trên Google.', NULL, 1, 0, 'seo', 3, '2018-07-26 04:10:27', '2018-07-25 21:10:27'),
(54, 8, 'HỆ THỐNG CHECK RANK TỪ KHÓA RIÊNG BIỆT', NULL, '1531189137_why-seo-4.png', NULL, 'GCO ADS phát triển các phần mềm phục vụ cho công việc kiểm tra từ khóa với độ chính xác lên tới 98%', NULL, 1, 0, 'seo', 4, '2018-07-26 04:11:33', '2018-07-25 21:11:33'),
(55, 8, 'NGHIÊN CỨU', NULL, '1531189692_quy-trinh-1.png', NULL, 'Nghiên cứu hiện trạng website của khách hàng, sản phẩm, đối thủ cạnh tranh', NULL, 1, 0, 'quy-trinh-seo', 1, '2018-07-26 04:12:36', '2018-07-25 21:12:36'),
(56, 8, 'LẬP KẾ HOẠCH SEO', NULL, '1531189725_quy-trinh-2.png', NULL, 'Trao đổi với khách hàng để chọn lọc những từ khóa có hiệu quả tốt nhất, sau đó hai bên sẽ trao đổi để đi đến thống nhất kế hoạch.', NULL, 1, 0, 'quy-trinh-seo', 5, '2018-07-26 04:13:03', '2018-07-25 21:13:03'),
(57, 8, 'KÝ KẾT HỢP ĐỒNG', NULL, '1531189742_quy-trinh-3.png', NULL, 'Hai bên ký kết hợp đồng cung cấp dịch vụ SEO tổng thể.', NULL, 1, 0, 'quy-trinh-seo', 3, '2018-07-26 04:13:26', '2018-07-25 21:13:26'),
(58, 8, 'TRIỂN KHAI DỊCH VỤ SEO', NULL, '1531189791_quy-trinh-4.png', NULL, 'Khách hàng hoàn thiện các khoản  phí khởi tạo SEO chúng tôi sẽ tiến hành các công việc kỹ thuật để đưa các từ khóa lên top.', NULL, 1, 0, 'quy-trinh-seo', 4, '2018-07-26 04:13:50', '2018-07-25 21:13:50'),
(59, 8, 'PHÂN TÍCH TƯ VẤN HIỆU QUẢ', NULL, '1531196900_why-google-1.png', NULL, 'Đưa ra nhận định, đánh giá phân tích từ khóa, tư vấn chính xác từ khóa hiệu quả.', NULL, 1, 0, 'google', 1, '2018-07-26 04:16:07', '2018-07-25 21:16:07'),
(60, 8, 'TỐI ƯU QUẢNG CÁO VÀ TRANG ĐÍCH', NULL, '1531196921_why-google-2.png', NULL, 'Tối ưu quảng cáo và trang đích, tăng điểm chất lượng.', NULL, 1, 0, 'google', 2, '2018-07-26 04:17:31', '2018-07-25 21:17:31'),
(61, 8, 'QUẢN TRỊ QUẢNG CÁO HIỆU QUẢ', NULL, '1531196949_why-google-3.png', NULL, 'Thiết lập, theo dõi, đánh giá hiệu quả quảng cáo, báo cáo chi tiết hàng ngày. Giúp khách hàng nắm bắt được kết quả của chiến dịch dễ dàng.', NULL, 1, 0, 'google', 4, '2018-07-26 04:19:32', '2018-07-25 21:19:32'),
(62, 8, 'TỐI ƯU CHI PHÍ', NULL, '1531196967_why-google-4.png', NULL, 'Tư vấn cho khách hàng thực hiện chiến dịch quảng cáo từ khóa với chi phí tối ưu.', NULL, 1, 0, 'google', 3, '2018-07-26 04:18:37', '2018-07-25 21:18:37'),
(63, 8, 'NGHIÊN CỨU', NULL, '1531197864_quy-trinh-21.png', NULL, 'Nghiên cứu website của khách hàng và đề xuất tối ưu web trước khi chạy quảng cáo.', NULL, 1, 0, 'quy-trinh-google', 1, '2018-07-26 04:20:45', '2018-07-25 21:20:45'),
(64, 8, 'TƯ VẤN QUẢNG CÁO', NULL, '1531197878_quy-trinh-22.png', NULL, 'Tư vấn khách hàng lựa chọn từ khóa, ngân sách, thời gian cho chiến dịch quảng cáo Google với sản phẩm của khách hàng.', NULL, 1, 0, 'quy-trinh-google', 2, '2018-07-26 04:21:07', '2018-07-25 21:21:07'),
(65, 8, 'THIẾT LẬP - GIÁM SÁT - BÁO CÁO', NULL, '1531197890_quy-trinh-23.png', NULL, 'Thiết lập chiến dịch quảng cáo, theo dõi hiệu quả và báo cáo kết quả khi có yêu cầu.', NULL, 1, 0, 'quy-trinh-google', 3, '2018-07-26 04:21:34', '2018-07-25 21:21:34'),
(66, 8, 'XÂY DỰNG CHIẾN LƯỢC TỐI ƯU', NULL, '1531210845_why-mkt-1.png', '1531794966_why-mkt-1-1.png', 'Đưa ra kế hoạch quảng cáo facebook và mục tiêu phát triển phù hợp với nguồn lực của doanh nghiệp. Tư vấn giải pháp marketing tổng thể cho doanh nghiệp.', NULL, 1, 0, 'marketing', 1, '2018-07-26 04:57:36', '2018-07-25 21:57:36'),
(67, 8, 'SÁNG TẠO NỘI DUNG', NULL, '1531794914_why-mkt-2.png', '1531794818_why-mkt-2-2.png', 'Sáng tạo nội dung quảng cáo, đưa ra ý tưởng quảng cáo phù với với sản phẩm dịch vụ của doanh nghiệp.', NULL, 1, 0, 'marketing', 2, '2018-07-26 04:58:03', '2018-07-25 21:58:03'),
(68, 8, 'QUẢN TRỊ QUẢNG CÁO HIỆU QUẢ', NULL, '1531210892_why-mkt-3.png', '1531794978_why-mkt-3-3.png', 'Thiết lập, theo dõi, đánh giá hiệu quả quảng cáo, báo cáo chi tiết hàng ngày. Giúp khách hàng nắm bắt được kết quả của chiến dịch dễ dàng.', NULL, 1, 0, 'marketing', 3, '2018-07-26 04:58:27', '2018-07-25 21:58:27'),
(69, 8, 'THIẾT KẾ CHUYÊN NGHIỆP', NULL, '1531210908_why-mkt-4.png', '1531794985_why-mkt-4-4.png', 'Thiết kế hình ảnh quảng cáo chuyên nghiệp, tạo được dấu với với khách hàng, tăng tỉ lệ click vào fanpage.', NULL, 1, 0, 'marketing', 4, '2018-07-26 04:58:55', '2018-07-25 21:58:55'),
(70, 8, 'TIẾP NHẬN THÔNG TIN', NULL, '1531213431_quy-trinh-11.png', NULL, 'Tiếp nhận thông tin khách hàng, phân tích, định hướng quảng cáo phù hợp.', NULL, 0, 0, 'quy-trinh-marketing', 1, '2018-07-26 04:59:50', '2018-07-25 21:59:50'),
(71, 8, 'TRIỂN KHAI DỊCH VỤ', NULL, '1531213442_quy-trinh-12.png', NULL, 'Soạn thảo nội dung, thiết kế hình ảnh phù hợp, triển khai chiến dịch quảng cáo', NULL, 0, 0, 'quy-trinh-marketing', 2, '2018-07-26 05:00:14', '2018-07-25 22:00:14'),
(72, 8, 'BÁO CÁO ĐO LƯỜNG', NULL, '1531213455_quy-trinh-13.png', NULL, 'Đo lường hiệu quả chuyển đổi, báo cáo hàng ngày, thay đổi khi có yêu cầu', NULL, 1, 0, 'quy-trinh-marketing', 3, '2018-07-26 05:00:44', '2018-07-25 22:00:44'),
(73, 8, 'CẢM NHẬN - ĐÁNH GIÁ', NULL, '1531213471_quy-trinh-14.png', NULL, 'Kết thúc hợp đồng, ký kết hợp đồng nếu khách hàng cảm thấy hiệu quả.', NULL, 1, 0, 'quy-trinh-marketing', 4, '2018-07-26 05:01:17', '2018-07-25 22:01:17'),
(74, 8, 'TIẾP NHẬN THÔNG TIN KHÁCH HÀNG', NULL, '1531216890_quy-trinh-content-1.png', NULL, 'Tiếp nhận thông tin, phân tích và định hướng nội dung phù hợp.', NULL, 1, 0, 'quy-trinh-content', 1, '2018-07-26 04:32:59', '2018-07-25 21:32:59'),
(75, 8, 'LẬP KẾ HOẠCH QUẢN TRỊ NỘI DUNG', NULL, '1531216917_quy-trinh-content-2.png', NULL, 'Xây dựng kế hoạch bài viết chăm sóc và thống nhất với khách hàng', NULL, 1, 0, 'quy-trinh-content', 2, '2018-07-26 04:34:36', '2018-07-25 21:34:36'),
(76, 8, 'TRIỂN KHAI DỊCH VỤ', NULL, '1531216934_quy-trinh-content-3.png', NULL, 'Sau khi ký khách hàng hoàn thiện các khoản phí quản trị chúng tôi sẽ tiến hành biên tập, cập nhật nội dung lên website, fanpage của khách hàng.', NULL, 1, 0, 'quy-trinh-content', 3, '2018-07-26 04:36:58', '2018-07-25 21:36:58'),
(77, 8, 'tại sao chọn chúng tôi gco', NULL, '1531273547_why-content.png', NULL, 'Chúng tôi mang đến dịch vụ quản trị nội dung fanpage và website với kế hoạch chi tiết trong từng giai đoạn cụ thể để giúp đẩy mạnh tối đa hiệu quả lâu dài về content trên fanpage hoặc website của khách hàng đồng thời xây dựng fanpage, website của khách hàng trở nên chuyên nghiệp hơn.', '<p>Kiểm tra hoạt động của Website, Fanpage</p>\r\n<p>Thiết kế nhận diện thương hiệu tr&ecirc;n h&igrave;nh ảnh đăng tải Website hoặc&nbsp;Fanpage&nbsp;</p>\r\n<p>Bi&ecirc;n tập, cập nhật nội dung (tin tức, sản phẩm) l&ecirc;n Website hoặc Fanpage</p>\r\n<p>Chia sẻ Website, Fanpage l&ecirc;n c&aacute;c k&ecirc;nh vệ tinh nhằm tăng lượt tiếp cận&nbsp;</p>', 1, 0, 'content', 1, '2018-07-26 04:55:40', '2018-07-25 21:55:40'),
(78, 8, 'Không truy cập, không mất phí', 'https://gco.vn/', '1531282777_quy-trinh-25.png', NULL, 'Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.Aenean commodo ligula eget dolor. Aenean massa.', NULL, 1, 0, 'slogan-project', 1, '2018-07-16 02:02:46', '2018-07-15 19:02:46'),
(79, 5, 'Bắt đầu chạy quảng cáo google ngân sách thấp', NULL, '1531282793_quy-trinh-26.png', NULL, 'Aenean commodo ligula eget dolor. Aenean massa. Lorem ipsum dolor sit amet, consec tetuer adipis elit, aliquam eget nibh etlibura.', NULL, 1, 0, 'slogan-project', 2, '2018-07-10 21:19:53', '2018-07-10 21:19:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `home` int(11) DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `home`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 'Tin tức 1', 'tin-tuc-1', '1536542535_blog-2.jpg', '', 'Nhằm giúp các bạn tiết kiệm được nhiều thời gian trong quá trình tìm kiếm tài liệu để nghiên cứu.', '<p><strong>Tiếng Nhật- một thứ tiếng của đất nước hoa anh đ&agrave;o xinh đẹp. C&oacute; thể n&oacute;i, Nhật Bản l&agrave; một đất nước với nhiều cảnh đẹp, n&eacute;t văn h&oacute;a đặc sắc c&ugrave;ng với sự ph&aacute;t triển vượt bậc. Ch&iacute;nh v&igrave; điều đ&oacute; đ&atilde; khiến nhiều bạn trẻ y&ecirc;u th&iacute;ch v&agrave; muốn được đi đến đ&acirc;y để thưởng thức những cảnh vật nơi n&agrave;y.</strong></p>\r\n<p>Nhưng c&aacute;c bạn lại lo ngại khoảng c&aacute;ch về ng&ocirc;n ngữ. Vậy tại sao c&aacute;c bạn kh&ocirc;ng thử t&igrave;m gia sư dạy tiếng Nhật để x&oacute;a bỏ khoảng c&aacute;ch đ&oacute;? V&agrave; gia sư quận Hai B&agrave; Trưng dạy tiếng Nhật sẽ gi&uacute;p c&aacute;c bạn điều đ&oacute;.</p>\r\n<p style=\"text-align: center;\"><img src=\"http://localhost/math/upload/blog-detail-1.jpg\" alt=\"\" width=\"742\" height=\"493\" /></p>\r\n<h5>1.Xem x&eacute;t độ tuổi v&agrave; sợ th&iacute;ch trước khi lựa chọn gia sư quận Hai B&agrave; Trưng</h5>\r\n<p>C&oacute; thể n&oacute;i, việc x&atilde; hội đang ng&agrave;y c&agrave;ng ph&aacute;t triển kh&ocirc;ng ngừng th&igrave; việc học th&ecirc;m một ng&ocirc;n ngữ nữa l&agrave; điều v&ocirc; c&ugrave;ng bổ &iacute;ch đối với mọi người. Bởi để theo kịp thời đại ph&aacute;t triển th&igrave; bạn phải l&agrave; người c&oacute; sự hiểu biết rộng lớn c&ugrave;ng với khả năng biết nhiều thứ tiếng.</p>\r\n<p>Học ng&ocirc;n ngữ Nhật l&agrave; một m&ocirc;n học kh&ocirc;ng &eacute;p buộc ở độ tuổi n&agrave;o cả. C&aacute;c bạn c&oacute; thể học d&ugrave; ở độ tuổi n&agrave;o cũng được. Bởi việc tiếp th&ecirc;m kiến thức l&agrave; kh&ocirc;ng giới hạn độ tuổi. Do đ&oacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m kh&ocirc;ng phải sợ rằng m&igrave;nh qu&aacute; gi&agrave; hay qu&aacute; trẻ để học tiếng Nhật.</p>\r\n<p>H&atilde;y sẵn s&agrave;ng để tiếp thu ng&ocirc;n ngữ mới đi bằng c&aacute;ch thu&ecirc; gia sư tại Hai B&agrave; Trưng</p>', 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-09-10 02:30:08', '2018-09-09 19:30:08'),
(2, 0, 8, 'Tin tức 2', 'tin-tuc-2', '1536542683_blog-3.jpg', '', 'Nhằm giúp các bạn tiết kiệm được nhiều thời gian trong quá trình tìm kiếm tài liệu để nghiên cứu.', NULL, 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-09-11 09:26:11', '2018-09-11 02:26:11'),
(3, 0, 8, 'Tin tức 3', 'tin-tuc-3', '1536542722_blog-4.jpg', '', 'Nhằm giúp các bạn tiết kiệm được nhiều thời gian trong quá trình tìm kiếm tài liệu để nghiên cứu.', NULL, 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2018-09-11 09:26:10', '2018-09-11 02:26:10'),
(4, 0, 8, 'Tin tức 4', 'tin-tuc-4', '1536542742_blog-5.jpg', '', 'Nhằm giúp các bạn tiết kiệm được nhiều thời gian trong quá trình tìm kiếm tài liệu để nghiên cứu.', NULL, 1, 1, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2018-09-11 09:26:11', '2018-09-11 02:26:11'),
(5, 0, 8, 'Lỗi khi mua tài liệu & Cách xử lý', 'loi-khi-mua-tai-lieu-cach-xu-ly', '', '', NULL, '<h5>1.Xem x&eacute;t độ tuổi v&agrave; sợ th&iacute;ch trước khi lựa chọn gia sư quận Hai B&agrave; Trưng</h5>\r\n<p>C&oacute; thể n&oacute;i, việc x&atilde; hội đang ng&agrave;y c&agrave;ng ph&aacute;t triển kh&ocirc;ng ngừng th&igrave; việc học th&ecirc;m một ng&ocirc;n ngữ nữa l&agrave; điều v&ocirc; c&ugrave;ng bổ &iacute;ch đối với mọi người. Bởi để theo kịp thời đại ph&aacute;t triển th&igrave; bạn phải l&agrave; người c&oacute; sự hiểu biết rộng lớn c&ugrave;ng với khả năng biết nhiều thứ tiếng.</p>\r\n<p>Học ng&ocirc;n ngữ Nhật l&agrave; một m&ocirc;n học kh&ocirc;ng &eacute;p buộc ở độ tuổi n&agrave;o cả. C&aacute;c bạn c&oacute; thể học d&ugrave; ở độ tuổi n&agrave;o cũng được. Bởi việc tiếp th&ecirc;m kiến thức l&agrave; kh&ocirc;ng giới hạn độ tuổi. Do đ&oacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m kh&ocirc;ng phải sợ rằng m&igrave;nh qu&aacute; gi&agrave; hay qu&aacute; trẻ để học tiếng Nhật.</p>\r\n<p>H&atilde;y sẵn s&agrave;ng để tiếp thu ng&ocirc;n ngữ mới đi bằng c&aacute;ch thu&ecirc; gia sư tại Hai B&agrave; Trưng</p>', 1, 0, 0, NULL, NULL, NULL, 'baiviet', 1, '2018-09-12 03:21:53', '2018-09-11 20:21:53'),
(6, 0, 8, 'Hướng dẫn tải tài liệu', 'huong-dan-tai-tai-lieu', '', '', NULL, '<h5>1.Xem x&eacute;t độ tuổi v&agrave; sợ th&iacute;ch trước khi lựa chọn gia sư quận Hai B&agrave; Trưng</h5>\r\n<p>C&oacute; thể n&oacute;i, việc x&atilde; hội đang ng&agrave;y c&agrave;ng ph&aacute;t triển kh&ocirc;ng ngừng th&igrave; việc học th&ecirc;m một ng&ocirc;n ngữ nữa l&agrave; điều v&ocirc; c&ugrave;ng bổ &iacute;ch đối với mọi người. Bởi để theo kịp thời đại ph&aacute;t triển th&igrave; bạn phải l&agrave; người c&oacute; sự hiểu biết rộng lớn c&ugrave;ng với khả năng biết nhiều thứ tiếng.</p>\r\n<p>Học ng&ocirc;n ngữ Nhật l&agrave; một m&ocirc;n học kh&ocirc;ng &eacute;p buộc ở độ tuổi n&agrave;o cả. C&aacute;c bạn c&oacute; thể học d&ugrave; ở độ tuổi n&agrave;o cũng được. Bởi việc tiếp th&ecirc;m kiến thức l&agrave; kh&ocirc;ng giới hạn độ tuổi. Do đ&oacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m kh&ocirc;ng phải sợ rằng m&igrave;nh qu&aacute; gi&agrave; hay qu&aacute; trẻ để học tiếng Nhật.</p>\r\n<p>H&atilde;y sẵn s&agrave;ng để tiếp thu ng&ocirc;n ngữ mới đi bằng c&aacute;ch thu&ecirc; gia sư tại Hai B&agrave; Trưng</p>', 1, 0, 0, NULL, NULL, NULL, 'baiviet', 2, '2018-09-12 03:21:59', '2018-09-11 20:21:59'),
(7, 0, 8, 'Quy định Download tài liệu', 'quy-dinh-download-tai-lieu', '', '', NULL, '<h5>1.Xem x&eacute;t độ tuổi v&agrave; sợ th&iacute;ch trước khi lựa chọn gia sư quận Hai B&agrave; Trưng</h5>\r\n<p>C&oacute; thể n&oacute;i, việc x&atilde; hội đang ng&agrave;y c&agrave;ng ph&aacute;t triển kh&ocirc;ng ngừng th&igrave; việc học th&ecirc;m một ng&ocirc;n ngữ nữa l&agrave; điều v&ocirc; c&ugrave;ng bổ &iacute;ch đối với mọi người. Bởi để theo kịp thời đại ph&aacute;t triển th&igrave; bạn phải l&agrave; người c&oacute; sự hiểu biết rộng lớn c&ugrave;ng với khả năng biết nhiều thứ tiếng.</p>\r\n<p>Học ng&ocirc;n ngữ Nhật l&agrave; một m&ocirc;n học kh&ocirc;ng &eacute;p buộc ở độ tuổi n&agrave;o cả. C&aacute;c bạn c&oacute; thể học d&ugrave; ở độ tuổi n&agrave;o cũng được. Bởi việc tiếp th&ecirc;m kiến thức l&agrave; kh&ocirc;ng giới hạn độ tuổi. Do đ&oacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m kh&ocirc;ng phải sợ rằng m&igrave;nh qu&aacute; gi&agrave; hay qu&aacute; trẻ để học tiếng Nhật.</p>\r\n<p>H&atilde;y sẵn s&agrave;ng để tiếp thu ng&ocirc;n ngữ mới đi bằng c&aacute;ch thu&ecirc; gia sư tại Hai B&agrave; Trưng. xxxxx</p>', 1, 0, 0, NULL, NULL, NULL, 'baiviet', 3, '2018-09-12 03:22:09', '2018-09-11 20:22:09'),
(8, 0, 8, 'Điều kiện khi tham gia MathX.doc', 'dieu-kien-khi-tham-gia-mathxdoc', '', '', NULL, '<h5>1.Xem x&eacute;t độ tuổi v&agrave; sợ th&iacute;ch trước khi lựa chọn gia sư quận Hai B&agrave; Trưng</h5>\r\n<p>C&oacute; thể n&oacute;i, việc x&atilde; hội đang ng&agrave;y c&agrave;ng ph&aacute;t triển kh&ocirc;ng ngừng th&igrave; việc học th&ecirc;m một ng&ocirc;n ngữ nữa l&agrave; điều v&ocirc; c&ugrave;ng bổ &iacute;ch đối với mọi người. Bởi để theo kịp thời đại ph&aacute;t triển th&igrave; bạn phải l&agrave; người c&oacute; sự hiểu biết rộng lớn c&ugrave;ng với khả năng biết nhiều thứ tiếng.</p>\r\n<p>Học ng&ocirc;n ngữ Nhật l&agrave; một m&ocirc;n học kh&ocirc;ng &eacute;p buộc ở độ tuổi n&agrave;o cả. C&aacute;c bạn c&oacute; thể học d&ugrave; ở độ tuổi n&agrave;o cũng được. Bởi việc tiếp th&ecirc;m kiến thức l&agrave; kh&ocirc;ng giới hạn độ tuổi. Do đ&oacute;, c&aacute;c bạn cứ y&ecirc;n t&acirc;m kh&ocirc;ng phải sợ rằng m&igrave;nh qu&aacute; gi&agrave; hay qu&aacute; trẻ để học tiếng Nhật.</p>\r\n<p>H&atilde;y sẵn s&agrave;ng để tiếp thu ng&ocirc;n ngữ mới đi bằng c&aacute;ch thu&ecirc; gia sư tại Hai B&agrave; Trưng. sssss</p>', 1, 0, 0, NULL, NULL, NULL, 'baiviet', 4, '2018-09-12 03:22:17', '2018-09-11 20:22:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `ratepoint` int(2) DEFAULT NULL,
  `noibat` int(11) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL DEFAULT '1',
  `download` int(11) DEFAULT '0',
  `document` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `mota`, `content`, `tinhtrang`, `model`, `namsanxuat`, `ratepoint`, `noibat`, `views`, `download`, `document`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 8, 4, NULL, 1, 'Tài liệu toán lớp 1', 'tai-lieu-toan-lop-1', '1536563109_doc-1.jpg', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, 6, 0, '', 1, NULL, NULL, NULL, '2018-09-11 08:12:57', '2018-09-11 01:08:41'),
(2, 8, 5, NULL, 2, 'Tài liệu toán lớp 2', 'tai-lieu-toan-lop-2', '1536563131_doc-2.jpg', 0, NULL, NULL, 0, NULL, NULL, NULL, 1, 12, 0, NULL, 1, NULL, NULL, NULL, '2018-09-11 09:41:49', '2018-09-11 02:41:49'),
(3, 8, 4, NULL, 3, 'Tài liệu lớp 1 số 2', 'tai-lieu-lop-1-so-2', '1536563160_doc-3.jpg', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, 8, 10, '1536745267_reactjs-essentialspdf.pdf', 1, NULL, NULL, NULL, '2018-09-12 09:41:07', '2018-09-12 02:41:07'),
(4, 8, 4, NULL, 4, 'Tài liệu toán lớp 1 số 2', 'tai-lieu-toan-lop-1-so-2', '1536563181_doc-4.jpg', 0, NULL, NULL, 0, NULL, NULL, NULL, 1, 11, 0, NULL, 1, NULL, NULL, NULL, '2018-10-18 09:35:31', '2018-10-18 02:35:31'),
(5, 8, 5, NULL, 5, 'Tài liệu môn toán lớp 2', 'tai-lieu-mon-toan-lop-2', '1536571703_doc-4.jpg', 0, '<div class=\"\">\r\n<p>Đề t&agrave;i Nghi&ecirc;n cứu Khoa học: M&ocirc; h&igrave;nh nh&agrave; nước Việt Nam nhằm mục ti&ecirc;u chỉ r&otilde; đặc trưng việc tổ chức ch&iacute;nh quyền thời kỳ phong kiến, chỉ ra cơ sở của việc xuất hiện m&ocirc; h&igrave;nh, &yacute; nghĩa của mỗi m&ocirc; h&igrave;nh qua từng thời k&igrave;, từ đ&oacute; r&uacute;t ra hệ luận của từng m&ocirc; h&igrave;nh v&agrave; ảnh hưởng cũng như b&agrave;i học đối với tổ chức bộ m&aacute;y nh&agrave; nước Việt Nam hiện nay.xx</p>\r\n</div>', NULL, 0, NULL, NULL, NULL, 1, 7, 1, '', 1, NULL, NULL, NULL, '2018-09-12 03:26:46', '2018-09-11 20:26:46'),
(21, 8, 10, NULL, 6, 'Toán lớp 7', 'toan-lop-7', '1536657539_doc-7.jpg', 0, NULL, NULL, 0, NULL, NULL, NULL, 0, 18, 3, '1536657539_reactjs-essentialspdf.pdf', 1, NULL, NULL, NULL, '2018-09-12 03:28:20', '2018-09-11 20:28:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `mota`, `photo`, `noibat`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Toán tiểu học', 'toan-tieu-hoc', 'Bộ tài liệu lớp 1, lớp 2, lớp 3, lớp 4, lớp 5', '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:08:00', '2018-09-11 02:08:00'),
(2, 0, 2, 'Toán THCS', 'toan-thcs', 'Bộ tài liệu lớp 6, lớp 7, lớp 8', '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:09:11', '2018-09-11 02:09:11'),
(3, 0, 3, 'Toán THPT', 'toan-thpt', 'Bộ tài liệu lớp 10, 11, 12', '', 0, 1, 0, NULL, NULL, NULL, '2018-09-12 06:48:54', '2018-09-11 23:48:54'),
(4, 1, 4, 'Tài liệu lớp 1', 'tai-lieu-lop-1', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:07:14', '2018-09-10 23:46:17'),
(5, 1, 5, 'Tài liệu lớp 2', 'tai-lieu-lop-2', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:07:15', '2018-09-10 23:46:21'),
(6, 1, 6, 'Tài liệu lớp 3', 'tai-lieu-lop-3', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:07:16', '2018-09-10 23:46:27'),
(7, 1, 7, 'Toán lớp 4', 'toan-lop-4', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:07:16', '2018-09-10 23:46:32'),
(8, 1, 8, 'Toán lớp 5', 'toan-lop-5', NULL, '', 1, 1, 0, NULL, NULL, NULL, '2018-09-11 09:07:19', '2018-09-10 23:46:36'),
(9, 0, 9, 'Tài liệu ôn thi tốt nghiệp', 'tai-lieu-on-thi-tot-nghiep', 'Bộ tài liệu ôn thi đại học, thpt', '', 0, 1, 0, NULL, NULL, NULL, '2018-09-11 09:08:39', '2018-09-11 02:08:39'),
(10, 2, 10, 'Tài liệu lớp 7', 'tai-lieu-lop-7', NULL, '', 0, 1, 0, NULL, NULL, NULL, '2018-09-11 02:17:04', '2018-09-11 02:17:04'),
(11, 2, 11, 'Tài liệu lớp 8', 'tai-lieu-lop-8', NULL, '', 0, 1, 0, NULL, NULL, NULL, '2018-09-11 02:17:17', '2018-09-11 02:17:17'),
(12, 2, 12, 'Tài liệu lớp 6', 'tai-lieu-lop-6', NULL, '', 0, 1, 0, NULL, NULL, NULL, '2018-09-11 02:17:31', '2018-09-11 02:17:31'),
(13, 2, 13, 'tài liệu lớp gì', 'tai-lieu-lop-gi', NULL, '', 0, 1, 0, NULL, NULL, NULL, '2018-09-11 02:18:22', '2018-09-11 02:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo_footer` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `photo_page` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci,
  `twitter` text COLLATE utf8_unicode_ci,
  `skype` text COLLATE utf8_unicode_ci,
  `google` text COLLATE utf8_unicode_ci,
  `youtube` text COLLATE utf8_unicode_ci,
  `status` int(11) DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `photo_footer`, `photo_page`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `skype`, `google`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Math', 'Math', 'Math', 'gco.vn', 'Hà Nội', '0987654321', '0965412387', 'Chúng tôi vẫn biết rằng, làm việc với một đoạn văn bản dễ đọc và rối nghĩa dễ gây rối trí và cảm trở công việc tập trung vào yếu tố trình bày văn bản.', 'admin@team.vn', '1536379199_logo-1.png', '1536380575_logo-2.png', '1530871000_logo-page.png', '1536379199_logo-1.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', NULL, 'https://plus.google.com/?hl=vi', NULL, 1, NULL, '© GCO GROUP 2018. All rights reserved', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7749747466096!2d105.82069491439643!3d21.00165548601309!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac8429ac32cb%3A0x592668996cef591f!2zMzE1IFRyxrDhu51uZyBDaGluaCwgS2jGsMahbmcgVGjGsOG7o25nLCDEkOG7kW5nIMSQYSwgSMOgIE7hu5lpLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1531887013298\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-09-08 04:49:13', '2018-09-07 21:49:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `photo1` text CHARACTER SET utf8,
  `photo2` text CHARACTER SET utf8,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `photo1`, `photo2`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 8, '1', NULL, '1536655392_banner-3.jpg', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 1, '2018-09-11 01:43:12', '2018-09-11 01:43:12'),
(2, 8, '2', NULL, '1536655399_banner-3.jpg', '', '', NULL, NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-09-11 01:43:19', '2018-09-11 01:43:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `photo` text,
  `photo2` text,
  `stt` int(11) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-06-14 23:42:39', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-06-16 02:51:34', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$IP3633RgCQNAfs6J8cic9.XRNb4v7KxvcI0oF1HpWBQKqPT4v.JYG', 'Admin', 'gco@gmail.com', '0985431797', '315 Trường chinh, Thanh Xuân, Hà Nội', 1, '5.jpg', 1, 'Ljivi1hsYgR59Oy0OVCKjGS9jXPufymhqIPUw5KmqOOltNBeg2cHsAjOZ4Ve', '2018-07-13 09:06:16', '2018-07-13 02:06:16'),
(7, 'hoangchuong', '$2y$10$PnaSJxmZdL0x0wRtj4q0tODPWKtxI85VefEFNZWDQKEH6q8rxjLc6', 'chuong', 'chuonghoanghong@gmail.com', NULL, NULL, 1, NULL, 1, 'DSYV3dr0q7IjUiVKsa4tl4ApOSuDPybd17EupcaO', '2017-11-07 01:31:10', '2017-11-07 01:31:10'),
(8, 'admin', '$2y$10$54bF9zCcwvAY1oDKCLsN3O/sEUOF/a0Q8Zz/UKti5CzFogRactG3O', 'admin', 'admin@gmail.com', NULL, NULL, 1, 'logo-home-2.png', 1, 'mBaTHa9DMxbdT8l2IW7o5lJGKK3tfAHhp05s6YkXlK1vkLlFYbIDo0dgqqyt', '2018-07-31 10:05:50', '2018-07-13 18:38:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `mota` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `link`, `mota`, `created_at`, `updated_at`) VALUES
(1, 'EJjmF6Ke_xQ', 'Chúng tôi luôn mong muốn đón nhận những ý kiến chia sẻ từ tất cả các thành viên để các dịch vụ của chúng tôi ngày càng hoàn thiện và mang lại lợi ích cho cộng đồng.', '2017-10-15 20:31:58', '2018-09-11 20:48:54');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `news_categories` ADD FULLTEXT KEY `name1` (`name`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gioithieu`
--
ALTER TABLE `gioithieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT cho bảng `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
