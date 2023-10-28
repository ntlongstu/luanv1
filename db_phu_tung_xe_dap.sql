-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2023 at 04:11 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_phu_tung_xe_dap`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'doantotnghiep@gmail.com', '$2y$10$jL8d0Fau1uB.qLDXToFhSeUAoLHByuvbEWfeV4Sg7Ziy6sO4whY3q', '0988999999', NULL, NULL, NULL, 1, 1, NULL, NULL, NULL),
(2, 'Nhân viên', 'nhanvien@gmail.com', '$2y$10$NNYi0koqS93aRQunXTE76OeGeU4e6jFm6GatlHcHCM6.DVYrswY7G', '', NULL, NULL, NULL, 2, 1, NULL, '2020-06-13 06:23:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Mua xe đạp thể thao hãng nào tốt', 'mua-xe-dap-the-thao-hang-nao-tot', 1, 1, 1, 0, 'Có lẽ đây là câu hỏi mà hầu hết mọi người đều đặt ra trong đầu khi có ý định tìm cho mình một chiếc xe đạp thể thao đầu tiên. Câu hỏi này thực sự quá rộng và khó có thể trả lời được là hãng nào tốt nhất, ngay cả với một người làm lâu năm trong ngành xe đạp thể thao như mình.', '2021-08-01__1392624508-images-175x132.png', '<h2><strong><strong>Mua xe đạp thể thao h&atilde;ng n&agrave;o tốt?</strong></strong></h2>\r\n\r\n<p>C&oacute; lẽ đ&acirc;y l&agrave; c&acirc;u hỏi m&agrave; hầu hết mọi người đều đặt ra trong đầu khi c&oacute; &yacute; định t&igrave;m cho m&igrave;nh một chiếc Xe đạp thể thao&nbsp;đầu ti&ecirc;n. C&acirc;u hỏi n&agrave;y thực sự qu&aacute; rộng v&agrave; kh&oacute; c&oacute; thể trả lời được l&agrave; h&atilde;ng n&agrave;o tốt nhất, ngay cả với một người l&agrave;m l&acirc;u năm trong ng&agrave;nh xe đạp thể thao như m&igrave;nh.</p>\r\n\r\n<p>V&igrave; vậy, m&igrave;nh sẽ đưa ra một số ph&acirc;n t&iacute;ch về ưu nhược điểm của một số h&atilde;ng xe đạp đang được ưa chuộng rộng r&atilde;i tại Việt Nam để c&aacute;c bạn c&oacute; thể tự chọn cho m&igrave;nh chiếc&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\">xe đạp thể thao</a>&nbsp;tốt nhất v&agrave; ph&ugrave; hợp nhất (chủ yếu l&agrave; c&aacute;c thương hiệu t&ecirc;n tuổi v&agrave; c&oacute; mức gi&aacute; th&agrave;nh hợp l&yacute;, t&ocirc;i kh&ocirc;ng đề cập đến những thương hiệu đặc biệt m&agrave; gi&aacute; th&agrave;nh chiếc xe c&oacute; thể l&ecirc;n tới h&agrave;ng trăm triệu):</p>\r\n\r\n<p><strong>1/&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/xe-dap-giant/\">Xe đạp Giant:</a></strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một thương hiệu rất nổi tiếng của Đ&agrave;i Loan, l&agrave;&nbsp;g&atilde; khổng lồ&nbsp;trong l&agrave;ng xe đạp, đ&atilde; tham gia nhiều giải đua tr&ecirc;n thế giới v&agrave; cũng đạt được một số th&agrave;nh t&iacute;ch nhất định. Xe đạp Giant đ&atilde; v&agrave;o Việt Nam được kh&aacute; l&acirc;u (khoảng tr&ecirc;n 10 năm g&igrave; đ&oacute;, m&igrave;nh kh&ocirc;ng nhớ ch&iacute;nh x&aacute;c), với đầy đủ c&aacute;c d&ograve;ng từ xe đua, xe địa h&igrave;nh tới xe th&agrave;nh phố, xe trẻ em, xe gập v&agrave; cả xe điện.. với nhiều mẫu m&atilde; phong ph&uacute;.</p>\r\n\r\n<p>Người chơi xe th&igrave; biết nhiều đến xe đạp Giant với c&aacute;c mẫu địa h&igrave;nh phổ biến như Giant ATX610, ATX660, ATX700, ATX720, ATX 830, ATX850, ATX850 .. hay c&aacute;c mẫu cao cấp hơn như XTC800, XTC820, XTC860,&hellip;hoặc c&aacute;c d&ograve;ng city được ưa chuộng nhất hiện nay như Giant Escape&nbsp;2 City, Escape 1, Escape 2, Escape SL1, Escape SL2, FCR 3300, FCR 5300 v&agrave; d&ograve;ng cao cấp hơn như Escape RL1, Escape RL2,&hellip;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/9ukDoJJ4QdU8OitbYZBSrseBf9t9YNlmc9LWDz1SMgX-Tnh2vPDSEpFdBpsHWIQvIgzmjOwaPeLrUuo5bir2F2QgI3Za4fmWQxpSJLud5nGWT7DrVtzBaEIHT9Ijll2_cXhclM4hkdevz9Qp66hDCO3Eaxp0nzl4Gn0OACO0YjQdNZKWY4AmjfRgt69heDI8_hJ56Q9D4piHQ6-ubrM7-tuvDM9PWhZVkvBtp5nm9DIPe1cOwtJjHKjkuGtllhraT8enchuJVoAj3vtGPoROYpe-8Stu9X5j6BIHbJmIKF-79Fmajt2dCfB4f4_cECb-4YJqTtIVGdNL-tkRu9YsCzIUWi60Jo7aXUD2CGy0gLjv0h7jI10DhkIb4Lt6YBqZ_ZCZ7dQJrQZiarwDRoxG0Ubt4d16WeJ3J9ubuzC7RiHh2fMhtr-fEdXao8Gw9NwBasZEis4VHUMNZWtHpwCy2r_juOB86zhuIvCA8JyQW2G26XXn5i9JTB6FWBOVOMDc8s8cVIB6t1GluJWcPvP6MgYTazuzYozLCRsbPN5C4wTtRYCg4nesZSnW9ykrMNT_xWgRaHUX6urkmRdruv4SP7bONvvdIKzoRPLHqLC6=w550-h381-no\" style=\"height:381px; width:550px\" /></p>\r\n\r\n<p><em>Giant l&agrave; &ldquo;g&atilde; khổng lồ&rdquo; trong l&agrave;ng xe đạp,&nbsp;chất lượng xe Giant lu&ocirc;n vượt trội</em></p>\r\n\r\n<p>C&aacute;c mẫu xe Giant hầu hết được sản xuất tại nh&agrave; m&aacute;y Trung quốc, tuy nhi&ecirc;n được ph&acirc;n thanh hai loại. Một loại l&agrave; sản phẩm nội địa chỉ cung cấp cho thị trường Trung quốc v&agrave; một số nước ch&acirc;u &aacute; thường c&oacute; mức gi&aacute; rẻ dưới 20 triệu. Loại thứ hai l&agrave; sản phẩm quốc tế, được sản xuất tại nh&agrave; m&aacute;y Đ&agrave;i Loan, được xuất cho tất cả c&aacute;c nước tr&ecirc;n thế giới,&nbsp;theo ti&ecirc;u chuẩn khắt khe của Ch&acirc;u &acirc;u&nbsp;c&oacute; chất lượng tốt hơn v&agrave; gi&aacute; th&agrave;nh cũng thường kh&aacute; cao khoảng tr&ecirc;n 20 triệu.</p>\r\n\r\n<p>Nh&igrave;n chung, c&aacute;c sản phẩm xe đạp giant chất lượng rất tốt, c&aacute;c chi tiết đều được trau chuốt tinh tế v&agrave; sắc sảo, được gia c&ocirc;ng kỹ lưỡng đến mọi chi tiết nhỏ nhất. H&atilde;ng tự sản xuất hều hết c&aacute;c bộ phận từ khung, ghi đ&ocirc;ng, p&ocirc; tăng, cọc y&ecirc;n đến may ơ, phanh, phuộc&hellip; trừ bộ chuyển động l&agrave; của c&aacute;c thương hiệu nổi tiếng như Shimano hay Sram (đặc biệt l&agrave; shimano được ưa chuộng rộng r&atilde;i tr&ecirc;n to&agrave;n thế giới). Gi&aacute; th&agrave;nh xe giant m&igrave;nh đ&aacute;nh gi&aacute; l&agrave; ph&ugrave; hợp với chất lượng xe v&agrave; thương hiệu một t&ecirc;n tuổi lớn.</p>\r\n\r\n<p>Xe Giant hiện tại h&agrave;ng nh&aacute;i rất nhiều, c&aacute;c bạn mua xe phải hết sức cẩn thận, n&ecirc;n mua ở những shop uy t&iacute;n được ae tr&ecirc;n c&aacute;c diễn đ&agrave;n đ&aacute;nh gi&aacute; cao hay những shop c&oacute; đầu tư trang web chuy&ecirc;n nghiệp, c&aacute;c sản phẩm tr&igrave;nh b&agrave;y r&otilde; rang, c&oacute; ảnh thực tế v&agrave; đặc biệt l&agrave; c&oacute; gi&aacute; ni&ecirc;m yết c&ocirc;ng khai, hết sức tr&aacute;nh c&aacute;c shop kh&ocirc;ng đề gi&aacute; r&otilde; r&agrave;ng (thường l&agrave; bu&ocirc;n b&aacute;n chộp giật, kh&ocirc;ng c&oacute; h&agrave;ng để cố hướng kh&aacute;ch mua xe kh&aacute;c)</p>\r\n\r\n<p><strong>2/&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/xe-dap-trinx/\">Xe đạp TrinX:</a></strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; một thương hiệu kh&aacute; mới, v&agrave;o Việt nam v&agrave;o khoảng năm 2010, tuy nhi&ecirc;n tốc độ ph&aacute;t triển v&agrave;&nbsp;chiếm lĩnh thị trường&nbsp;của TrinX&nbsp;&nbsp;th&igrave; kh&oacute; h&atilde;ng n&agrave;o s&aacute;nh bằng.</p>\r\n\r\n<p>TrinX l&agrave; một thương hiệu xe đạp ch&iacute;nh thống trong top 3 thương hiệu dẫn đầu của Trung quốc c&ugrave;ng với Phonix (phượng ho&agrave;ng) hay Forever (Vĩnh cửu). Bản th&acirc;n m&igrave;nh đ&aacute;nh gi&aacute; cao TrinX hơn 2 h&atilde;ng kia bởi chất lượng v&agrave; kiểu d&aacute;ng c&oacute; phần trội hơn. Thế mạnh của xe đạp TrinX l&agrave; gi&aacute; th&agrave;nh cực tốt so với chất lượng xe. Gi&aacute; rẻ nhưng phụ t&ugrave;ng vẫn ho&agrave;n to&agrave;n của c&aacute;c thương hiệu nổi tiếng như Shimano, Sram, Quando, Maxis, Tektro, Novatec, Kenda&hellip;</p>\r\n\r\n<p>Kiểu d&aacute;ng mẫu m&atilde; của TrinX cũng được thay đổi li&ecirc;n tục, cứ mỗi một năm h&atilde;ng lại cho ra những mẫu mới rất đẹp v&agrave; cải tiến chất lượng. Ch&iacute;nh v&igrave; vậy n&ecirc;n khi du nhập về Việt Nam, sản phẩm đ&atilde; được rất nhiều người đ&oacute;n nhận nhanh ch&oacute;ng. Tuy nhi&ecirc;n, hạn chế của TrinX l&agrave;&nbsp;những mẫu cao cấp c&ograve;n chưa đa dạng v&agrave; chưa c&oacute; hệ thống ph&acirc;n phối ch&iacute;nh thức m&agrave; do c&aacute;c shop tự nhập về v&agrave; tự bảo h&agrave;nh. Do vậy, khi chọn mua xe đạp TrinX bạn phải lựa chọn những cửa h&agrave;ng uy t&iacute;n v&agrave; l&acirc;u năm c&oacute; dịch vụ tốt để được bảo h&agrave;nh v&agrave; bảo dưỡng theo đ&uacute;ng ti&ecirc;u chuẩn. Tr&aacute;nh c&aacute;c shop b&aacute;n h&agrave;ng tại gia, gi&aacute; th&agrave;nh c&oacute; thể rẻ hơn ch&uacute;t do kh&ocirc;ng tốn chi ph&iacute; mặt bằng v&agrave; nh&acirc;n lực, nhưng sẽ kh&ocirc;ng c&oacute; dịch vụ sau b&aacute;n h&agrave;ng.</p>', '2020-07-17 13:29:54', 1, 1, '2021-08-01 14:36:09'),
(2, 'Cách lựa chọn xe đạp thể thao phù hợp với bạn', 'cach-lua-chon-xe-dap-the-thao-phu-hop-voi-ban', 0, 1, 1, 0, 'Ngày nay, xe đạp thể thao đã trở nên khá phổ biến với mọi tầng lớp. Họ lựa chọn cho mình những chiếc xe đạp thể thao thời trang phù hợp với xu thế và thân thiện với môi trường nhưng xe đạp thể thao có nhiều loại', '2021-08-01__t4-175x132.jpg', '<p>Ng&agrave;y nay,&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\">xe đạp thể thao</a>&nbsp;đ&atilde; trở n&ecirc;n kh&aacute; phổ biến với mọi tầng lớp. Họ lựa chọn cho m&igrave;nh những chiếc xe đạp thể thao thời trang ph&ugrave; hợp với xu thế v&agrave; th&acirc;n thiện với m&ocirc;i trường nhưng xe đạp thể thao c&oacute; nhiều loại v&agrave; kh&ocirc;ng phải ai cũng biết c&aacute;ch lựa chọn ch&iacute;nh x&aacute;c chiếc xe m&igrave;nh cần. Sau đ&acirc;y, ch&uacute;ng t&ocirc;i đưa ra một số kiến thức về&nbsp;<strong>c&aacute;ch lựa chọn xe đạp thể thao ph&ugrave; hợp với bạn</strong>&nbsp;để gi&uacute;p c&aacute;c bạn phần n&agrave;o lựa chọn được chiếc xe đạp ph&ugrave; hợp với bản th&acirc;n.</p>\r\n\r\n<p><img alt=\"t4\" src=\"https://xedap24h.vn/wp-content/uploads/2016/04/t4.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<h2><strong>Lựa chọn xe đạp thể thao thế n&agrave;o cho ph&ugrave; hợp?</strong><br />\r\n<strong>1. Mua xe mới, nguy&ecirc;n chiếc hay lắp r&aacute;p?</strong></h2>\r\n\r\n<p>Khi c&oacute; &yacute; định mua xe bạn thường suy nghĩ ngay tới việc mua xe nguy&ecirc;n chiếc hay xe lắp r&aacute;p th&igrave; tốt v&agrave; tiết kiệm hơn? Th&ocirc;ng thường xe nguy&ecirc;n chiếc c&oacute; chất lượng tốt hơn so với xe r&aacute;p, nếu x&eacute;t c&ugrave;ng 1 cấu h&igrave;nh v&agrave; c&aacute;c bộ phận với xe tự lắp r&aacute;p, do xe nguy&ecirc;n chiếc th&igrave; khả năng h&agrave;ng ch&iacute;nh h&atilde;ng cao hơn nhiều, đặc biệt l&agrave; với khung sườn. Tuy nhi&ecirc;n gi&aacute; cũng rất cao so với xe r&aacute;p.<br />\r\nTrong khi đ&oacute;, xe lắp r&aacute;p l&agrave; loại xe m&agrave; thường th&igrave; đ&atilde; chơi qua thời gian, c&oacute; kiến thức nhất định về xe, khi đ&oacute; người d&ugrave;ng mới c&oacute; thể tự tin lựa chọn đồ đạc v&agrave; r&aacute;p cho m&igrave;nh một chiếc xe tốt. Xe r&aacute;p được một ưu điểm l&agrave; th&iacute;ch g&igrave; th&igrave; r&aacute;p nấy, th&iacute;ch thắng đĩa th&igrave; c&oacute; thắng đĩa, groupset (phụ t&ugrave;ng theo nguy&ecirc;n bộ) n&agrave;o th&igrave; cứ chơi. Từng m&oacute;n đồ chọn theo &yacute;, nhu cầu c&aacute; nh&acirc;n. V&igrave; vậy, xe r&aacute;p l&agrave; xe thể hiện r&otilde; nhất c&aacute;i t&ocirc;i c&aacute; nh&acirc;n của mỗi người chơi &ndash; tự thiết kế, tự chọn m&oacute;n, chọn đồ, th&iacute;ch đến đ&acirc;u chơi đến đ&oacute;. Tuy nhi&ecirc;n, trong bối cảnh thật giả lẫn lộn như hiện tại, t&igrave;m kiếm phụ t&ugrave;ng c&oacute; chất lượng như mong muốn kh&ocirc;ng phải l&agrave; điều đơn giản.</p>\r\n\r\n<p><strong>2. C&oacute; n&ecirc;n mua xe b&atilde;i, hay gọi l&agrave; xe đ&atilde; qua sử dụng?</strong></p>\r\n\r\n<p>Xe b&atilde;i (hay c&ograve;n gọi l&agrave; xe second hand, th&ocirc;ng thường nhập trung chuyển từ Campuchia v&agrave; xuất xứ từ c&aacute;c nước kh&aacute;c) được ti&ecirc;u thụ ở Việt Nam rất nhiều. Nếu c&oacute; &iacute;t hiểu biết về phụ t&ugrave;ng xe, th&igrave; đ&acirc;y l&agrave; lựa chọn tốt. Nếu may mắn, người d&ugrave;ng c&oacute; thể c&oacute; được một xe tốt với gi&aacute; rất hợp l&yacute;.<br />\r\nƯu điểm của xe b&atilde;i l&agrave; gi&aacute; kh&aacute; mềm, v&agrave; c&oacute; thể mua được c&aacute;c nh&atilde;n hiệu danh tiếng với gi&aacute; chỉ v&agrave;i triệu. Nhiều người chơi xe chỉ cần bỏ tiền ra mua một xe, chỉ để lấy c&aacute;i sườn m&agrave; ở Việt Nam kh&ocirc;ng b&aacute;n lẻ hoặc kh&ocirc;ng đ&uacute;ng với ch&iacute;nh h&atilde;ng. Xe b&atilde;i gi&aacute; thường v&ocirc; chừng, nếu may mắn c&oacute; thể mua một chiếc ưng &yacute;.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, thường xe b&atilde;i l&agrave; xe second-hand hoặc hư hỏng dọn lại n&ecirc;n c&oacute; 1 số phụ t&ugrave;ng b&ecirc;n trong như cốt, đ&ugrave;m c&oacute; lỗi m&agrave; khi mua ch&uacute;ng ta kh&ocirc;ng để &yacute; kỹ sẽ kh&ocirc;ng nhận ra ngay, m&agrave; khi đem về sử dụng đi nhiều mới ph&aacute;t hiện. Ngo&agrave;i ra, do l&agrave; xe second-hand n&ecirc;n thường một số phụ t&ugrave;ng đ&atilde; lỗi thời (chẳng hạn bộ đề Shimano đời thấp c&aacute;ch đ&acirc;y 5-7 năm), n&ecirc;n khả năng n&acirc;ng cấp sau n&agrave;y kh&oacute; ph&ugrave; hợp với phụ t&ugrave;ng mới.</p>\r\n\r\n<p><strong>3. Chọn loại xe</strong></p>\r\n\r\n<p>Th&ocirc;ng thường, xe dap the thao phổ biến nhất c&oacute; ba loại: Road-bike, Moutain-bike (MTB) v&agrave; Touring-bike.<br />\r\nVấn đề ở đ&acirc;y l&agrave; bạn sẽ th&iacute;ch thể loại g&igrave;, thường xuy&ecirc;n đi đ&acirc;u v&agrave; qu&atilde;ng đường đi ra sao. Nếu bạn đam m&ecirc; tốc độ, v&agrave; qu&atilde;ng đường tốt, th&igrave; xe road l&agrave; tối ưu, nhưng xe road do nhẹ n&ecirc;n khung sườn v&agrave; vỏ xe yếu hơn, nếu v&agrave;o địa h&igrave;nh đ&aacute; dăm hoặc gồ ghề th&igrave; phải rất d&egrave; chừng. MTB th&igrave; ngược lại, tr&ecirc;n đường tốt, xe n&agrave;y chạy rất mất sức, nhưng n&oacute; rất cứng c&aacute;p vượt được mọi địa h&igrave;nh. Trung h&ograve;a th&igrave; c&oacute; thể chọn Touring-bike.</p>\r\n\r\n<p>&gt;&gt;&nbsp; Xem th&ecirc;m:&nbsp;<a href=\"https://xedap24h.vn/cach-phan-loai-xe-dap-the-thao/\">C&aacute;ch ph&acirc;n loại xe đạp thể thao</a></p>\r\n\r\n<p><strong>4. Chọn khung xe</strong></p>\r\n\r\n<p>Chất liệu khung sườn xe dap the thao hiện nay gồm c&aacute;c loại cơ bản l&agrave;:<br />\r\n&ndash; Th&eacute;p<br />\r\n&ndash; Hợp kim nh&ocirc;m<br />\r\n&ndash; Cacbon<br />\r\n&ndash; Titan<br />\r\nTrong đ&oacute; nh&ocirc;m l&agrave; vật liệu phổ biến nhất, v&igrave; rẻ, bền, kh&ocirc;ng rỉ, nhẹ. Cacbon l&uacute;c n&agrave;y cũng thịnh h&agrave;nh, chủ yếu d&ugrave;ng cho xe road (đua) v&igrave; rất nhẹ, tuy nhi&ecirc;n cabon ko đủ độ cứng như nh&ocirc;m v&agrave; gi&aacute; th&agrave;nh đắt hơn n&ecirc;n &iacute;t được sử dụng hơn. Titan c&ograve;n đắt hơn nữa. Th&eacute;p th&igrave; bị lỗi cơ bản l&agrave; rỉ s&eacute;t v&agrave; nặng nề n&ecirc;n c&agrave;ng l&uacute;c c&agrave;ng &iacute;t được quan t&acirc;m, d&ugrave; rằng, nhiều h&atilde;ng danh tiếng b&acirc;y giờ vẫn l&agrave;m c&aacute;c sườn th&eacute;p cực đẹp với gi&aacute; rất cao, như Surly hoặc Vanilla.</p>\r\n\r\n<p>Phần lớn khung sườn gi&aacute; mềm nhập về Việt Nam hiện nay chủ yếu vẫn l&agrave; h&agrave;ng Trung Quốc, chất lượng kh&ocirc;ng đảm b&agrave;o bằng h&agrave;ng ch&iacute;nh h&atilde;ng hoặc được nhập v&agrave;o c&aacute;c thị đường đ&ograve;i hỏi cao. Chưa kể nhiều h&atilde;ng danh tiếng kh&ocirc;ng b&aacute;n h&agrave;ng sườn rời. Đ&oacute; l&agrave; l&yacute; do v&igrave; sao, nhiều người vẫn bỏ tiền ra mua xe b&atilde;i, chủ yếu l&agrave; lấy khung xe.</p>\r\n\r\n<p>Ngo&agrave;i ra, khung sườn l&agrave; bộ phận quan trọng nhất của xe, v&agrave; xem khung sườn th&igrave; cần phải t&igrave;m hiểu về nh&atilde;n hiệu, đời v&agrave; t&igrave;nh trạng hiện tại. Nh&atilde;n hiệu sườn th&igrave; nhiều đến v&ocirc; chừng, nhiều sườn nh&igrave;n đơn giản, hiệu lại lạ tai, nhưng gi&aacute; trị của n&oacute; rất mắc. Kh&aacute;c với c&aacute;c loại phụ t&ugrave;ng, khi kh&ocirc;ng bị rỉ s&eacute;t, chấn động g&acirc;y biến dạng, m&oacute;p, nứt, g&atilde;y&hellip; sườn vẫn c&oacute; tuổi thọ sử dụng rất cao, nếu c&aacute;c bạn ko lăn tăn vấn đề mới cũ, trầy xước (trừ sườn cacbon).</p>\r\n\r\n<p><strong>5. Chọn Groupset</strong></p>\r\n\r\n<p>Phần thứ hai quan trọng kế đến l&agrave; Groupset, l&agrave; 1 nh&oacute;m c&aacute;c bộ phận chủ yếu của xe đạp, bao gồm đề trước, sau, tay chỉnh đề v&agrave; tay thắng, trục giữa, đ&ugrave;m trước sau, s&ecirc;n, l&iacute;p, gi&ograve; dĩa, đĩa thắng hoặc c&agrave;ng thắng V. Kh&ocirc;ng như khung sườn với h&agrave;ng trăm hiệu, 3 groupset phổ biến b&acirc;y giờ l&agrave; h&agrave;ng Shimano, Campagnolo, Sram. Chỉ ri&ecirc;ng Shimano th&ocirc;i cũng c&oacute; v&ocirc; v&agrave;n cấp sản phẩm rồi.</p>\r\n\r\n<p><strong>6. Chọn k&iacute;ch thước xe</strong></p>\r\n\r\n<p>Khung sườn bạn chọn phải c&oacute; size đ&uacute;ng, điều đ&oacute; sẽ l&agrave;m bạn thấy thoải m&aacute;i hơn khi đạp v&agrave; ko bị mỏi, hoặc đau lưng.</p>\r\n\r\n<p>N&oacute;i c&aacute;ch kh&aacute;c, để chọn một chiếc xe đạp thể thao c&oacute; khung sườn hợp bạn cần đo chiều cao (Height) v&agrave; độ d&agrave;i từ đ&aacute;y quần đến đất (Inseam). Th&ocirc;ng thường k&iacute;ch thước phổ biến cho xe MTB l&agrave; S (16-17 inches), M (18, 19 inches).</p>\r\n\r\n<p>Tuy nhi&ecirc;n, vẫn ko phải cứng nhắc, nếu bạn chọn 1 xe MTB, nhiều người vẫn th&iacute;ch chọn xe nhỏ hơn 1 size để dễ &ocirc;m xe khi v&agrave;o đường kh&oacute;. Với Touring n&ecirc;n chon size vừa đạp sẽ tho&aacute;i m&aacute;i hơn.</p>\r\n\r\n<p>Ng&agrave;y nay, tr&ecirc;n thị trường c&oacute; nhiều loại xe đạp thể thao v&agrave; của nhiều h&atilde;ng kh&aacute;c nhau như : xe đạp thể thao TrinX, xe đạp Giant, Xe đạp Galaxy, Xe đạp Jett, Xe đạp Cannondale&hellip; V&igrave; vậy bạn cần phải xem x&eacute;t kỹ v&agrave; lựa chọn cho m&igrave;nh một chiếc xe đạp như &yacute;.</p>\r\n\r\n<p>Hi vọng qua b&agrave;i viết&nbsp;c&aacute;ch lựa chọn xe đạp thể thao ph&ugrave; hợp với bạn, bạn sẽ c&oacute; th&ecirc;m nhiều th&ocirc;ng tin hữu &iacute;ch để mua được chiếc xe ph&ugrave; hợp nhất.</p>\r\n\r\n<p>====</p>', '2021-08-01 14:38:39', 1, 1, NULL),
(3, 'Mua xe đạp thể thao Giant ở đâu uy tín?', 'mua-xe-dap-the-thao-giant-o-dau-uy-tin', 0, 1, 1, 0, 'Mua xe đạp thể thao Giant ở đâu uy tín? Đây có lẽ là câu hỏi mà nhiều người đặt ra khi lựa chọn mua xe đạp thể thao thương hiệu Giant (và cũng tương tự cho các thương hiệu xe đạp thể thao khác). Xe đạp thể thao Giant đã vào Việt Nam khoảng…', '2021-08-01__t8-175x132.jpg', '<h2><a href=\"https://xedap24h.vn/mua-xe-dap-the-thao-giant-o-dau-uy-tin.html\"><strong><strong>Mua xe đạp thể thao Giant ở đ&acirc;u uy t&iacute;n?</strong></strong></a></h2>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; c&acirc;u hỏi m&agrave; nhiều người đặt ra khi lựa chọn mua xe đạp thể thao thương hiệu Giant (v&agrave; cũng tương tự cho c&aacute;c thương hiệu xe đạp thể thao kh&aacute;c). Xe đạp thể thao Giant đ&atilde; v&agrave;o Việt Nam khoảng chục năm nay v&agrave; l&agrave; một thương hiệu mạnh v&agrave; uy t&iacute;n tr&ecirc;n thế giới, ch&iacute;nh v&igrave; vậy việc xe đạp Giant bị nh&aacute;i thương hiệu l&agrave; cực kỳ nhiều v&agrave; rất phổ biến ở VN. Xe đạp Giant nh&aacute;i chủ yếu xuất xứ từ Trung quốc, được gia c&ocirc;ng trong c&aacute;c nh&agrave; xưởng tư nh&acirc;n, nhỏ lẻ chất lượng cực k&eacute;m.</p>\r\n\r\n<p>M&igrave;nh đ&atilde; được rất nhiều b&aacute;c hỏi l&agrave;&nbsp;<strong><strong>&ldquo;Ph&acirc;n biệt xe đạp Giant thật v&agrave; nh&aacute;i như thế n&agrave;o&rdquo;&nbsp;</strong></strong>. Với người lần đầu tham gia bộ m&ocirc;n n&agrave;y hoặc người chưa am hiểu về xe đạp thể thao, việc ph&acirc;n biệt l&agrave; v&ocirc; c&ugrave;ng kh&oacute; khăn bởi khả năng gia c&ocirc;ng v&agrave; bắt chước của người Trung quốc như thế n&agrave;o chắc mọi người đều biết. Tuy nhi&ecirc;n c&oacute; một số sự kh&aacute;c biệt m&agrave; mọi người c&oacute; thể so sanh giữa xe đạp Giant xịn v&agrave; xe nh&aacute;i l&agrave;:</p>\r\n\r\n<p>&ndash; Khung v&agrave; sơn xe Giant xịn được sản xuất theo c&ocirc;ng nghệ độc quyền của giant n&ecirc;n nước sơn cực s&aacute;ng v&agrave; sắc n&eacute;t, khung cũng rất nhẹ. C&ograve;n xe Giant nh&aacute;i nước sơn rất dại, c&oacute; thể bong tr&oacute;c v&agrave; nhấc l&ecirc;n nặng hơn khung Giant xịn rất nhiều (tầm 2kg, l&agrave; cả một vấn đề với chiếc xe thể thao). Nếu đặt 2 xe cạnh nhau bạn sẽ thấy kh&aacute;c nhau một trời một vực.</p>\r\n\r\n<p>&ndash; Xe Giant nh&aacute;i thường chỉ sử dụng bộ chuyển động đời thấp của shimano (như d&ograve;ng 6 hay 7 tầng l&iacute;p Tourney) hoặc tệ hơn l&agrave; sử dụng bộ số nh&aacute;i như Shinoma, Shimona, Shinning&hellip;</p>\r\n\r\n<p>&ndash; Bộ cốt y&ecirc;n, ghi đ&ocirc;ng, p&ocirc; tăng xe giant xịn bao giờ cũng c&oacute; logo của h&atilde;ng Giant c&ograve;n h&agrave;ng nh&aacute;i thường l&agrave; bằng sắt, kh&ocirc;ng c&oacute; logo thương hiệu, dễ bong sơn v&agrave; bị rỉ</p>\r\n\r\n<p>&ndash; &nbsp;Xe giant thật thường c&oacute; tem m&atilde; vạch của h&atilde;ng d&aacute;n ở giảm x&oacute;c trước, c&oacute; số khung in laze ch&igrave;m ở dưới gầm khung hoặc ở ph&iacute;a trước khung</p>\r\n\r\n<p>&ndash; V&agrave; một điểm nữa l&agrave;&nbsp;<strong><strong>xe Giant nh&aacute;i gi&aacute; thường rất rẻ</strong></strong>&nbsp;, chỉ bằng một nửa thậm ch&iacute; 1/3 xe giant xịn. C&aacute;c bạn đừng ham rẻ m&agrave; vớ phải cục nợ v&agrave;o người nh&eacute;, chỉ c&oacute; một điều l&yacute; giải được gi&aacute; rẻ của h&agrave;ng nh&aacute;i bởi v&igrave; n&oacute; sử dụng to&agrave;n đồ vứt đi.</p>\r\n\r\n<p><img alt=\"c1866f36-fcf3-4c0e-b09e-4d27c04a70c9\" src=\"https://xedap24h.vn/wp-content/uploads/2016/04/c1866f36-fcf3-4c0e-b09e-4d27c04a70c9.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p><em>xe đạp Giant ch&iacute;nh h&atilde;ng sơn đẹp, sắc n&eacute;t v&agrave; rất tốt</em></p>\r\n\r\n<p>Vậy l&agrave;m c&aacute;ch n&agrave;o&nbsp;<a href=\"https://xedap24h.vn/xe-dap-giant/\"><strong><strong>mua được một chiếc xe Giant ch&iacute;nh h&atilde;ng</strong></strong></a>, đ&uacute;ng chất lượng v&agrave; đồng tiền bỏ ra? Chỉ c&oacute; một c&aacute;ch duy nhất l&agrave;&nbsp;<strong><strong>bạn n&ecirc;n mua xe tại c&aacute;c cửa h&agrave;ng b&aacute;n xe đạp uy t&iacute;n</strong></strong>. M&agrave; l&agrave;m thế n&agrave;o để biết được&nbsp;<strong><strong>&ldquo; cửa h&agrave;ng b&aacute;n xe đạp n&agrave;o uy t&iacute;n&rdquo;?</strong></strong></p>\r\n\r\n<p>C&oacute; một c&aacute;ch l&agrave; bạn n&ecirc;n tham khảo tr&ecirc;n mạng, tr&ecirc;n c&aacute;c diễn đ&agrave;n về xe đạp để xem mọi người đ&aacute;nh gi&aacute;, đặc biệt l&agrave; c&aacute;c cửa h&agrave;ng tham gia tr&ecirc;n c&aacute;c diễn đ&agrave;n uy t&iacute;n, chịu kh&oacute; giao lưu học hỏi v&agrave; tư vấn xe cho kh&aacute;ch th&igrave; thường đ&oacute; l&agrave; những người b&aacute;n h&agrave;ng c&oacute; t&acirc;m huyết v&agrave; c&oacute; chuy&ecirc;n m&ocirc;n. Khi đ&oacute; bạn c&oacute; thể &ldquo;chọn mặt gửi v&agrave;ng&rdquo; cho c&aacute;c cửa h&agrave;ng n&agrave;y m&agrave; y&ecirc;n t&acirc;m về gi&aacute; cả, chất lượng cũng như nguồn gốc xuất xứ của xe. Những cửa h&agrave;ng n&agrave;y họ bu&ocirc;n b&aacute;n l&acirc;u d&agrave;i n&ecirc;n&nbsp;<strong><strong>&ldquo;uy t&iacute;n&rdquo;&nbsp;</strong></strong>lu&ocirc;n được đặt l&ecirc;n h&agrave;ng đầu.</p>\r\n\r\n<p>Sau đ&oacute; th&igrave; bạn cũng n&ecirc;n xem x&eacute;t trang web b&aacute;n h&agrave;ng của họ. Những nơi b&aacute;n h&agrave;ng uy t&iacute;n th&igrave; web họ được tr&igrave;nh b&agrave;y rất c&ocirc;ng phu, r&otilde; r&agrave;ng, chuy&ecirc;n nghiệp, rất chi tiết về sản phẩm, gi&aacute; rổ cũng được ni&ecirc;m yết c&ocirc;ng khai. Tuyệt đối tr&aacute;nh c&aacute;c cửa h&agrave;ng kh&ocirc;ng ni&ecirc;m yết gi&aacute;, mua b&aacute;n thường hay &ldquo;nh&igrave;n mặt&rdquo; để chặt ch&eacute;m hoặc mặc cả.</p>\r\n\r\n<p>Sau khi đa tham quan gian h&agrave;ng của họ, c&aacute;c bạn n&ecirc;n chọn sơ bộ cho m&igrave;nh một v&agrave;i mẫu xe rồi đến trực tiếp cửa h&agrave;ng nếu c&oacute; thể để ngắm xem xe ngo&agrave;i đời thật n&oacute; thế n&agrave;o (v&agrave; cũng l&agrave; để tham quan cơ sở vật chất của họ). Bạn n&ecirc;n chọn c&aacute;c cửa h&agrave;ng chuy&ecirc;n nghiệp, c&oacute; mặt bằng đ&agrave;ng ho&agrave;ng, tr&aacute;nh mua ở c&aacute;c shop tại gia v&igrave; gi&aacute; th&agrave;nh c&oacute; thể rẻ hơn ch&uacute;t nhưng chất lượng dịch vụ thường k&eacute;m v&agrave; &iacute;t mẫu m&atilde; để lựa chọn. Sau n&agrave;y bảo h&agrave;nh chưa chắc c&aacute;c shop tại gia c&oacute; thể l&agrave;m được v&igrave; thường l&agrave; kh&ocirc;ng chuy&ecirc;n v&agrave; kh&ocirc;ng c&oacute; đồ.</p>\r\n\r\n<p>M&igrave;nh chỉ c&oacute; thể ph&acirc;n t&iacute;ch như vậy, c&ograve;n việc chọn ra&nbsp;<strong><strong>cửa h&agrave;ng n&agrave;o b&aacute;n xe đạp Uy t&iacute;n</strong></strong>&nbsp;l&agrave; ở c&aacute;c bạn, m&igrave;nh kh&ocirc;ng chỉ đ&iacute;ch danh cửa h&agrave;ng n&agrave;o v&igrave; như thế l&agrave; kh&ocirc;ng c&ocirc;ng bằng v&agrave; bị đ&aacute;nh gi&aacute; l&agrave; pr cho nơi n&agrave;o đ&oacute;.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn s&aacute;ng suốt lựa chọn được&nbsp;<em>cửa h&agrave;ng xe đạp uy t&iacute;n</em>, một chiếc xe thể thao tốt nhất, ph&ugrave; hợp nhất v&agrave; sẽ lu&ocirc;n vui vẻ với bộ m&ocirc;n thể thao mới mẻ v&agrave; đầy th&uacute; vị n&agrave;y.</p>\r\n\r\n<p><em>(b&agrave;i viết thực hiện bởi&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\"><strong><strong>XEDAP24H.VN</strong></strong></a>)</em></p>', '2021-08-01 14:40:36', 1, 1, NULL),
(4, 'Cách phân loại xe đạp thể thao', 'cach-phan-loai-xe-dap-the-thao', 0, 1, 1, 0, 'Xe đạp như nào được gọi là xe đạp thể thao? Có rất nhiều loại xe đạp, nhưng không phải xe đạp nào cũng được gọi là xe đạp thể thao. có các loại xe đạp như xe đạp điện, xe đạp thường…', '2021-08-01__t6-175x132.jpg', '<p>Xe đạp như n&agrave;o được gọi l&agrave; xe đạp thể thao? C&oacute; rất nhiều loại xe đạp, nhưng kh&ocirc;ng phải xe đạp n&agrave;o cũng được gọi l&agrave;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\"><strong><strong>xe đạp thể thao</strong></strong></a>. c&oacute; c&aacute;c loại xe đạp như xe đạp điện, xe đạp thường&hellip; Xe đạp thể thao l&agrave; những xe c&oacute; d&aacute;ng khỏe khoắn, khung to chắc v&agrave; m&agrave;u sắc bắt mắt.</p>\r\n\r\n<h2><strong><strong>C&aacute;ch ph&acirc;n loại xe đạp thể thao:</strong></strong></h2>\r\n\r\n<p>1.Ph&acirc;n biệt theo chức năng sử dụng:</p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-dua-road-bike/\">Xe đạp đua</a>&nbsp;(hay xe cuốc, road bike)</p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\"><strong><strong>Xe đạp thể thao</strong></strong></a>, xe đạp địa h&igrave;nh (moutain bike)</p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-thanh-pho-city-xe-touring/\">Xe đạp th&agrave;nh phố</a>&nbsp;(hay xe city)</p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-thanh-pho-city-xe-touring/\">Xe đạp đường d&agrave;i</a>&nbsp;(hay xe touring)</p>\r\n\r\n<p>&ndash;&nbsp;<a href=\"https://xedap24h.vn/xe-dap-gap/\">Xe đạp gập</a>&nbsp;(xe gấp, folding bike)<br />\r\n2.Ph&acirc;n biệt theo cấu tr&uacute;c khung xe:</p>\r\n\r\n<p>&ndash; Khung thẳng ,</p>\r\n\r\n<p>&ndash; Khung cong</p>\r\n\r\n<p>&ndash; Khung gấp</p>\r\n\r\n<p>3.Ph&acirc;n loại theo chất liệu l&agrave;m khung:</p>\r\n\r\n<p>Khung th&eacute;p, hợp kim nh&ocirc;m, titanium, sợi carbon&hellip;</p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute; c&aacute;c c&aacute;ch ph&acirc;n loại &iacute;t phổ biến hơn như: số người ngồi tr&ecirc;n xe (một, hai hay nhiều hơn), vị tr&iacute; y&ecirc;n xe, số b&aacute;nh xe, c&aacute;ch vận h&agrave;nh xe (sức người hay c&oacute; sự hỗ trợ của động cơ)&hellip;</p>\r\n\r\n<p>C&aacute;c d&ograve;ng xe cũng như gi&aacute; xe đạp thể thao phổ biến ở Việt Nam hiện nay:</p>\r\n\r\n<p><strong><strong>Nh&igrave;n th&igrave; c&oacute; vẻ c&oacute; kh&aacute; nhiều chiếc xe đạp thể thao, nhưng thật ra th&igrave; tại Việt Nam, chỉ c&oacute; 4 d&ograve;ng xe thuộc loại xe đạp thể thao c&oacute; thể kể đến như:</strong></strong></p>\r\n\r\n<ol>\r\n	<li><strong><strong>&nbsp;Xe đạp đua, xe đạp cuộc</strong></strong></li>\r\n</ol>\r\n\r\n<p>Loại xe n&agrave;y c&oacute; trọng lượng nhẹ, được thiết kế để đi tr&ecirc;n đường trải nhựa bằng phẳng. Ghi đ&ocirc;ng thường uốn cong th&agrave;nh 2 bậc. Phuộc trước bằng carbon tổng hợp, kh&ocirc;ng c&oacute; giảm s&oacute;c trước hoặc sau. C&oacute; lốp v&agrave; vỏ mỏng, &iacute;t gai so với c&aacute;c d&ograve;ng xe kh&aacute;c để giảm trọng lượng tới mức tối thiểu v&agrave; giảm tiếp x&uacute;c với mặt đường, khung xe được thiết kế tạo tư thế kh&iacute; động học khi ngồi để giảm ma s&aacute;t, đạt tốc độ cao. H&igrave;nh ảnh của xe đạp đua, xe đạp cuộc thường gắn liền với c&aacute;c giải đua xe đạp trong v&agrave; ngo&agrave;i nước .</p>\r\n\r\n<p>Gi&aacute; xe đạp thể thao, xe đạp cuộc phụ thuộc nhiều v&agrave;o trọng lượng của xe, trọng lượng c&agrave;ng nhẹ th&igrave; gi&aacute; tiền c&agrave;ng đắt. Những thương hiệu uy t&iacute;n l&agrave;: xe dap JETT MATCH 1.0,&nbsp;<a href=\"https://xedap24h.vn/xe-dap-cuoc-trinx-r600.html\">xe dap TrinX R600</a>, xe dap Giant 2012 TCR 6600&hellip;</p>\r\n\r\n<ol start=\"2\">\r\n	<li><strong><strong>Xe đạp địa h&igrave;nh</strong></strong></li>\r\n</ol>\r\n\r\n<p>D&ograve;ng xe n&agrave;y trọng lượng nặng, b&aacute;nh xe to c&oacute; đường k&iacute;nh khoảng 650 &ndash; 700c, nhiều gai, th&iacute;ch hợp để đi tr&ecirc;n địa h&igrave;nh gồ ghề như đường dốc, đổ đ&egrave;o hay đường rừng&hellip; Khung to, c&oacute; phuộc trước v&agrave; sau, một số loại c&oacute; lắp giảm shock ở phần giữa xe, ghi đ&ocirc;ng thiết kế thẳng.</p>\r\n\r\n<ol start=\"3\">\r\n	<li><strong><strong>Xe đạp Th&agrave;nh phố, xe đạp Touring</strong></strong></li>\r\n</ol>\r\n\r\n<p>Một chiếc xe dap thuc dung được thiết kế để c&oacute; thể mang v&aacute;c h&agrave;nh l&yacute; cho những chuyến du lịch xa n&ecirc;n trọng lượng xe kh&ocirc;ng qu&aacute; nặng, thường c&oacute; khung sườn d&agrave;i v&agrave; vững chắc hơn so với Road bike, được l&agrave;m từ vật liệu chắc v&agrave; &ecirc;m để tăng khả năng chịu tải. V&agrave;nh xe rắn chắc, lốp xe vừa hoặc nhỏ, &iacute;t gai; tuy c&oacute; cấu tạo giản đơn nhưng hệ thống phanh thắng, tăng giảm l&iacute;p, ghi đ&ocirc;ng đều c&oacute; chất lượng cao. Loại xe n&agrave;y c&oacute; thể d&ugrave;ng để tập thể dục, đi l&agrave;m hoặc đi phượt đường trường.</p>\r\n\r\n<ol start=\"4\">\r\n	<li><strong><strong>Xe đạp gấp</strong></strong></li>\r\n</ol>\r\n\r\n<p>Được thiết kế theo cơ chế th&ocirc;ng minh v&agrave; đơn giản, xe đạp gấp c&oacute; t&iacute;nh năng sử dụng linh hoạt, gọn nhẹ, c&oacute; thể xếp lại để tiết kiệm kh&ocirc;ng gian.</p>\r\n\r\n<p>Mua xe đạp thể thao gi&aacute; bao nhi&ecirc;u l&agrave; hợp l&yacute; ?</p>\r\n\r\n<p>T&ugrave;y theo mục đ&iacute;ch sử dụng v&agrave; kiểu đường đi cũng như lứa tuổi m&agrave; mỗi người lại đưa ra quyết định để mua xe đạp thể thao. Khi lựa chọn mọi người cũng n&ecirc;n xem x&eacute;t gi&aacute; xe đạp thể thao ph&ugrave; hợp với số tiền m&agrave; m&igrave;nh sẵn s&agrave;ng bỏ ra v&agrave; nhu cầu sử dụng chiếc xe đạp đ&oacute; của bản th&acirc;n. Ở thời điểm n&agrave;y th&igrave; phong tr&agrave;o đi xe đạp thể thao đang ph&aacute;t triển, do đ&oacute; m&agrave; việc mua xe đạp thể thao kh&ocirc;ng phải l&agrave; điều kh&oacute; khăn cho người c&oacute; nhu cầu. Tại H&agrave; Nội hay Th&agrave;nh Phố Hồ Ch&iacute; Minh th&igrave; việc<em><strong><strong>&nbsp;t&igrave;m 1 cửa h&agrave;ng b&aacute;n xe đạp thể thao</strong></strong></em>&nbsp;l&agrave; điều kh&ocirc;ng hề kh&oacute;. Đi theo nhu cầu của thị trường th&igrave; việc c&aacute;c cửa h&agrave;ng mở ra l&agrave; điều đương nhi&ecirc;n. Tuy nhi&ecirc;n lựa chọn cho m&igrave;nh 1 sản phẩm tốt về cả chất lẫn lượng cũng như&nbsp;&nbsp;<em><strong><strong>một địa điểm b&aacute;n xe đạp thể thao tin tưởng</strong></strong></em>&nbsp;th&igrave; kh&ocirc;ng phải l&agrave; điều dễ.</p>\r\n\r\n<p>Nếu như bạn đang c&oacute; &yacute; định hoặc bạn l&agrave; người chuẩn bị mua&nbsp;<a href=\"https://xedap24h.vn/xe-dap-the-thao/\"><strong><strong>xe đạp thể thao</strong></strong></a>&nbsp;th&igrave; h&atilde;y đến với&nbsp;<a href=\"https://xedap24h.vn/\">XEDAP24H.VN</a>&nbsp;để ch&uacute;ng t&ocirc;i gi&uacute;p bạn. Ch&uacute;ng t&ocirc;i sẽ gi&uacute;p bạn lựa chọn được nhưng sản phẩm ưng &yacute; nhất, tốt nhất v&agrave; gi&aacute; th&agrave;nh hợp l&yacute; nhất để bạn kh&ocirc;ng phải hối tiếc khi sử dụng sản phẩm đ&oacute;. Với nhiều sản phẩm phong ph&uacute; về kiểu d&aacute;ng, m&agrave;u sắc,&nbsp; thương hiệu cũng như gi&aacute; th&agrave;nh, Ch&uacute;ng t&ocirc;i đảm bảo sẽ gi&uacute;p qu&yacute; kh&aacute;ch h&agrave;ng lựa chọn được những sản phẩm tốt nhất tại&nbsp;<a href=\"https://xedap24h.vn/\">XEDAP24H.VN</a>.</p>', '2021-08-01 14:41:36', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, 'Xe đua cho nam', 'xe-dua-cho-nam', 1, 3, '2020-07-17 19:57:53', '2021-08-01 10:20:08'),
(2, 'Kỹ thuật', 'ky-thuat', 4, 3, '2020-07-17 19:58:14', '2021-08-01 10:18:14'),
(3, 'Xe đua cho nữ', 'xe-dua-cho-nu', 1, 3, '2020-07-17 19:58:56', '2021-08-01 10:19:53');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Xe đạp thể thao1', 'xe-dap-the-thao1', '2021-08-01__icon-by.png', NULL, NULL, 0, 1, 1, '2020-07-17 13:09:48', '2023-05-15 13:17:35'),
(2, 'Xe đạp thành phố', 'xe-dap-thanh-pho', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:09:57', '2021-08-01 10:05:23'),
(3, 'Xe đạp đua', 'xe-dap-dua', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:10:11', '2021-08-01 10:05:45'),
(4, 'Xe đạp trẻ em', 'xe-dap-tre-em', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 13:10:22', '2021-08-01 10:06:26'),
(5, 'Xe điện', 'xe-dien', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:18:17', '2021-08-01 10:06:49'),
(6, 'Xe đạp địa hình', 'xe-dap-dia-hinh', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:18:38', '2021-08-01 10:12:16'),
(7, 'Phụ kiện đồ chơi xe đạp', 'phu-kien-do-choi-xe-dap', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-17 19:19:02', '2021-08-01 10:12:46'),
(8, 'Phụ tùng thay thế', 'phu-tung-thay-the', '2021-08-01__icon-by.png', NULL, NULL, 0, 0, 1, '2020-07-20 15:27:51', '2021-08-01 10:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, 'qưeqweqwe', 0, 6, 0, 8, 0, 0, '2023-05-15 12:58:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_phone` char(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `episode`
--

CREATE TABLE `episode` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL DEFAULT 0,
  `server` varchar(100) DEFAULT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_5` tinyint(4) DEFAULT 0,
  `e_position_6` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `e_position_5`, `e_position_6`, `created_at`, `updated_at`) VALUES
(1, 'event1', '2021-08-01__thietkehaithanh-banner-1-2.jpg', '/', 1, 0, 0, 0, 0, 0, '2021-08-01 12:49:08', '2021-08-01 12:49:08'),
(2, 'event2', '2021-08-01__banner-xe-dap-the-thao-trangchu-fgbike-2021.png', '/', 0, 1, 0, 0, 0, 0, '2021-08-01 12:50:00', '2021-08-01 12:50:00'),
(3, 'event3', '2021-08-01__xd01-2.jpg', '/', 0, 0, 1, 0, 0, 0, '2021-08-01 12:50:30', '2021-08-01 12:50:30'),
(4, 'event4', '2021-08-01__banner-mtb-27-scaled-1920x636.jpg', '/', 0, 0, 0, 1, 0, 0, '2021-08-01 12:51:49', '2021-08-01 12:51:49');

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
-- Table structure for table `import_histories`
--

CREATE TABLE `import_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `thanhtoan` bigint(20) DEFAULT 0,
  `id_import` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `import_histories`
--

INSERT INTO `import_histories` (`id`, `thanhtoan`, `id_import`, `created_at`, `updated_at`) VALUES
(1, 12500000, 1, '2020-07-17 14:49:47', '2020-07-17 14:49:47'),
(2, 5000000, 2, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(3, 0, 3, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(4, 5250000, 4, '2020-07-17 19:24:30', '2020-07-17 19:24:30'),
(5, NULL, 3, '2020-07-17 19:26:29', '2020-07-17 19:26:29'),
(6, 0, 5, '2020-07-17 19:27:22', '2020-07-17 19:27:22'),
(7, 1500000, 5, '2020-07-17 19:27:40', '2020-07-17 19:27:40'),
(8, 0, 6, '2020-07-17 19:28:37', '2020-07-17 19:28:37'),
(9, 4000000, 6, '2020-07-17 19:28:48', '2020-07-17 19:28:48'),
(10, 1000000, 7, '2020-07-18 01:13:51', '2020-07-18 01:13:51'),
(11, 500000, 7, '2020-07-18 01:14:22', '2020-07-18 01:14:22'),
(12, 900000, 8, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(13, 0, 9, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(14, 0, 10, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(15, 0, 11, '2021-08-01 15:17:47', '2021-08-01 15:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_entered`
--

CREATE TABLE `invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `NgaySX` datetime DEFAULT current_timestamp(),
  `Hansudung` datetime DEFAULT NULL,
  `ie_suppliere` int(11) NOT NULL DEFAULT 0,
  `ie_name_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ie_total_money` int(11) NOT NULL DEFAULT 0,
  `ie_category` int(11) NOT NULL DEFAULT 0,
  `ie_product_id` int(11) NOT NULL DEFAULT 0,
  `ie_number` int(11) NOT NULL DEFAULT 0,
  `ie_number_sold` int(11) NOT NULL DEFAULT 0,
  `ie_money` int(11) NOT NULL DEFAULT 0,
  `ie_status` tinyint(4) NOT NULL DEFAULT 0,
  `ie_the_advance` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_entered`
--

INSERT INTO `invoice_entered` (`id`, `NgaySX`, `Hansudung`, `ie_suppliere`, `ie_name_product`, `ie_total_money`, `ie_category`, `ie_product_id`, `ie_number`, `ie_number_sold`, `ie_money`, `ie_status`, `ie_the_advance`, `created_at`, `updated_at`) VALUES
(1, '2020-07-18 00:00:00', NULL, 3, NULL, 12500000, 0, 1, 50, 0, 250000, 0, 12500000, '2020-07-17 14:49:47', '2020-07-17 14:49:47'),
(2, '2020-07-18 00:00:00', NULL, 3, NULL, 5000000, 0, 4, 100, 7, 50000, 0, 5000000, '2020-07-17 19:24:29', '2021-08-01 15:15:37'),
(5, '2020-07-18 00:00:00', NULL, 3, NULL, 3000000, 0, 3, 60, 4, 50000, 0, 1500000, '2020-07-17 19:27:22', '2020-07-18 01:12:25'),
(6, NULL, NULL, 4, NULL, 6250000, 0, 2, 250, 0, 25000, 0, 4000000, '2020-07-17 19:28:37', '2020-07-17 19:28:48'),
(7, NULL, NULL, 3, NULL, 1800000, 0, 6, 60, 0, 30000, 0, 1500000, '2020-07-18 01:13:50', '2020-07-18 01:14:22'),
(8, '2020-07-22 00:00:00', '2021-04-17 00:00:00', 3, NULL, 900000, 0, 7, 10, 0, 90000, 0, 900000, '2020-07-20 15:31:12', '2020-07-20 15:31:12'),
(9, '2020-07-24 00:00:00', '2020-07-24 00:00:00', 3, NULL, 500000, 0, 3, 10, 0, 50000, 0, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(10, NULL, NULL, 3, NULL, 150000, 0, 3, 15, 0, 10000, 0, 0, '2020-07-22 17:36:30', '2020-07-22 17:36:30'),
(11, '2021-03-10 00:00:00', NULL, 3, NULL, 150000000, 0, 5, 100, 0, 1500000, 0, 0, '2021-08-01 15:17:47', '2021-08-01 15:17:47');

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `k_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mn_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-07-17 13:27:52', NULL),
(2, 'Độ xe đạp', 'do-xe-dap', NULL, NULL, NULL, 0, 1, '2021-08-01 15:15:00', NULL);

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
(3, '2020_02_02_041429_create_categories_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_03_24_201555_alter_column_c_parent_id_in_table_categories', 1),
(31, '2020_03_25_214331_create_list_table_system_pay_table', 1),
(32, '2020_03_27_181534_alter_column_type_pay_in_table_transaction', 1),
(33, '2020_04_14_164245_create_supplieres_table', 1),
(34, '2020_04_15_003305_alter_column_pro_supplier_id_in_table_products', 1),
(35, '2020_04_16_234410_after_column_tst_admin_id_in_table_transaction', 1),
(37, '2020_04_29_104806_alter_column_pro_expiration_date_in_table_products', 2),
(38, '2020_04_29_112931_create_invoice_entered_in_tables', 3),
(39, '2020_06_17_192357_create_product_invoice_entered_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 2, 4, 15, 3, 102000, '2020-07-17 20:06:21', NULL),
(2, 3, 3, 15, 4, 68000, '2020-07-18 01:02:27', NULL),
(3, 4, 1, 0, 1, 150000, '2020-07-20 15:25:53', NULL),
(4, 4, 2, 5, 3, 171000, '2020-07-20 15:25:54', NULL),
(5, 5, 4, 15, 4, 26520000, '2021-08-01 15:10:29', NULL),
(6, 6, 7, 5, 1, 8977500, NULL, NULL),
(7, 7, 6, 10, 1, 11925000, NULL, NULL),
(8, 8, 1, 0, 2, 510000, NULL, NULL),
(9, 9, 5, 5, 3, 17090500, NULL, NULL),
(10, 10, 4, 15, 1, 26520000, NULL, NULL);

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `p_vnp_response_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `p_transaction_id`, `p_user_id`, `p_money`, `p_note`, `p_transaction_code`, `p_vnp_response_code`, `p_code_vnpay`, `p_code_bank`, `p_time`, `created_at`, `updated_at`) VALUES
(2, 6, 5, 999999.99, 'Thanh toan GD: sdfsdfsd', 'errOpzKOxTzSxxi', '00', '14001740', 'NCB', '2023-04-28 15:15:00', NULL, NULL),
(3, 10, 8, 999999.99, 'Thanh toan GD: TIỀN XE ĐẠP', 'LMu5M8m0oadJqky', '00', '14013025', 'NCB', '2023-05-15 20:22:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` int(11) NOT NULL DEFAULT 0,
  `pro_expiration_date` tinyint(4) DEFAULT NULL,
  `pro_avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_expiration` datetime DEFAULT NULL,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_import_goods` int(11) NOT NULL DEFAULT 0,
  `pro_number_import` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_energy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_expiration_date`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_expiration`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_import_goods`, `pro_number_import`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`) VALUES
(1, 'Mũ bảo hiểm Rnox MIPS màu 3D', 'mu-bao-hiem-rnox-mips-mau-3d', 510000, 0, 7, 0, 0, 0, NULL, '2021-08-01__mu-bao-hiem-rnox-mips-3d-blue-450x451.jpg', 5, 1, NULL, 1, 2, 'Chất liệt bọt EPS đúc liền khối với lớp nhựa ngoài tạo nên độ chắc chắn và an toàn\r\n\r\nTrọng lượng cực nhẹ với các lỗ thông gió cho cảm giác thoáng mát dễ chịu', '<p><strong>Mũ bảo hiểm Rnox MIPS m&agrave;u 3D</strong></p>\r\n\r\n<p>Chất liệt bọt EPS đ&uacute;c liền khối với lớp nhựa ngo&agrave;i tạo n&ecirc;n độ chắc chắn v&agrave; an to&agrave;n</p>\r\n\r\n<p>Trọng lượng cực nhẹ với c&aacute;c lỗ th&ocirc;ng gi&oacute; cho cảm gi&aacute;c tho&aacute;ng m&aacute;t dễ chịu</p>\r\n\r\n<p>C&ocirc;ng nghệ sơn tạo hiệu ứng 3D độc đ&aacute;o</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/AM-JKLWfqRtpy-GtsXw_vZ2o0gtgYbT3mGnRPeBlG8PCZnjIGmg4SKGf8nq4Y__uZPKLq-N1EmwOHohEpb-UC3haZICLbehVeEKpAf_NhrAihXJPfM247SvCahvErNb6jYLFA9IznpKwsHiBCSrxxkZBCwts7A=w493-h657-no?authuser=0\" /></p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/AM-JKLWbilm5U5JQ7ugoI2ubRHd8_aXZXpyuS4fvtACQW7nqI4jqlW95ARFKRvtNEWvOoxgKUNFRsLDtVWx-hDl7HPr1jt4sSBE_tkHQQuRM3M6ZbeP5mqnNnmmGH2aYH2SOXedMPjQ0a8wrW76sktgDxyuooA=w493-h657-no?authuser=0\" /></p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/AM-JKLWWYQ5XU_wxDbNRbarqiTq--y_AtQaeHojE2wqAtuxNkN-Z7NPhme8yJBxrOcpCouQbCjt3TLdvlhCLOvwWkwr73CQ7dkcYDNk1cWKO3zSmmC2OB0Pj0UDPoW5EeTdSAVsOrQx2p8dRTCxwEtrecTMw9A=w844-h657-no?authuser=0\" /></p>', 2, 5, 3, '2020-07-17 14:40:16', 50, 0, 50, NULL, NULL, 0, '2023-05-15 13:07:50'),
(2, 'Đĩa phanh Shimano Ultegra RT800 140mm Japan – chiếc', 'dia-phanh-shimano-ultegra-rt800-140mm-japan-chiec', 1300000, 0, 8, 0, 0, 5, NULL, '2021-08-01__dia-phanh-shimano-rt800-0-450x449.jpg', 5, 1, NULL, 1, 1, 'Đĩa cao cấp của Nhật, đường kính 140mm, sử dụng khóa center lock\r\n\r\nCông nghệ tản nhiệt cao cấp của Nhật, tản nhiệt nhanh giảm thiểu sự ăn mòn má phanh, cho hiệu suất cao', '<p><strong>Đĩa phanh Shimano Ultegra RT800 140mm Japan &ndash; chiếc</strong></p>\r\n\r\n<p>Đĩa cao cấp của Nhật, đường k&iacute;nh 140mm, sử dụng kh&oacute;a center&nbsp;lock</p>\r\n\r\n<p>C&ocirc;ng nghệ tản nhiệt cao cấp của Nhật, tản nhiệt nhanh giảm thiểu sự ăn m&ograve;n m&aacute; phanh, cho hiệu suất cao</p>\r\n\r\n<p><em>(Gi&aacute; b&aacute;n cho 1 chiếc như h&igrave;nh,&nbsp;sản phẩm ch&iacute;nh h&atilde;ng kh&ocirc;ng hộp)</em></p>\r\n\r\n<p><img alt=\"dia-phanh-shimano-ultegra-rt800-140mm-1\" src=\"https://xedap24h.vn/wp-content/uploads/2021/07/dia-phanh-shimano-ultegra-rt800-140mm-1.jpg\" style=\"height:485px; width:487px\" />&nbsp;<img alt=\"dia-phanh-shimano-ultegra-rt800-140mm-2\" src=\"https://xedap24h.vn/wp-content/uploads/2021/07/dia-phanh-shimano-ultegra-rt800-140mm-2.jpg\" style=\"height:489px; width:490px\" /></p>\r\n\r\n<p>&mdash;</p>\r\n\r\n<p><strong>đĩa phanh, shimano, rt800, center lock, phụ t&ugrave;ng phanh xe đạp</strong></p>', 0, 0, 0, '2020-07-17 14:55:02', 250, 0, 250, NULL, NULL, 0, '2021-08-01 14:12:37'),
(3, 'Xe Twitter Smile tay ngang 2×11 speed', 'xe-twitter-smile-tay-ngang-211-speed', 9800000, 0, 2, 0, 0, 5, NULL, '2021-08-01__xe-dap-twitter-smile-tay-ngang-11-dd.jpg', 4, 1, NULL, 1, 1, '– Khung hợp kim nhôm không mối hàn dây âm sườn\r\n\r\n– Phuộc trước carbon cao cấp\r\n\r\n– Bộ chuyển động tay đề Retrospec 2*11 líp', '<p><strong>Xe Twitter Smile tay ngang 2&times;11 speed</strong></p>\r\n\r\n<p>&ndash; Khung hợp kim nh&ocirc;m kh&ocirc;ng mối h&agrave;n d&acirc;y &acirc;m sườn</p>\r\n\r\n<p>&ndash; Phuộc trước carbon cao cấp</p>\r\n\r\n<p>&ndash; Bộ chuyển động tay đề Retrospec 2*11 l&iacute;p</p>\r\n\r\n<p>&ndash; Sang đĩa Retrospec</p>\r\n\r\n<p>&ndash; Củ đề sau Retrospec tay carbon</p>\r\n\r\n<p>&ndash; Đ&ugrave;i đĩa trục rỗng Retrospec 34/50T</p>\r\n\r\n<p>&ndash; V&agrave;nh nh&ocirc;m Retrospec bản cao 3cm đ&ugrave;m bạc đạn si&ecirc;u nhẹ</p>\r\n\r\n<p>&ndash; Y&ecirc;n da thể thao c&oacute; khe giữa &ecirc;m &aacute;i</p>\r\n\r\n<p>&ndash; Lốp Inova pro 700*23C</p>\r\n\r\n<p>&ndash; Ghi đ&ocirc;ng ,potang ,cọc y&ecirc;n Twitter nh&ocirc;m si&ecirc;u nhẹ</p>\r\n\r\n<p><strong>Khuyến mại: Chu&ocirc;ng nh&ocirc;m,&nbsp;Kh&oacute;a d&acirc;y cao cấp, Dầu x&iacute;ch</strong></p>\r\n\r\n<p>Bảo h&agrave;nh:&nbsp;Khung 5 năm, Phụ t&ugrave;ng 1 năm</p>\r\n\r\n<p>Vận chuyển miễn ph&iacute; nội th&agrave;nh H&agrave; Nội, ship cod đi tỉnh với chi ph&iacute; hợp l&yacute;</p>\r\n\r\n<p>Bảo dưỡng miễn ph&iacute; trọn đời xe.</p>\r\n\r\n<p><img alt=\"xe-dap-twitter-smile-tay-ngang-11-dd\" src=\"https://xedap24h.vn/wp-content/uploads/2021/07/xe-dap-twitter-smile-tay-ngang-11-dd.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:center\">xe đạp Twitter Smile tay ngang 11 tầng l&iacute;p m&agrave;u đen đỏ</p>\r\n\r\n<p><img alt=\"xe-dap-twitter-smile-tay-ngang-11s-dv\" src=\"https://xedap24h.vn/wp-content/uploads/2021/07/xe-dap-twitter-smile-tay-ngang-11s-dv.jpg\" style=\"height:600px; width:800px\" /></p>\r\n\r\n<p style=\"text-align:center\">xe đạp Twitter Smile tay ngang 11 tầng l&iacute;p m&agrave;u đen&nbsp;v&agrave;ng</p>\r\n\r\n<p><img alt=\"xe-dap-twitter-smile-tay-ngang-11s-dxd\" src=\"https://xedap24h.vn/wp-content/uploads/2021/07/xe-dap-twitter-smile-tay-ngang-11s-dxd.jpg\" style=\"height:600px; width:800px\" /></p>', 0, 0, 0, '2020-07-17 19:20:46', 66, 0, 70, NULL, NULL, 0, '2021-08-01 14:10:04'),
(4, 'Xe đạp trợ lực GIANT ATX 1 E+ 2020', 'xe-dap-tro-luc-giant-atx-1-e-2020', 31200000, 0, 5, 0, 0, 15, NULL, '2021-08-01__xe-dap-tro-luc-giant-atx-1-e-2021-450x300.jpg', 5, 1, NULL, 1, 3, 'Mẫu xe trợ lực cao cấp mới nhất của hãng Giant, với cấu hình cao cấp và chất lượng rất tốt.\r\n\r\nChế độ trợ lực thông minh giúp bạn tiết kiệm sức lực và có những trải nghiệm thú vị\r\n\r\nKhi di chuyển quãng đường xa hoặc khi mệt mỏi, bạn sẽ thế chế độ trợ lực tuyệt vời đến thế nào', '<h2>&nbsp;</h2>\r\n\r\n<h3><strong>Xe đạp trợ lực GIANT ATX 1 E+ 2020</strong></h3>\r\n\r\n<p>Mẫu xe trợ lực cao cấp mới nhất của&nbsp;<strong>h&atilde;ng Giant</strong>, với cấu h&igrave;nh cao cấp v&agrave; chất lượng rất tốt.</p>\r\n\r\n<p>Chế độ trợ lực th&ocirc;ng minh gi&uacute;p bạn tiết kiệm sức lực v&agrave; c&oacute; những trải nghiệm th&uacute; vị</p>\r\n\r\n<p>Khi di chuyển qu&atilde;ng đường xa hoặc khi mệt mỏi, bạn sẽ thế chế độ trợ lực tuyệt vời đến thế n&agrave;o</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật x</strong><strong>e đạp trợ lực GIANT ATX 1 E+ 2020:</strong></p>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:790px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">Khung</td>\r\n		</tr>\r\n		<tr>\r\n			<td>K&iacute;ch thước</td>\r\n			<td>S, M</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Khung</td>\r\n			<td>Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phuộc trước</td>\r\n			<td>Hơi giảm chấn</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:790px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">Th&agrave;nh phần</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Ghi đ&ocirc;ng</td>\r\n			<td>Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>P&ocirc; tăng</td>\r\n			<td>Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Cọc y&ecirc;n</td>\r\n			<td>Nh&ocirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Y&ecirc;n</td>\r\n			<td>Giant</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:790px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">Linh phụ kiện</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ truyền động</td>\r\n			<td>SHIMANO 1*9S</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phanh</strong></td>\r\n			<td>Đĩa dầu</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Động cơ</strong></td>\r\n			<td>Giant VIC ( loại động cơ giữa )</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Pin</strong></td>\r\n			<td>400Wh ( Panasonic Ion )</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Bộ hiển thị</td>\r\n			<td>LED</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Trợ lực</strong></td>\r\n			<td>ECO/NORMAL/SPORT</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"2\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:790px\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"2\">B&aacute;nh xe</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Lốp</td>\r\n			<td>27.5*2.0</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3dFvg2mLZUGr3gTJq5JN7Rlww8TPu0_O41q9mdI14bDSwQlwBAH2S5y2YwUpoK9IZT2NB1Xr7frJW6PDK5VrtPNxteTw4ST6zI3AoLHj0ZwTJ8D539RQDXXVEVBCqiAVK2e5J3a8-NPhup2MnDFGIQkuQ=w876-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>xe đạp trợ lực Giant ATX 1 E+ 2020 m&agrave;u&nbsp;xanh ghi</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3eSkU47rhw2HdIbgSSHivATNEwfB9ITWVn63s1hceKNRiDZtRD07cbjlhQ4Yax6XmSXSLHcT82jyzChYKt07A1PZ7fc5COSEroA3xEh_hRAgzx4niiJpONPYdMR91Y51sSNVwprQTU59GASAM7gVnt16g=w876-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>xe đạp trợ lực Giant ATX 1 E+ 2020 m&agrave;u ghi sẫm đỏ</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3dZP1a2GFxwWAj4uwPcuzEkCT-bPW-_03HEOFa24oSVz0nMO7G2hnbqxyF2hUaJe0DaiQvBPZLBWuOWXfSmqIUGqLn8tsCfuB7BAWHxKR8SFgQDqpvaWcnyfHvNFN2FgYJi1D9WwHuya0K37kE_GbSbAQ=w876-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>', 0, 0, 0, '2020-07-17 19:22:41', 93, 0, 100, NULL, NULL, 0, '2021-08-01 13:58:09'),
(5, 'Xe đạp địa hình Maruishi Fuji Pro', 'xe-dap-dia-hinh-maruishi-fuji-pro', 17990000, 0, 6, 0, 0, 5, NULL, '2021-08-01__xe-dap-maruishi-fuji-pro-sram-nx-11-450x336.jpg', 5, 1, NULL, 1, 1, 'Xe đạp địa hình Maruishi Fuji Pro', '<h3><strong>Xe đạp địa h&igrave;nh Maruishi Fuji Pro&nbsp;</strong></h3>\r\n\r\n<p>Nếu lựa chọn xe đạp địa h&igrave;nh với ti&ecirc;u ch&iacute; khỏe khoắn , độc đ&aacute;o v&agrave; lạ mắt , dĩ nhi&ecirc;n l&agrave; y&ecirc;u cầu chất lượng phải tốt . Th&igrave;&nbsp;<strong>xe đạp địa h&igrave;nh FUJI &ndash; Pro</strong>&nbsp;l&agrave; 1 lựa chọn thực sự&nbsp;tốt&nbsp;. Với những ưu thế vượt trội về thương hiệu Nhật Bản , về thiết kế khung mới mẻ đặc biệt c&aacute;ch phun mầu 2 Line theo xu thế v&agrave; thiết kế mới mẻ trẻ trung . C&ocirc;ng nghệ khung kh&ocirc;ng c&oacute; mối h&agrave;n , c&ugrave;ng bộ chuyển động 11 tốc độ kh&aacute;c nhau để ph&ugrave; hợp với mọi cung đường của bạn.</p>\r\n\r\n<p>Nguy&ecirc;n th&ugrave;ng đập hộp, mới 100%<br />\r\nWeb xe đạp ch&iacute;nh thức tại Nhật Bản : http://www.maruishi-cycle.com/<br />\r\nThương Hiệu hơn 126 năm xuất ph&aacute;t từ Yokohama Nhật Bản ( từ năm 1894 )<br />\r\nNan hoa bằng Inox , ch&acirc;n nan hoa bọc Đồng , to&agrave;n bộ chống gỉ s&eacute;t<br />\r\nTi&ecirc;u chuẩn ốc v&iacute;t , bu l&ocirc;ng chống han rỉ &ndash; ng&acirc;m trong nước biển trong v&ograve;ng 48h<br />\r\nChất lượng v&agrave; ti&ecirc;u chuẩn tại Nhật<br />\r\nBảo h&agrave;nh 2 năm</p>\r\n\r\n<p><strong>Th&ocirc;ng số kỹ thuật xe đạp địa h&igrave;nh Nhật FUJI &ndash; Pro :</strong></p>\r\n\r\n<p>✔ Khung hợp kim nh&ocirc;m 6061 kh&ocirc;ng mối h&agrave;n<br />\r\n✔ Giảm s&oacute;c Hơi Maruishi nh&ocirc;m c&oacute; điều chỉnh kh&oacute;a thụt , trục xuy&ecirc;n bằng Đồng 15*110 mm<br />\r\n✔ Tay bấm SRAM NX 11 tốc độ ( USA )<br />\r\n✔ Củ đề SRAM NX 11 tốc độ ( USA )<br />\r\n✔ Gạt đề SRAM NX 11 tốc độ ( USA )<br />\r\n✔ L&iacute;p 11 tốc độ<br />\r\n✔ X&iacute;ch cao cấp<br />\r\n✔ Phanh dầu SRAM LEVEL trước v&agrave; sau<br />\r\n✔ Trục rỗng Prowheel ( Đ&agrave;i Loan ) + Đ&ugrave;i Đĩa 34T nh&ocirc;m<br />\r\n✔ Bộ ghi đ&ocirc;ng, potang nh&ocirc;m Maruishi<br />\r\n✔ Hub nh&ocirc;m bạc đạn trớn với 2 v&ograve;ng bi k&eacute;p<br />\r\n✔ Săm lốp INNOVA 27.5 x 2.25&Prime;<br />\r\n✔ Pedan Nh&ocirc;m<br />\r\n✔ M&agrave;u sắc: Đỏ đen , Xanh đen<br />\r\n✔ Ph&ugrave; hợp chiều cao từ 1m6 &ndash; 1m8</p>\r\n\r\n<p><strong>Khuyến mại:&nbsp;Kh&oacute;a d&acirc;y cao cấp, Bộ b&igrave;nh nước thể thao</strong></p>\r\n\r\n<p>Bảo h&agrave;nh:&nbsp;Khung 5 năm, Phụ t&ugrave;ng kh&aacute;c&nbsp;1 năm</p>\r\n\r\n<p>Vận chuyển miễn ph&iacute; nội th&agrave;nh H&agrave; Nội v&agrave; ship cod&nbsp;to&agrave;n quốc&nbsp;với chi ph&iacute; hợp l&yacute;</p>\r\n\r\n<p>Bảo dưỡng miễn ph&iacute; trọn đời xe</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3eGb9LTr2DaNQ3WTKS8enU_dNdP1qXAypg0d0NYdVy_zpjrhpDmo6spFfq7JMUpne-N1nt1123pA-HkYUecy9BZRaT_NiR6SnOGBD0ePojhNroRjKfVFVYjPygRIBfrzbofvAOxVrgADMR42fF9FSrjHg=w877-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>xe đạp địa h&igrave;nh nhật Maruishi Fuji Pro m&agrave;u đen xanh</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3epyfWGUksQBcSK1V2hE9-zjl4axJazqBrh4bUbCetkd2w9qIDU4kV0Aam5NjxTQBgqrsmj8niGvn8FnSHHj3LOvm_v-m_YYhQ6-4YH6BWy8W5M_vCEge4AY1NG5fyvUfdpoNEKnYLvLCcrHEnSG1j1-A=w877-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p>xe đạp địa h&igrave;nh nhật Maruishi Fuji Pro m&agrave;u đen đỏ</p>\r\n\r\n<p><strong>Chiếc xe đạp địa h&igrave;nh Nhật FUJI &ndash; Pro</strong>&nbsp;, đ&uacute;ng với t&ecirc;n gọi của n&oacute; &ldquo; n&uacute;i Ph&uacute; Sỹ &rdquo; , hội tụ những ti&ecirc;u ch&iacute; cao cấp nhất , đặc biệt với kết cấu khung kh&ocirc;ng mối h&agrave;n , phẳng , đều v&agrave; cực kỳ b&oacute;ng bẩy . Đem đến những trải nghiệm tốt nhất , những c&ocirc;ng nghệ ti&ecirc;n tiến của thương hiệu h&agrave;ng đầu Nhật Bản với 126 năm l&agrave;m xe đạp của h&atilde;ng xe đạp Maruishi đến từ Nhật Bản</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3dNbF6SeEGDpW-S8e03DUy6AEfshxZAKJbRFgVdtXYRcs_FtoUPSzEotJ3s3qPPmit3OLr6RHJuRDydOiM8RAxJduaWBJxTgBuHiLSqkJ6D-FyevKO7jVH_6Wt4UsWm8OyEkJAJpiyZeGhHqdnYKwtFtA=w986-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p><strong>Khung :</strong>&nbsp;Kh&ocirc;ng mối h&agrave;n , được l&agrave;m bằng vật li&ecirc;u nh&ocirc;m 6061 nhẹ , bền bỉ v&agrave; dẻo dai . Với c&ocirc;ng nghệ ti&ecirc;n tiến h&agrave;n đắp b&ugrave; , gi&uacute;p biến mất những mối h&agrave;n xấu x&iacute; vốn tồn tại ở những chiếc xe rẻ tiền.</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pw/ACtC-3cbFiufkMgNgKKT9luVlslBbAn2rwU4aqfWSz07jp-PvhBQvUxPVD5EyaItSv7G6UhxUUBeYuw4xWo3v-6eReuIpPjuHgWJK67PRAwa3FQnPT79A4oZ0WH0zp8fKvxUrlnysf8_Hjk9JEXvbkgNQhq1RQ=w877-h657-no?authuser=0\" style=\"height:100%; width:100%\" /></p>', 0, 0, 0, '2020-07-17 19:31:23', 100, 0, 100, NULL, NULL, 0, '2021-08-01 15:17:47'),
(6, 'Xe đạp LIV CATE 2 2022', 'xe-dap-liv-cate-2-2022', 13250000, 0, 1, 0, 0, 10, NULL, '2021-08-01__xe-dap-liv-cate-2-2022-xanh.jpg', 4, 1, NULL, 1, 1, 'Xe đạp LIV CATE 2 2022', '<h2>M&ocirc; tả sản phẩm</h2>\r\n\r\n<p><img alt=\"xe-dap-liv-cate-2-2022-trang\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/xe-dap-liv-cate-2-2022-trang.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\">xe đạp nữ Liv Cate 2 2022 m&agrave;u trắng</p>\r\n\r\n<p><img alt=\"xe-dap-liv-cate-2-2022-xanh\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/xe-dap-liv-cate-2-2022-xanh.jpg\" style=\"height:100%; width:100%\" /></p>\r\n\r\n<p style=\"text-align:center\">xe đạp nữ Liv Cate 2 2022 m&agrave;u xanh</p>', 8, 26, 3, '2020-07-17 19:34:57', 60, 0, 60, NULL, NULL, 0, '2023-05-15 13:01:32'),
(7, 'GIANT INEED HUNTER 1.0 D 2021', 'giant-ineed-hunter-10-d-2021', 9450000, 0, 1, 0, 0, 5, NULL, '2021-08-01__giant-hunter-10-d-2021-ghi-225x150.jpg', 3, 1, NULL, 1, 1, 'GIANT INEED HUNTER 1.0 D 2021', '<h2>M&ocirc; tả sản phẩm</h2>\r\n\r\n<p><strong>Giant Hunter 1.0 D 2021 Phi&ecirc;n bản phanh đĩa đ&atilde; ch&iacute;nh thức ra mắt</strong></p>\r\n\r\n<p>Một thiết kế đẹp, thỏa l&ograve;ng mong đợi của những người y&ecirc;u th&iacute;ch mẫu Hunter, với bộ phanh đĩa thể thao v&agrave; c&aacute; t&iacute;nh hơn</p>\r\n\r\n<p>P&ocirc; tăng được thay đổi th&agrave;nh loại khớp gi&uacute;p bạn dễ d&agrave;ng thay đổi chiều cao ghi đ&ocirc;ng m&agrave; kh&ocirc;ng gặp bất cứ trở ngại n&agrave;o</p>\r\n\r\n<p>Hệ thống giảm x&oacute;c &ecirc;m &aacute;i c&ugrave;ng hệ baga chắn b&ugrave;n tiện &iacute;ch vẫn l&agrave; ưu điểm nổi bật của mẫu xe đạp&nbsp;<strong>Ineed Hunter</strong></p>\r\n\r\n<p><img alt=\"giant-hunter-1.0-D-2021-ghi\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/giant-hunter-1.0-D-2021-ghi.jpg\" /></p>\r\n\r\n<p>xe đạp Giant Hunter 1.0 D 2021 m&agrave;u ghi phi&ecirc;n bản phanh đĩa</p>\r\n\r\n<p><img alt=\"giant-hunter-1.0-D-2021-xanh\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/giant-hunter-1.0-D-2021-xanh.jpg\" /></p>\r\n\r\n<p>xe đạp Giant Hunter 1.0 D 2021 m&agrave;u xanh phi&ecirc;n bản phanh đĩa</p>\r\n\r\n<p><img alt=\"2021-INEED-HUNTER-1.0-D-9-559x400\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/2021-INEED-HUNTER-1.0-D-9-559x400.jpg\" /></p>\r\n\r\n<p>Khung hợp kim nh&ocirc;m, kỹ thuật cao cấp của GIANT, trời mưa kh&ocirc;ng lo bị rỉ s&eacute;t</p>\r\n\r\n<p><img alt=\"giant-hunter-1.0-D-2021-xanh-1\" src=\"https://xedap24h.vn/wp-content/uploads/2021/08/giant-hunter-1.0-D-2021-xanh-1.jpg\" /></p>', 0, 0, 0, '2020-07-20 15:29:34', 10, 0, 10, NULL, NULL, 0, '2021-08-01 14:08:46');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(6, 3, 3),
(7, 2, 2),
(8, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_invoice_entered`
--

CREATE TABLE `product_invoice_entered` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pie_product_id` int(11) NOT NULL DEFAULT 0,
  `pie_invoice_entered_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 6, 6, 5, 0, 'Sản phẩm tuyệt vời', '2020-07-18 01:00:36', '2020-07-18 01:00:36'),
(2, 8, 6, 4, 0, 'qưeqweqw', '2023-05-15 12:58:32', '2023-05-15 12:58:32'),
(3, 8, 6, 1, 0, 'qưeqwe', '2023-05-15 12:58:43', '2023-05-15 12:58:43'),
(4, 8, 6, 5, 0, NULL, '2023-05-15 12:59:17', '2023-05-15 12:59:17'),
(5, 8, 6, 2, 0, 'tệ', '2023-05-15 12:59:46', '2023-05-15 12:59:46'),
(6, 8, 6, 1, 0, NULL, '2023-05-15 13:00:36', '2023-05-15 13:00:36'),
(7, 8, 6, 4, 0, 'qưew', '2023-05-15 13:00:57', '2023-05-15 13:00:57'),
(8, 8, 6, 4, 0, 'qưeyqwtey', '2023-05-15 13:01:32', '2023-05-15 13:01:32'),
(9, 8, 1, 2, 0, 'sđ', '2023-05-15 13:07:41', '2023-05-15 13:07:41'),
(10, 8, 1, 3, 0, NULL, '2023-05-15 13:07:50', '2023-05-15 13:07:50');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'banner website 1', '/', '2021-08-01__banner1-min.png', 1, 1, 1, '2021-08-01 12:46:46', '2021-08-01 12:46:46'),
(2, 'banner website 2', '/', '2021-08-01__ronyama-img1-1-6308.jpg', 1, 1, 2, '2021-08-01 12:46:58', '2021-08-01 12:46:58'),
(3, 'banner website 2', '/', '2021-08-01__20180411174636-xe-dap-the-thao-banner.jpg', 1, 1, 3, '2021-08-01 12:47:32', '2021-08-01 12:47:32');

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `s_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(2, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;Hướng dẫn chi tiết mua h&agrave;ng&nbsp;</p>', '2020-07-18 01:15:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sl_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(3, 'GIANT XTC', '19001907', 'giantxtc@gmail.com', 'Hà Nội', '2020-07-17 14:45:55', '2021-08-01 15:04:47'),
(4, 'SPORT BIKE', '19008889', 'sportbike@gmail.com', 'Hà Nội', '2020-07-17 14:46:26', '2021-08-01 15:05:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(20) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(2, 5, 1, 306000, 'NGuyễn Văn A', 'duocnvoit@gmail.com', '0928817228', 'Hà Nội', NULL, 3, 1, NULL, '2020-07-17 20:06:21', '2020-07-17 20:06:37'),
(3, 6, 1, 272000, 'NGuyễn Văn B', 'nguyenduocit@gmail.com', '0359020898', 'Hà Nội', 'giao hàng nhớ gọi trước cho tôi', 3, 1, NULL, '2020-07-18 01:02:27', '2020-07-18 01:12:25'),
(4, 7, 1, 663000, 'Le Minh Hai', 'mhai@gmail.com', '0988809974', 'Hà Nội', 'aaaaaaaaaa', 2, 1, NULL, '2020-07-20 15:25:53', '2021-08-01 15:16:11'),
(5, 5, 1, 106080000, 'NGuyễn Văn A', 'nguyenvana@gmail.com', '0928817228', 'Hà Nội', 'giao hàng cho tôi', 3, 1, NULL, '2021-08-01 15:10:29', '2021-08-01 15:15:38'),
(6, 5, 0, 8977500, 'Viện huyết học', 'duocnvoit@gmail.com', '0928817228', 'Tòa nhà Sông Đà, Đường Phạm Hùng, Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', NULL, 1, 1, NULL, '2023-04-28 08:04:04', NULL),
(7, 6, 0, 11925000, 'NGuyễn Văn B', 'nguyenvan', '0359020898', 'Ha Noi', 'ádasdas', 1, 1, '7bNIeZVThCal6Zb', '2023-05-15 12:52:22', NULL),
(8, 6, 0, 1020000, 'NGuyễn Văn B', '1', '0359020898', 'á', 'a', 1, 1, 'XLiBGx18bPvlLmn', '2023-05-15 12:53:46', NULL),
(9, 6, 0, 51271500, 'NGuyễn Văn B', 'ád', '0359020898', 'ádss', NULL, 1, 1, 'VNLa8AfEGi6moKg', '2023-05-15 12:56:06', NULL),
(10, 8, 0, 26520000, 'sada', 'asds@gmail.com', '0839741231', 'HCM', NULL, 1, 1, NULL, '2023-05-15 13:18:25', NULL);

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
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'Viện huyết học', 'duocnvoit@gmail.com', NULL, '$2y$10$XSTmwGdZFluv3zegH4cw1eRYto.2wVeIuHfeGOgC/z5JKrVRj8ebm', '', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:22:17.120379Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-07-24T13:24:16.984014Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"92.0.4515.107\",\"time\":\"2021-08-01T15:07:20.553973Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-28T07:51:03.454859Z\"}]', 0, 'Tòa nhà Sông Đà, Đường Phạm Hùng, Phường Mễ Trì, Quận Nam Từ Liêm, Hà Nội', '2021-08-01__t6-175x132.jpg', NULL, '2020-07-17 20:04:59', '2021-08-01 15:11:06'),
(6, 'NGuyễn Văn B', 'nguyenvanb@gmail.com', NULL, '$2y$10$P8LKA/JZ21RWokkcgWDayu6gtKvwhqXVuTrUJXij8JkBtGwUKtk4y', '0359020898', 0, '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-05-08T16:50:15.438022Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"113.0.0.0\",\"time\":\"2023-05-15T08:32:24.254580Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"113.0.0.0\",\"time\":\"2023-05-15T12:50:36.431081Z\"}]', 1, NULL, '2020-07-18__hatgiong.jpg', NULL, '2020-07-18 00:57:57', '2020-07-18 00:58:19'),
(8, 'sada', 'asds@gmail.com', NULL, '$2y$10$A0HRzjnkj5kFHZbWhhERMuugcbVA3xz01iDZYwwzcOolE9RsDFijC', '0839741231', 0, NULL, 1, 'HCM', NULL, NULL, '2023-05-15 12:57:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(2, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `link` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episode`
--
ALTER TABLE `episode`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import_histories`
--
ALTER TABLE `import_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_entered_ie_suppliere_index` (`ie_suppliere`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Indexes for table `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Indexes for table `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Indexes for table `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_invoice_entered_pie_product_id_index` (`pie_product_id`),
  ADD KEY `product_invoice_entered_pie_invoice_entered_id_index` (`pie_invoice_entered_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Indexes for table `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `episode`
--
ALTER TABLE `episode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import_histories`
--
ALTER TABLE `import_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice_entered`
--
ALTER TABLE `invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_invoice_entered`
--
ALTER TABLE `product_invoice_entered`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
