-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 08, 2019 lúc 12:35 CH
-- Phiên bản máy phục vụ: 10.1.21-MariaDB
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `acc_db`
--
CREATE DATABASE IF NOT EXISTS `acc_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `acc_db`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `acc_tbl`
--

CREATE TABLE `acc_tbl` (
  `acc_user` varchar(50) NOT NULL,
  `acc_pwd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `acc_tbl`
--

INSERT INTO `acc_tbl` (`acc_user`, `acc_pwd`) VALUES
('admin', 'admin'),
('congbe', '123'),
('test', 'abc'),
('test2123', '123');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `acc_tbl`
--
ALTER TABLE `acc_tbl`
  ADD PRIMARY KEY (`acc_user`);
--
-- Cơ sở dữ liệu: `eee`
--
CREATE DATABASE IF NOT EXISTS `eee` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `eee`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fullname` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `date`) VALUES
(23, 'thao@yahoo.com', '2015-03-05 15:59:54'),
(24, 'thao@yahoo.com', '2015-03-06 02:09:24'),
(25, 'thao@yahoo.com', '2015-03-06 04:39:25'),
(26, 'thao@yahoo.com', '2015-03-08 12:18:20'),
(27, 'long@yahoo.com', '2015-03-09 11:35:06'),
(28, 'long@yahoo.com', '2015-03-10 07:53:04'),
(29, 'long@yahoo.com', '2015-03-10 08:02:22'),
(30, 'long@yahoo.com', '2015-03-10 08:37:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(32, 23, 46, 2, 1000),
(33, 24, 50, 1, 1000),
(34, 25, 57, 1, 1400),
(35, 25, 45, 1, 600),
(36, 25, 41, 1, 1000),
(37, 26, 44, 1, 1400),
(38, 26, 41, 1, 1000),
(39, 27, 44, 1, 1400),
(40, 28, 40, 1, 600),
(41, 28, 44, 1, 1400),
(42, 29, 40, 1, 600),
(43, 29, 41, 1, 1000),
(44, 30, 47, 1, 0),
(45, 30, 40, 1, 600);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `comment` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_sanpham`, `name`, `comment`, `date`) VALUES
(38, 40, 'Trương tất thành', 'Cấu hình cao cấp', '2015-03-11 10:41:48'),
(39, 40, 'Trương Nam Thành', 'sản phẩm bán mắc quá', '2015-03-11 10:44:07'),
(40, 41, 'Lan anh', 'Bán phím bán nhiu anh?', '2015-03-11 10:44:34'),
(42, 41, 'Lan anh', 'Bán phím bán nhiu anh?', '2015-03-11 10:44:55'),
(43, 42, 'Hiếu', 'Chán bỏ pà', '2015-03-11 10:45:20'),
(45, 44, 'Bội kỳ', 'Sản phẫm bán ở đâu vậy bạn?', '2015-03-11 13:06:20'),
(46, 44, 'lương gà', 'Ipad mini à?', '2015-03-11 13:12:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_email` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_pass` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_country` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_city` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_contact` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `customer_address` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_image`, `customer_address`) VALUES
(2, 'thao', 'thao@yahoo.com', '123', 'Viet Nam', 'TPHCM', '42', '3.jpg', '543'),
(3, 'long', 'long@yahoo.com', '123456', 'Viet Nam', 'TPHCM', '12/5', '6.jpg', '543'),
(4, 'uy', 'uy@yahoo.com', '12345', 'Viet Nam', 'TPHCM', '08989344', '', '1232');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hieu`
--

CREATE TABLE `hieu` (
  `hieu_id` int(11) NOT NULL,
  `tenhieu` varchar(300) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hieu`
--

INSERT INTO `hieu` (`hieu_id`, `tenhieu`) VALUES
(3, 'Apple'),
(4, 'HP'),
(5, 'Dell'),
(6, 'Samsung'),
(7, 'Asus');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai`
--

CREATE TABLE `loai` (
  `loai_id` int(11) NOT NULL,
  `tenloai` varchar(300) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loai`
--

INSERT INTO `loai` (`loai_id`, `tenloai`) VALUES
(12, 'Ipads'),
(14, 'Laptop'),
(15, 'Mobiles'),
(16, 'Camera'),
(17, 'Touchpad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_image` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `product_keywords` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(40, 14, 3, 'Laptop Sony vaio SVP13 ', 600, 'laptop3', '1.jpg', 'Laptop,apple'),
(41, 14, 4, 'laptop2', 1000, 'Laptop', '2.jpg', 'Laptop'),
(42, 12, 3, 'Ipad1', 500, 'Laptop', 'download (1).jpg', 'Ipad,apple'),
(43, 15, 6, 'samsung champ', 500, 'dien thoai', 'download.jpg', 'dt,samsung'),
(44, 12, 3, 'ipad air ', 1400, 'Ipad', 'download (2).jpg', 'Ipad air'),
(45, 16, 6, 'Camera1', 600, 'Camera1', 'download (3).jpg', 'camera'),
(46, 16, 5, 'Camera2', 1000, 'Camera2', 'download (4).jpg', 'camera'),
(47, 16, 6, 'Camera3', 6000, 'Camera3', 'download (5).jpg', 'camera'),
(48, 15, 6, 'dien thoai 1', 1000, 'dien thoai 1', 'download (6).jpg', 'mobiles,Samsung'),
(49, 15, 7, 'dien thoai 2', 1600, 'dien thoai 2', 'download (7).jpg', 'mobiles,Samsung,asus'),
(50, 15, 3, 'dien thoai 3', 1000, 'dien thoai 3', 'download (8).jpg', 'mobiles,Samsung'),
(51, 17, 4, 'touchpad1', 500, 'touchpad1', 'download (9).jpg', 'touchpad'),
(52, 17, 5, 'touchpad2', 600, 'touchpad2', 'images.jpg', 'touchpad'),
(53, 17, 6, 'touchpad3', 1600, 'touchpad3', 'download (10).jpg', 'touchpad'),
(54, 12, 3, 'Ipad', 1400, 'Ipad', 'images (1).jpg', 'Ipad'),
(55, 12, 7, 'ipad air ', 500, 'ipad air&nbsp;', 'images (2).jpg', 'asus'),
(56, 14, 5, 'laptop 4', 1500, 'laptop 4', '3.jpg', 'Laptop'),
(57, 14, 6, 'laptop 5', 1400, 'laptop 5', '6.jpg', 'Laptop'),
(58, 16, 4, 'Camera 5', 500, 'Camera 5', 'download (11).jpg', 'camera'),
(59, 16, 7, 'Camera 6', 600, 'Camera 6', 'download (12).jpg', 'camera'),
(60, 12, 3, 'laptop1', 500, 'laptop 1', '6.jpg', 'Laptop'),
(61, 12, 3, 'laptop1', 1400, 'laptop1', '1.jpg', 'hp'),
(62, 12, 3, 'ipad air ', 1000, 'ipad air&nbsp;', 'download (2).jpg', 'Ipad');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `id_baiviet` int(11) NOT NULL,
  `tenbaiviet` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `anhminhhoa` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tomtat` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`id_baiviet`, `tenbaiviet`, `anhminhhoa`, `noidung`, `tomtat`) VALUES
(4, 'MacBook 12 inch trình làng với cân nặng chỉ 0,9 kg', 'macc-9606-1425924990.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">MacBook 12 inch trình làng với cân nặng chỉ 0,9 kg</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Mẫu laptop mới của Apple gây kinh ngạc với độ mỏng 13,1 mm, không sử dụng quạt tản nhiệt, màn hình viền siêu mỏng cùng bàn phím, touchpad công nghệ hoàn toàn mới.&nbsp;</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/photo/laptop/anh-va-video-thuc-te-macbook-12-inch-sieu-mong-nhe-3155360.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Ảnh và video thực tế MacBook 12 inch siêu mỏng nhẹ</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"macc-9606-1425924990.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/macc-9606-1425924990.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">MacBook 12 inch.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Tại sự kiện Spring Foward hôm nay, Apple gây bất ngờ khi sớm trình làng mẫu MacBook màn hình 12 inch với thiết kế và triết lý hoàn toàn mới. Ngoài độ mỏng nhẹ vượt trội, máy còn không dùng quạt tản nhiệt, sử dụng duy nhất một cổng kết nối và màn hình độ nét ấn tượng.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Giống như nhiều mẫu ultrabook hiện nay, MacBook mới sử dụng chip Intel Core M cho phép không dùng quạt tản nhiệt, giảm đáng kể độ mỏng xuống còn 13,1 mm (mỏng hơn 24,3 % so với MacBook Air là 17,3 mm). Cân nặng của máy cũng chỉ còn 0,9 kg, nhẹ hơn cả mẫu MacBook Air màn hình nhỏ hơn là 11,6 inch.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple cho biết nhờ hệ thống bàn phím bướm (butterfly mechanism)&nbsp;hoàn toàn mới, độ dày do phần chi tiết này giảm đi tới 40%. Các phím đều có đèn LED riêng biệt để chiếu sáng và hoạt động trong điều kiện tối. Hãng cũng đưa trackpad công nghệ mới là&nbsp;Force Touch sử dụng 4 cảm biến lực ở 4 góc và bề mặt kính. Các cảm biến có thể nhận biết được lực ấn mạnh hoặc nhẹ. Đây cũng là cơ sở để Apple đưa ra khái niệm mới về \"chuột phải\" khi chỉ cần nhấn mạnh hơn bình thường để gọi được tính năng này (Force Click).&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Màn hình của MacBook mới có kích thước 12 inch, viền siêu mỏng, chuẩn Retina, độ phân giải đạt 2.304 x 1.440. Tấm nền này chỉ mỏng 0,88 mm, mỏng nhất trong số các máy Mac từ trước đến nay và tiêu thụ điện năng ít hơn 30%.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"usb-9071-1425929239.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/usb-9071-1425929239.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Máy có duy nhất một cổng kết nối.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Giống như các sản phẩm mang tính đột phá khác của Apple, MacBook 12 inch cũng mang theo một chút \"liều lĩnh\" khi chỉ sử dụng duy nhất một kết nối USB Type-C (Apple gọi là USB-C). Tất cả các giao tiếp từ sạc pin đến trao đổi dữ liệu hay tín hiệu màn hình như Thunderbolt, Magsafe 2, USB, HDMI/VGA/DVI đều bị lược bỏ. Apple chưa công bố liệu có phụ kiện cổng chuyển đổi đi kèm máy hay không. Ngoài USB-C còn có microphone và cổng 3,5mm cho tai nghe.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Để tận dụng triệt để không gian bên trong máy, pin đi kèm có thiết kế hình thang và cho thời gian sử dụng 9 tiếng nếu duyệt web liên tục hoặc 10 tiếng nếu xem video liên tục.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">MacBook 12 inch có hai phiên bản cấu hình. Với giá 1.299 USD, người dùng có chip Core M tốc độ 1,1 GHz, chip đồ họa Intel HD Graphics 5300, RAM 8 GB, ổ SSD 256 GB. Với mức 1.599 USD, cấu hình mạnh hơn với chip Core M tốc độ 1,2 GHz, RAm 8 GB, ổ SSD 512 GB.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Sản phẩm bắt đầu bán từ ngày 10/4 tới với ba màu sắc lựa chọn là bạc, xám và vàng giống iPad.&nbsp;</p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Mẫu laptop mới của Apple gây kinh ngạc với độ mỏng 13,1 mm, không sử dụng quạt tản nhiệt, màn hình viền siêu mỏng cùng bàn phím, touchpad công nghệ hoàn toàn mới.&nbsp;</span>'),
(5, 'Thành công cho Apple Watch sẽ nằm ở kho ứng dụng', 'apple-watch-release-date-970-8-5126-5402-1425957387.png', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Thành công cho Apple Watch sẽ nằm ở kho ứng dụng</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Apple Watch khác biệt hoàn toàn so với các thiết bị trước đó của Apple và những phần mềm từ các nhà phát triển sẽ là chìa khóa để sản phẩm gặt hái thành công.</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/dong-ho-thong-minh-cua-apple-co-phien-ban-gia-10-000-usd-3155352.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Đồng hồ thông minh của Apple có phiên bản giá 10.000 USD</a>&nbsp;/&nbsp;<a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/tong-hop-su-kien-apple-watch-ra-mat-macbook-12-inch-3155206.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Tổng hợp sự kiện Apple Watch, ra mắt MacBook 12 inch</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Giá trị của một chiếc đồng hồ thường được xác định bằng các vật liệu cấu thành, thiết kế, tính năng cũng như thương hiệu mà nó gắn lên. Đối với Apple Watch, giá trị của nó ngoài những yếu tố trên còn nằm ở hệ ứng dụng.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple đã tổ chức&nbsp;<a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/tong-hop-su-kien-apple-watch-ra-mat-macbook-12-inch-3155206.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\"><span style=\"color: rgb(0, 0, 255);\">sự kiện</span></a>&nbsp;sáng nay 10/3, để chia sẻ nhiều hơn về Apple Watch như giá bán, kho ứng dụng và các tính năng trên đó. Điểm mấu chốt mà Apple cho thấy là thiết bị của hãng có gì khác với các smartwatch đang có trên thị trường.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"apple-watch-release-date-970-8-5126-5402\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/apple-watch-release-date-970-8-5126-5402-1425957387.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Apple Watch có giá từ 349 USD.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">\"Tất cả các sản phẩm của Apple trở nên cuốn hút và đa màu sắc nhờ hàng loạt ứng dụng từ bên thứ ba. Điều này cũng sẽ được làm với Apple Watch\", nhà phân tích công nghệ Dawson thuộc&nbsp;Jackdaw Research cho biết.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Khi iPhone ra mắt năm 2007, bản chất của thiết bị lúc đó chẳng khác gì chiếc điện thoại \"cục gạch\". Một năm sau, kho ứng dụng App Store được Apple tung cho iPhone, mang đến rất nhiều tính năng mới, và khiến iPhone nổi bật so với các thiết bị khác.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Bằng cách tải về một vài phần mềm, chiếc iPhone có thể trở thành một cây đàn, bộ trống, chiếc máy chơi game hay thiết bị theo dõi sức khỏe. iPhone được ví như con dao của quân đội Thụy Sỹ, sắc bén và vô cùng đa năng.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Đối với Apple Watch, con đường thành công không cách nào khác việc đưa cả thế giới ứng dụng lên cổ tay. Tuy vậy, thách thức đặt ra là không hề đơn giản bởi thiết bị có màn hình nhỏ, cách sử dụng hoàn toàn mới. Điều này kéo theo cách thức phát triển phần mềm và kiếm tiền từ các ứng dụng sẽ rất khác với các sản phẩm trước đây của Apple.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"iPhone-6-and-iWatch-launc-025-2759-14259\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/iPhone-6-and-iWatch-launc-025-2759-1425957388.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Apple Watch khác biệt hoàn toàn so với các thiết bị trước đây của Apple.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Khác với iPhone hay iPad, Apple Watch không phải là thiết bị độc lập. Sản phẩm này phải hoạt động kèm với iPhone bởi một phần \"bộ não\", sự thông minh của Apple Watch là do iPhone mang tới. Người dùng sẽ cần đến iPhone để cài các ứng dụng cho đồng hồ.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Bài toán kinh tế cho sự kết hợp này là vấn đề rất phức tạp. Các nhà phát triển muốn xây dựng phần mềm cho đồng hồ sẽ buộc phải làm ứng dụng trước hết là cho iPhone, rồi mới mở rộng sang Apple Watch. Apple cũng chưa nói rõ rằng, liệu các nhà phát triển bán ứng dụng trên iPhone sau đó có thể thu phí tiếp với các tính năng mở rộng cho Apple Watch?</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Mặc dù các công ty lo ngại rằng màn hình bé xíu của Apple Watch sẽ rất hạn chế cho việc quảng cáo hay giới hạn các tính năng. Tuy vậy, đây là cuộc chơi mà không đơn vị nào muốn bỏ qua.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: right;\"><strong>Đình Nam</strong></p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Apple Watch khác biệt hoàn toàn so với các thiết bị trước đó của Apple và những phần mềm từ các nhà phát triển sẽ là chìa khóa để sản phẩm gặt hái thành công.</span>'),
(6, 'MacBook Air và Pro Retina nâng cấp cấu hình, pin 10 tiếng', 'macma-1934-1425933987.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">MacBook Air và Pro Retina nâng cấp cấu hình, pin 10 tiếng</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Riêng MacBook Pro Retina được ưu ái sử dụng trackpad công nghệ Force Touch giống MacBook 12 inch cùng cổng Thunderbolt 2.&nbsp;</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/do-choi-so/tong-hop-su-kien-apple-watch-ra-mat-macbook-12-inch-3155206.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Tổng hợp sự kiện Apple Watch, ra mắt MacBook 12 inch</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"macma-1934-1425933987.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/macma-1934-1425933987.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">MacBook Air và Pro Retina đều được nâng cấp.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Ngoài trình làng chiếc MacBook 12 inch mới, Apple vẫn không bỏ quên các dòng sản phẩm cũ khi nâng cấp cấu hình và tính năng cho MacBook Air và MacBook Pro 13 inch. Cả hai đều sử dụng chip Intel Core i5 và i7 thế hệ thứ 5 mới nhất. Ngoài ra, kết nối Thunderbolt 2 cũng được đưa vào bộ đôi này thay vì nâng cấp hẳn lên sử dụng USB-C mới.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Ngoài cấu hình, riêng phiên bản MacBook Air 13 inch được trang bị bộ nhớ flash mới với tốc độ nhanh gấp hai lần cũng như chip đồ họa Intel HD graphics 6000. Trong khi đó, MacBook Pro Retina được ưu ái hơn với trackpad Force Touch giống trên MacBook 12 inch. Trang bị này cho phép máy nhận diện lực ấn theo mức khác nhau.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Pin của các máy cũng được nâng cấp với thời gian sử dụng 10 tiếng sau mỗi lần sạc.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Với MacBook Pro Retina, cấu hình của máy bao gồm chip Core i5 tốc độ 2,7 GHz, RAM 8 GB. Bộ nhớ trong tùy chọn 128 GB, 256 GB và 512 GB có giá lần lượt là 1.299 USD, 1.499 USD và 1.799 USD.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Với MacBook Air 11 inch, cấu hình bao gồm chip Core i5 tốc độ 1,6 GHz, RAM 4 GB. Bộ nhớ trong 128 GB có giá 899 USD hoặc 1.099 USD với bản 256 GB.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Phiên bản 13 inch của MacBook Air dùng chip Core i5 tốc độ 1,6 GHz, RAM 4 GB. Model có bộ nhớ 128 GB giá 999 USD trong khi bản 256 GB là 1.199 USD.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Người dùng có thể đặt mua từ hôm nay.&nbsp;</p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Riêng MacBook Pro Retina được ưu ái sử dụng trackpad công nghệ Force Touch giống MacBook 12 inch cùng cổng Thunderbolt 2.&nbsp;</span>'),
(7, 'Tổng hợp sự kiện Apple Watch, ra mắt MacBook 12 inch', 'ac-2779-1425922502.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Tổng hợp sự kiện Apple Watch, ra mắt MacBook 12 inch</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Mẫu đồng hồ thông minh của Apple sẽ bán ra vào ngày 24/4 với giá từ 349 USD trong khi MacBook 12 inch mới thu hút sự chú ý với cân nặng chỉ 0,9 kg.&nbsp;</div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><span style=\"color: rgb(0, 0, 0);\">Sự kiện của Apple được tổ chức tại San Francisco, Mỹ vào lúc 10h sáng (giờ địa phương), tức 0h ngày 10/3 (giờ Việt Nam). Các chi tiết chính bao gồm Apple hạ giá Apple TV còn 69 USD, công bố bán 700 triệu iPhone,&nbsp;<a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/laptop/macbook-12-inch-trinh-lang-voi-can-nang-chi-0-9-kg-3155350.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">ra mắt MacBook 12 inch</a>&nbsp;và công bố giá, thời điểm bán của Apple Watch.&nbsp;</span></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"quangcanh-2072-1425919993.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/quangcanh-2072-1425919993.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Sân khấu ít phút trước khi bắt đầu sự kiện của Apple.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple đã bán được 25 triệu chiếc Apple TV, và 700 triệu iPhone cho đến nay. Hãng giảm giá Apple TV xuống còn 69 USD. CEO Tim Cook tự hào cho rằng iPhone chính là chiếc smartphone bán chạy nhất thế giới hiện nay.&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"ac-2779-1425922502.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/ac-2779-1425922502.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">MacBook mới trên tay Tim Cook.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Trái với nhiều dự đoán, sau màn \"chào hỏi\" bằng các con số thống kê về ứng dụng, số lượng máy bán ra, Apple lại giới thiệu MacBook thay vì nói nhiều về Apple Watch.&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"111-9376-1425922680.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/111-9376-1425922680.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Sản phẩm này có cân nặng chỉ 0,9 kg, mỏng 13,1 mm (so với 17,3 mm trên MacBook Air hiện nay).&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple cho biết nhờ hệ thống bàn phím bướm, độ dày do phần chi tiết này giảm đi tới 40%. Các phím đều có đèn LED riêng biệt để chiếu sáng và hoạt động trong điều kiện tối.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Màn hình của MacBook mới có kích thước 12 inch, viền siêu mỏng, độ phân giải đạt&nbsp;2.304 x 1.440. Tấm nền này chỉ mỏng 0,88 mm, mỏng nhất trong số các máy Mac từ trước đến nay và tiêu thụ điện năng ít hơn 30%.&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"pin-3616-1425923178.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/pin-3616-1425923178.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Pin dạng bậc thang tối ưu không gian.&nbsp;</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">MacBook mới cũng không sử dụng quạt tản nhiệt, điều kiện rất cần cho việc chế tạo mỏng. Để có được khả năng này, máy đã chuyển sang dùng chip xử lý Intel Core M thế hệ mới.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Dù có kích thước siêu nhỏ gọn, MacBook mới cũng có pin lên tới 9 tiếng nếu duyệt web hoặc 10 tiếng nếu xem video liên tục. &nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"macc-4120-1425923680.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/macc-4120-1425923680.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Một điểm đáng chú ý là MacBook 12 inch sử dụng duy nhất một cổng kết nối USB-C và sẽ dùng cáp chuyển cho mọi loại cổng phổ biết như USB, VGA, HDMI, Lightning...</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">MacBook có giá khởi điểm từ 1.299 USD ổ SSD 256 GB, RAM 8 GB, chip Intel Core M 1,1 GHz và 1.599 USD cho cấu hình ổ SSD 512 GB SSD.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Máy bán ra từ ngày 10/4. Apple cũng nâng cấp cấu hình cho các dòng MacBook khác.&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"w-1262-1425924151.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/10/w-1262-1425924151.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Tim Cook trở lại sân khấu và bắt đầu nói về Apple Watch.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Người dùng có thể nhận cuộc gọi, nghe và nói trực tiếp trên đồng hồ thông minh của Apple. Điều mà theo CEO của hãng là ông đã muốn thực hiện khi mới 5 tuổi.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Watch sẽ quản lý tình hình hoạt động của người đeo bao gồm cả khả năng nhắc khi đã ngồi quá lâu và một báo cáo nhỏ về sức khỏe vào cuối tuần. Apple cũng mời cả siêu mẫu&nbsp;Christy Turlington Burns, người được trải nghiệm trước để chia sẻ ngắn về sản phẩm này.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Mọi thông báo người dùng nhận được trên iPhone đều có thể nhận được trên Apple Watch. Pin của sản phẩm này là 18 tiếng liên tục.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Đồng hồ thông minh của Apple được chia làm ba bộ sưu tập chính bao gồm&nbsp;Apple Watch Sport, Apple Watch và Apple Watch Edition.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple Watch Sport có giá 349 USD cho bản cỡ 38 mm và 399 USD cho bản cỡ 42 mm.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple Watch với dây đeo thép không gỉ có giá từ 599 USD đến 1.099 USD cho bản 42 mm và 549 đến 1.049 USD cho bản 38 mm.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Apple Watch Edition có giá từ 10.000 USD, số lượng giới hạn và cũng chỉ bán ở một số cửa hàng được chỉ định.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Bắt đầu bán từ ngày 24/4.&nbsp;</p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Mẫu đồng hồ thông minh của Apple sẽ bán ra vào ngày 24/4 với giá từ 349 USD trong khi MacBook 12 inch mới thu hút sự chú ý với cân nặng chỉ 0,9 kg.&nbsp;</span>'),
(8, 'Những smartphone chụp ảnh đẹp tầm giá 10 triệu đồng', 'IMG-7982-1412805497-660x0-1287-1425869841.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Những smartphone chụp ảnh đẹp tầm giá 10 triệu đồng</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Tầm tiền trên dưới 10 triệu đồng quy tụ nhiều smartphone được trang bị camera tốt, cho khả năng chụp ảnh đẹp từ Windows Phone cho tới Android, bên cạnh iPhone.</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/tin-tuc/cong-dong/hoi-dap/dien-thoai-chup-hinh-nao-tot-nhat-trong-tam-gia-12-trieu-dong-3148262.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Điện thoại chụp hình nào tốt nhất trong tầm giá 12 triệu đồng?</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Nokia Lumia 1020 (9 triệu đồng)</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Nokia-Lumia-1020-9894-1425869838.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/Nokia-Lumia-1020-9894-1425869838.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Chiếc Lumia ra mắt từ lâu của Nokia vẫn là đại diện tiêu biểu đối với những người thích chụp ảnh trên điện thoại di động. Nó sở hữu cảm biến kích thước lớn hơn hẳn ở smartphone thông thường. Độ phân giải được đẩy lên tới 41 megapixel cùng ống kính chống rung quang học OIS đi kèm công nghệ xử lý ảnh PureView nổi tiếng của Nokia. 1020 còn hỗ trợ ứng dụng chụp ảnh chuyên nghiệp Lumia Camera, tích hợp chế độ chỉnh tay cũng như khả năng chụp ảnh RAW. Dù vậy, điểm yếu của sản phẩm là tốc độ chụp và xử lý ảnh khi lưu lại hơi chậm so với thông thường.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://vnexpress.net/nokia-lumia-1020/topic-17107.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Đánh giá Lumia 1020&nbsp;</a></strong></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Samsung Galaxy K Zoom (11 triệu đồng)</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Samsung-Galaxy-K-Zoom-8673-1425869838.jp\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/Samsung-Galaxy-K-Zoom-8673-1425869838.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Galaxy K Zoom mang ngoại hình trông còn giống smartphone hơn so với Lumia 1020 khi nó được trang bị ống kính có khả năng zoom quang học tới 10x, nhờ vậy khi phóng khung hình lớn chất lượng ảnh không suy giảm đáng kể. Cảm biến BSI CMOS 20,7 megapixel, ống kính chống rung quang học đi kèm đèn Flash Xenon. So với Lumia 1020, việc chạy Android là một lợi thế đáng cân nhắc. Về bản chất, máy có cấu hình tương tự như chiếc Galaxy S5. Tuy nhiên, trên thị trường hiện giờ để mua được Galaxy K Zoom không đơn giản vì máy khá hiếm.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/photo/dien-thoai/anh-thuc-te-samsung-galaxy-k-zoom-dien-thoai-lai-may-anh-2984836.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Ảnh thực tế Samsung Galaxy K Zoom</a></strong></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Nokia Lumia 930 (11 triệu đồng)</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Nokia-Lumia-930-6188-1425869839.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/Nokia-Lumia-930-6188-1425869839.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Lumia 930 là chiếc Windows Phone hấp dẫn nhất khi không chỉ mạnh về camera, cấu hình tốt, màn hình đẹp mà còn có kiểu dáng bắt mắt. Độ phân giải và cảm biến không bằng so với Lumia 1020, nhưng 930 vẫn được trang bị camera 20,7 megapixel, công nghệ PureView, ống kính Zeiss cao cấp cùng với khả năng chống rung quang học OIS. So với phần lớn điện thoại khác, Lumia 930 được đánh giá cao ở khả năng chụp hình nhờ việc thu thập được thông tin ảnh lớn, giúp người dùng dễ dàng hậu kỳ, chỉnh sửa mà không làm suy giảm nhiều chất lượng. Chiếc Windows Phone này còn hỗ trợ quay video 4K.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/danh-gia/dien-thoai/danh-gia-lumia-930-chiec-windows-phone-hap-dan-3023648.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\"><span style=\"color: rgb(0, 0, 255);\">Đánh giá Lumia 930</span></a></strong></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">iPhone 5S (11,5 triệu đồng)&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"galaxy-s5-vs-iphone-5s-hands-o-1299-2521\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/galaxy-s5-vs-iphone-5s-hands-o-1299-2521-1425869839.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Chiếc iPhone nhỏ gọn của Apple không sở hữu camera xuất sắc như 1020 hay 930 nhưng nó lại là lựa chọn hợp lý nếu người dùng quan tâm đến camera. Giao diện phần mềm đơn giản dễ sử dụng nhưng cho chất lượng ảnh chụp đẹp, khả năng xử lý màu sắc tốt, chụp Panorama ấn tượng. Camera sau và trước đều có độ phân giải không cao, lần lượt chỉ 8 và 1,2 megapixel, nhưng đem đến hài lòng hơn trang bị tương tự trên những dòng smartphone khác. Điểm mạnh của iPhone 5S còn nằm ở kho ứng dụng đồ sộ với rất nhiều phần mềm chụp và chỉnh sửa, bổ sung thêm hiệu ứng đặc sắc cho ảnh chụp từ smartphone.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/iphone-5s-duoc-danh-gia-la-smartphone-tot-nhat-thi-truong-2881376.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Đánh giá iPhone 5S</a></strong></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Sony Xperia Z3 Compact (10,5 triệu đồng)&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"sony-xperia-z3-software-8551-1425869840.\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/sony-xperia-z3-software-8551-1425869840.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Xperia Z3 Compact hấp dẫn khi là bản thu nhỏ hoàn chỉnh từ chiếc Z3 cao cấp của Sony. Cấu hình không thay đổi, camera trên Xperia Z3 Compact cũng được bê nguyên xi từ đàn anh. \"Nhỏ nhưng có võ\", m<span style=\"text-align: right;\">áy ảnh chính của nó được trang bị cảm biến 1/2,3 inch, lớn nhất trong số các smartphone Android. C</span><span style=\"text-align: right;\">amera 20,7 megapixel với đèn flash đơn, ống kính G Len cao cấp cùng chip xử lý ảnh BIONZ thường thấy trên máy ảnh Sony.&nbsp;</span>Ngoài ra, phải kể đến việc Sony đã tăng độ nhạy sáng máy ảnh với thiết lập ISO cao nhất lên đến 12.800 hay độ mở ống kính đạt f/2.0, những trang bị rất ít gặp trên điện thoại. Tất cả đem đến khả năng chụp hình ấn tượng cho chiếc Xperia có vóc dáng nhỏ gọn.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><a href=\"http://sohoa.vnexpress.net/danh-gia/dien-thoai/danh-gia-xperia-z3-compact-smartphone-nho-gon-manh-me-3095536.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\"><strong>Đánh giá Sony Xperia Z3 Compact</strong></a></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Oppo Find 7a (9,9 triệu đồng)</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Oppo-Find-7a-5-1397186614-660x-7089-9271\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/Oppo-Find-7a-5-1397186614-660x-7089-9271-1425869840.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Model tới từ tên tuổi mới này được nhiều người chơi ảnh đánh giá cao về camera trong nhóm điện thoại Android năm ngoái. Lợi thế của sản phẩm ở mức giá hợp lý nếu xét các model trang bị tới từ Samsung, LG hay HTC, Sony. Camera trên Find 7a có độ phân giải 13 megapixel dùng cảm biến Exmor RS đi kèm vi xử lý hình ảnh PureImage 2.0. Ngoài thương hiệu, hạn chế của Find 7a còn là không có ống kính OIS. Nhưng bù lại nó được trang bị những tính năng chụp ảnh tốt cho chất lượng đẹp, như chế độ UltraHD cho phép chụp hình 50 megapixel, chế độ phơi sáng 32s, chụp ảnh định dạng RAW... cạnh tranh với dòng Windows Phone Lumia.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/photo/dien-thoai/mo-hop-oppo-find-7a-smartphone-chup-hinh-50-megapixel-2982120.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Đánh giá Oppo Find 7a</a></strong></p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">HTC Desire Eye (11 triệu đồng)</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"IMG-7982-1412805497-660x0-1287-142586984\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/03/09/IMG-7982-1412805497-660x0-1287-1425869841.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Desire Eye là chiếc smartphone đầu tiên thế giới được trang bị camera 13 megapixel ở cả mặt trước và sau, đều đi kèm đèn flash kép. Nằm ở phân khúc tầm thấp hơn dòng One, nhưng HTC đầu tư nhiều vào camera sản phẩm này khi trang bị cho Eye các tính năng chụp hình mở rộng và độc đáo với phần mềm Eye Experience, với chế độ chụp 2 camera cùng lúc Split Camera, Crop Me In, tự động làm đẹp chân dung Live Make Up... Chất lượng ảnh chụp từ Desire Eye đẹp và sắc nét hơn so với One M8. Ngoài chế độ chụp HDR và tự động tạo ấn tượng, model tới từ HTC cũng là smartphone Android hiếm hoi có chế độ \"chỉnh tay\" khi chụp, giống dòng Windows Phone Lumia.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/photo/dien-thoai/mo-hop-htc-desire-eye-tai-viet-nam-3109828.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Mở hộp HTC Desire Eye</a></strong></p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Tầm tiền trên dưới 10 triệu đồng quy tụ nhiều smartphone được trang bị camera tốt, cho khả năng chụp ảnh đẹp từ Windows Phone cho tới Android, bên cạnh iPhone.</span>');
INSERT INTO `tintuc` (`id_baiviet`, `tenbaiviet`, `anhminhhoa`, `noidung`, `tomtat`) VALUES
(9, 'Đánh giá Galaxy Note Edge - smartphone ấn tượng, màn hình độc đáo', 'Samsung-Galaxy-Note-Edge-1-6859-1425088870.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 660.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Đánh giá Galaxy Note Edge - smartphone ấn tượng, màn hình độc đáo</h1></div><div class=\"type_products\" style=\"padding-bottom: 10px; width: 660.015625px; float: left; font-stretch: normal; font-size: 12px; font-family: arial; background-color: rgb(255, 255, 255);\"><a href=\"http://sohoa.vnexpress.net/danh-gia/dien-thoai?os=9\" class=\"a_type_product android\" style=\"color: rgb(0, 0, 0); text-decoration: none; outline: 1px; font-stretch: normal;\">&nbsp;Android</a>&nbsp;<span class=\"sep\" style=\"color: rgb(140, 140, 140);\">|&nbsp;</span>Giá 18 - 21 triệu</div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 660.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Ngoài kiểu dáng cao cấp, cấu hình mạnh và tính năng đa dạng, Note Edge còn sở hữu màn hình cong tràn viền lạ mắt, hứa hẹn có thể tạo trào lưu mới trong tương lai.</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 660.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 660.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/tin-tuc/san-pham/dien-thoai/galaxy-note-edge-ve-viet-nam-gia-21-trieu-dong-3146203.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Galaxy Note Edge về Việt Nam giá 21 triệu đồng</a></li><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/photo/dien-thoai/galaxy-note-edge-man-hinh-cong-ma-vang-gia-21-trieu-dong-3146879.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Galaxy Note Edge màn hình cong mạ vàng giá 21 triệu đồng</a></li></ul></div><ul class=\"tab_danhgia_header\" style=\"margin-bottom: 12px; list-style-type: none; height: 30px; width: 660.015625px; float: left; font-family: arial; font-size: 12px; background: url(http://st.f2.sohoa.vnecdn.net/c/v5/images/graphics/1_1.gif) 0% 100% repeat-x rgb(255, 255, 255);\"><li style=\"margin-right: 5px; list-style-type: none; height: 30px; float: left;\"><a class=\"active\" rel=\"trainghiem\" style=\"padding-right: 10px; padding-left: 10px; outline: 1px; height: 28px; font-weight: 700; font-stretch: normal; float: left; line-height: 28px; border-top-width: 2px; border-top-style: solid; border-top-color: rgb(153, 153, 153); color: rgb(223, 156, 0) !important; background: rgb(238, 238, 238);\">Trải nghiệm</a></li><li style=\"margin-right: 5px; list-style-type: none; height: 30px; float: left;\"><a rel=\"thongsokythuat\" style=\"padding-right: 10px; padding-left: 10px; outline: 1px; height: 29px; font-stretch: normal; float: left; line-height: 30px; background: rgb(238, 238, 238);\">Thông số kỹ thuật</a></li></ul><div class=\"width_common line_col_480 space_bottom_20\" style=\"margin-bottom: 20px; width: 660.015625px; float: left; font-family: arial; font-size: 12px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_1x1_gray.gif) 74.25% 0px repeat-y rgb(255, 255, 255);\"><div id=\"trainghiem\" class=\"content_danhgia_chitiet\"><div class=\"block_col_480\" style=\"width: 480.015625px; float: left;\"><div class=\"left_calculator\"><div class=\"fck_detail tab_danhgia width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Với mức giá 21 triệu đồng, Galaxy Note Edge là smartphone đắt nhất của Samsung tại thị trường Việt Nam hiện nay. Đây cũng có thể coi là bản cao cấp hơn nữa của phablet Galaxy Note 4. Màn hình với thiết kế cong và tràn mép viền (Edge Screen) là điểm tạo ra sự hấp dẫn, thú vị và độc đáo cho Galaxy Note Edge cũng như cuốn hút với người dùng.&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Samsung-Galaxy-Note-Edge-1-6859-14250888\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/28/Samsung-Galaxy-Note-Edge-1-6859-1425088870.jpg\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><strong>Galaxy Note Edge mang phong cách thiết kế không khác Note 4.</strong>&nbsp;Thoạt nhìn, người dùng không dễ phân biệt khi phần màn hình cong nằm ở bên cạnh phải, không lộ rõ nếu chỉ nhìn từ phía sau hay hơi nghiêng. Khung viền của Note Edge được làm từ kim loại với các cạnh trái, trên đỉnh và phía dưới được làm phẳng như Note 4.&nbsp;Riêng cạnh bên phải với phần màn hình tràn viền được uốn cong cho thấy sự khác biệt.&nbsp;Mỏng và hơi cong nhẹ, nên nếu cầm bằng tay phải, Note Edge sẽ cho cảm giác hơi khác Note 4, có phần ôm tay và thoải mái hơn. Dù vậy, máy vẫn thuộc dạng to và có phần khó dùng bằng 1 tay. Bên cạnh đó, việc phím nguồn được chuyển lên đỉnh máy sẽ hơi bất tiện vì máy có kích cỡ lớn</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Với màn hình được mở rộng về bên phải, kích thước tổng thể của Galaxy Note Edge trông \"mập mạp\" hơn so với Note 4. Nhưng&nbsp;Note Edge vẫn giữ được ngoại hình sang trọng so với nhiều smartphone khác trên thị trường. Mặt lưng với bề mặt vân như da như Note 4, Note Edge có hai tông màu ghi xám và trắng. Phiên bản ghi xám trông nam tính, khoẻ khoắn và giống Note 4 hơn. Còn Galaxy Note Edge trắng lại thời trang, bắt mắt và dễ dàng nhận ra thiết kế màn hình cong độc đáo.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><a href=\"http://sohoa.vnexpress.net/photo/anh-video/anh-thuc-te-samsung-galaxy-note-edge-man-hinh-cong-3139753.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\"><strong>Ảnh thực tế Samsung Galaxy Note Edge</strong></a></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Trên Galaxy Note Edge, Samsung vẫn tích hợp cảm biến vân tay vào phím Home với thao tác quét để nhận diện. Lỗ cắm bút cảm ứng S-Pen được đặt ở cạnh đáy và gần góc bên phải, so với Note 4 thì không gây vướng vào ngón tay khi cầm. Nắp lưng vân da có thể tháo bỏ dễ dàng nhưng có độ khít cao, chắc chắn và không ọp ẹp. Bên trong, Galaxy Note Edge sử dụng pin dung lượng 3.000 mAh, thấp hơn Note 4 một chút. Khay cắm thẻ nhớ cho phép thay nóng được trong khi khe cắm SIM vẫn là dạng micro thay vì nano.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><strong>Màn hình là điểm hấp dẫn và độc đáo nhất của Galaxy Note Edge.&nbsp;</strong>Giữ độ phân giải \"siêu nét\" QuadHD 2K cùng với tấm nền SuperAMOLED, màn hình trên chiếc phablet màn hình viền cong thể hiện xuất sắc như Galaxy Note 4, phù hợp với nhiều yêu cầu sử dụng khác nhau. Người dùng có thể tự thiết lập lại tông màu từ rực rỡ, tiêu chuẩn cho tới chế độ trung thực, phù hợp để xem phim, chỉnh sửa ảnh hay đơn giản là sử dụng thông thường theo ý thích cá nhân.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Note Edge trông mập mạp hơn Note 4.\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/28/Samsung-Galaxy-Note-Edge-2-4917-1425088870.jpg\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Note Edge trông mập mạp hơn Note 4.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Note Edge nhỏ hơn 0,1 inch so với Note 4 (5,7 inch) nhưng màn hình lại được kéo dài và uốn cong ở bên phải. Sự độc đáo nằm ở chỗ đây là một màn hình thống nhất, nhưng lại được uốn cong và tràn về phía viền, tạo ra một công cụ hiển thị phụ khi cần được gọi là Edge Screen. Người dùng có thể dễ dàng điều chỉnh phần màn phụ này thông qua phần cài đặt. Về cơ bản, nó có các chức năng chính:&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><em>- Cá nhân hoá, hiển thị giờ, thông tin của người dùng và thông báo</em></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><em>- Chuyển đổi nhanh các ứng dụng thường dùng, yêu thích</em></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><em>- Hỗ trợ các tiện ích nhỏ (thước kẻ, ghi âm, đèn pin...) hoặc một số ứng dụng, trò chơi được thiết kế riêng</em></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><em>- Mở rộng không gian hiển thị như camera, S Note hay trò chơi...</em></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://video.vnexpress.net/cong-nghe/cong-dung-man-hinh-vien-cua-samsung-galaxy-note-edge-3151537.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Video công dụng màn hình viền cong Galaxy Note Edge</a></strong></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Galaxy Note Edge là smartphone tiên phong cho thiết kế màn hình lạ mắt này. Tuy nhiên, người dùng sẽ không phải \"lăn tăn\" khi các tính năng phụ trợ cho kiểu màn hình viền mới lạ không chỉ được Samsung tích hợp sẵn khá đầy đủ, mà còn có thể dễ dàng bổ sung nâng cấp trong tương lai. Nhà sản xuất Hàn Quốc đầu tư một mục riêng trong kho ứng dụng Galaxy Apps, nơi cung cấp các phần mềm cũng như ứng dụng, trò chơi hỗ trợ, tương thích với thiết kế màn hình viền độc đáo Edge Screen.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Tính năng không khác với Note 4, nhưng giao diện của một số phần mềm trên Note Edge được làm mới để phù hợp với màn hình viền cong.\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/28/Samsung-Galaxy-Note-Edge-3-5767-1425088870.jpg\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Tính năng không khác với Note 4, nhưng giao diện của một số phần mềm trên Note Edge được làm mới để phù hợp với màn hình viền cong.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><strong>Từ S-Pen cho tới camera, các công cụ và tính năng thông minh của Galaxy Note Edge đều tương tự như trên Galaxy Note 4.</strong>&nbsp;Tất cả các trang bị cao cấp và hiện đại nhất, cảm biến vân tay, cảm biến theo dõi sức khoẻ... trên Note 4 đều xuất hiện trên \"người anh em\" Note Edge. Khác biệt chỉ nằm ở giao diện một số tính năng được thiết kế lại cho phù hợp màn hình cong của Note Edge.&nbsp;Người dùng ban đầu thấy lạ lẫm nhưng khi quen sẽ thấy được lợi ích của phần màn hình viền.&nbsp;Như với ứng dụng camera, giao diện khung ngắm rộng và thoáng nhờ phím chụp hình, chuyển chế độ được đẩy lên phần viền màn hình. Hay khi ghi chú với S-Pen, viền màn hình là thanh công cụ để điều chỉnh, khiến không gian viết, vẽ rộng rãi và thoáng hơn nhiều.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: center;\"><strong><a href=\"http://sohoa.vnexpress.net/photo/dien-thoai/mot-so-hinh-anh-chup-tu-galaxy-note-edge-3151585.html\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">Ảnh chụp thử từ Samsung Galaxy Note Edge</a></strong></p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Camera trên Galaxy Note Edge thuộc hàng xuất sắc. Xét về thông số, nó được trang bị độ phân giải 16 megapixel, cảm biến IMX240 Exmor RS của Sony, khẩu độ F/2.2 và có ống kính chống rung quang học. Camera trên phablet của Samsung vẫn sở hữu hệ thống tính năng mở rộng đồ sộ, thậm chí cho phép người dùng có thể gia tăng bằng cách tải về thêm. Chất lượng chụp hình trên Note Edge ấn tượng như Note 4, tốc độ chụp và lấy nét nhanh, khả năng xử lý ánh sáng và màu sắc tốt. Tính năng HDR được đánh giá cao khi nó cho phép xử lý trực tiếp, thể hiện ngay trên màn hình trong lúc chụp thay vì phải đợi đến ảnh chụp xong. Sản phẩm cũng hỗ trợ quay video ở độ phân giải 4K siêu nét.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><strong>So với Note 4 chính hãng, Galaxy Note Edge có cấu hình cao hơn nhưng thời lượng pin không bằng.&nbsp;</strong>Viên pin dung lượng 3.000 mAh vẫn đảm bảo cho Galaxy Note Edge có thể hoạt động thoải mái từ một đến một ngày rưỡi. Nhưng so cùng mức độ sử dụng, thời gian dùng pin của Note Edge ít hơn Note 4 khoảng 10-20%. Công nghệ sạc nhanh, cho phép&nbsp;nạp 50% dung lượng pin chỉ trong vòng 30 phút cũng xuất hiện trên sản phẩm này và là một ưu điểm.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Note Edge có cấu hình mạnh hơn Note 4 (cùng bản chính hãng) trong khi dung lượng pin giảm nhẹ.\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/28/Samsung-Galaxy-Note-Edge-4-2960-1425088870.jpg\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Note Edge có cấu hình mạnh hơn Note 4 (cùng bản chính hãng) trong khi dung lượng pin giảm nhẹ.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Còn với cấu hình, thay vì dùng vi xử lý 8 nhân Exynos do Samsung phát triển, Note Edge được trang bị Snapdagon 805 bốn nhân tốc độ. RAM vẫn giữ nguyên ở mức 3 GB. Dù không khác biệt rõ nét khi sử dụng, nếu xét về điểm số, hiệu năng của Galaxy Note Edge nhỉnh hơn &nbsp;Note 4. Nếu đo bằng Antutu BenchMark 5, Note 4 (bản chính hãng dùng chip Exynos) đạt hơn 48.300 điểm còn Note Edge là gần 49.600 điểm.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Một điểm thú vị, Galaxy Note Edge lại cho trải nghiệm đa nhiệm nhanh nhạy, dễ chịu hơn so với Note 4. Nếu như thông thường, người dùng phải dùng đến phím chuyển đổi, vuốt trượt giữa các cửa sổ đề chuyển qua lại giữa các ứng dụng thường xuyên dùng thì trên Note Edge, màn hình cong ở viền đem lại trải nghiệm tốt hơn hẳn. Chỉ mất một thao tác vuốt và nhấn, các ứng dụng thường xuyên dùng có thể chuyển đổi qua lại. Dùng thực tế cho thấy, nếu Note 4 mất vài giây để thực hiện việc chuyển ứng dụng thì trên Note Edge, chỉ mất khoảng 1 giây và cảm giác mượt mà hơn hẳn.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Review-Samsung-Galaxy-Note-Edge_14250124\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/28/Review-Samsung-Galaxy-Note-Edg-4240-3653-1425088870.jpg\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%;\"></td></tr></tbody></table><p style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\"><span style=\"color: rgb(0, 0, 0);\"><strong>Kế thừa ưu điểm nội trội như bút cảm ứng S-Pen đa năng, camera tốt cộng với việc được bổ sung màn hình viền cong hữu dụng, Galaxy Note Edge là smartphone Android hấp dẫn nhất hiện nay.</strong>&nbsp;Nếu Galaxy Note 4 là một trong những phablet màn hình lớn xuất sắc, thì Note Edge còn tốt hơn thế và có thể coi là đối thủ nặng ký với iPhone 6 Plus. Dù vậy, điểm hạn chế của sản phẩm là mức giá \"đắt\", cao hơn hẳn các mẫu smartphone Android khác.</span></p><p style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: right;\"><strong>Tuấn Anh</strong></p></div></div></div></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Ngoài kiểu dáng cao cấp, cấu hình mạnh và tính năng đa dạng, Note Edge còn sở hữu màn hình cong tràn viền lạ mắt, hứa hẹn có thể tạo trào lưu mới trong tương lai.</span>'),
(10, '5 tiện ích của ứng dụng Photos trên iPhone', '4-8219-1424836477.png', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">5 tiện ích của ứng dụng Photos trên iPhone</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Ẩn ảnh, video riêng tư, chỉnh sửa trực tiếp hay lưu trữ điện toán đám mây là những tiện hấp dẫn có sẵn với phần mềm Photos trên iOS 8.</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/tin-tuc/kinh-nghiem/10-thu-thuat-giup-dung-iphone-hieu-qua-3136082.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">10 thủ thuật giúp dùng iPhone hiệu quả</a>&nbsp;/&nbsp;<a href=\"http://sohoa.vnexpress.net/tin-tuc/kinh-nghiem/thay-doi-do-sang-man-hinh-iphone-ipad-bang-nut-home-3099079.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Thay đổi độ sáng màn hình iPhone, iPad bằng nút Home</a>&nbsp;/&nbsp;<a href=\"http://sohoa.vnexpress.net/tin-tuc/kinh-nghiem/goi-dien-thoai-tren-iphone-bang-ipad-macbook-3095825.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Gọi điện thoại trên iPhone bằng iPad, MacBook</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\"><strong>Ảnh đã xóa gần đây sẽ được lưu trong 30 ngày</strong></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"1-4597-1424836475.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/25/1-4597-1424836475.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Trên iOS, khi xóa một vài bức ảnh thì thực chất những tấm hình này được chuyển đến thư mực<i>&nbsp;</i><em>Recently Deleted</em>&nbsp;(Đã xóa Gần đây). Người dùng có thể thay đổi quyết định trong vòng 30 ngày.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Mở ảnh trong mục&nbsp;<em>Recently Deleted</em>&nbsp;để xác nhận việc xóa vĩnh viễn hoặc khôi phục lại. Nếu không, các tấm hình sẽ tự động được loại bỏ khỏi iPhone sau số ngày đếm lùi hiển thị trên ảnh.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\"><strong>Ẩn ảnh, video riêng tư</strong></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-25-at-10-3-3697-1885\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/25/Screen-Shot-2015-02-25-at-10-3-3697-1885-1424836476.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Ứng dụng Photos trên iPhone cho phép người dùng ẩn các nội dung không mong muốn. Để thực hiện, bấm giữ vào tấm hình sau đó chọn&nbsp;<em>Hide</em>&nbsp;(Ẩn), ảnh này sẽ được tự động chuyển đến thư mục&nbsp;<em>Hidden</em>&nbsp;(Bị ẩn). Người dùng có thể khôi phục trạng thái bằng thao tác ngược lại.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Thực chất, tính năng ẩn ảnh, video riêng tư giúp loại bỏ những nội dung này trên thư viện hình iPhone. Loạt ảnh này sẽ không xuất hiện khi xem trong album, nhưng người khác hoàn toàn có thể tìm thấy tại thư mục ảnh<em>Hidden</em>.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\"><strong>Chỉnh sửa ảnh ngay trên ứng dụng Photos</strong></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-25-at-10-3-9022-2583\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/25/Screen-Shot-2015-02-25-at-10-3-9022-2583-1424836476.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">iOS 8 được Apple mở rộng nhiều tính năng trong đó phần mềm Photos đã hỗ trợ chỉnh sửa ảnh với nhiều tùy chọn. Để thực hiện, mở ảnh cần thao tác và bấm nút&nbsp;<em>Edit</em>&nbsp;(Sửa) ở góc phải màn hình. Phần mềm Photos sẽ cung cấp các công cụ cho người dùng như loại đỏ mắt đỏ, tự động căn chỉnh thông minh, cắt và xoay ảnh theo các tỉ lệ, áp dụng bộ lọc màu hay chỉnh sửa thủ công.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Điểm cộng cho phần mềm Photos trên iOS là khi thực hiện chỉnh sửa, máy sẽ tự động lưu trữ bản gốc, cho phép người dùng khôi phục nếu cần thiết.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\"><strong>Chia sẻ ảnh trực tiếp đến các ứng dụng thứ ba</strong></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"4-8219-1424836477.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/25/4-8219-1424836477.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Trong khi tính năng tương tự đã sớm có trên Android thì đến iOS 8 Apple mới bổ sung phần mở rộng này. Ứng dụng Photos trên iPhone trước đây chỉ cho phép chia sẻ đến Mail, Twitter hay Facebook thì bây giờ có thể áp dụng với các phần mềm của bất kỳ bên nào.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Để thực hiện, chọn ảnh cần chia sẻ sau đó bấm nút&nbsp;<em>Share</em>&nbsp;ở góc trái phía dưới màn hình. Chọn nút&nbsp;<em>More</em>&nbsp;để bổ sung các ứng dụng. Nếu người dùng không thể chia sẻ với phần mềm mình cần thì đó là do nhà phát triển phần mềm đó chưa hỗ trợ.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\"><strong>Lưu trữ điện toán đám mây</strong></p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"5-8851-1424836477.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/25/5-8851-1424836477.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">iCloud Photo Library đang trong giai đoạn thử nghiệm nhưng người dùng hoàn toàn có thể trải nghiệm tiện ích này. &nbsp;Thực hiện kích hoạt, truy cập<em>Settings &gt; iCloud &gt; Photos</em>&nbsp;và mở tùy chọn này. Để tiết kiệm không gian lưu trữ, người dùng có thể chọn mục&nbsp;<em>Optimize iPhone Storage</em>&nbsp;(Tối ưu hóa Dung lượng iPhone). Khi đó thiết bị sẽ giữ ảnh, video được tối ưu (nén) trên iPhone và lưu file gốc vào iCloud.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">iCloud Photo Library còn cho phép người dùng đồng bộ với các thiết bị khác dùng cùng tài khoản Apple ID như iPad, máy tính Mac. Ngoài ra, người dùng có thể lựa chọn các dịch vụ lưu trữ đám mây khác như Dropbox, Google+ Photos, OneDrive hay Flickr.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: right;\"><strong>Đình Nam</strong><br>Theo&nbsp;<em>HowToGeek</em></p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Ẩn ảnh, video riêng tư, chỉnh sửa trực tiếp hay lưu trữ điện toán đám mây là những tiện hấp dẫn có sẵn với phần mềm Photos trên iOS 8.</span>'),
(11, 'Tải video từ YouTube, Facebook không cần cài phần mềm', 'Screen-Shot-2015-02-08-at-10-0-3922-1356-1423713485.png', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Tải video từ YouTube, Facebook không cần cài phần mềm</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Trang web SaveFrom hỗ trợ download video từ nhiều trang chia sẻ nổi tiếng, cho phép lựa chọn định dạng chất lượng cao ngay trên trình duyệt.</div><div class=\"relative_new\" style=\"padding-bottom: 5px; width: 480.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><ul class=\"list_news_dot_3x3_300\" style=\"list-style-type: none; width: 480.015625px; float: left; border: none; color: rgb(102, 102, 102);\"><li style=\"padding-bottom: 5px; padding-left: 10px; list-style-type: none; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/graphics/bg_dot_gray_3x3.gif) 0px 6px no-repeat;\"><a href=\"http://sohoa.vnexpress.net/photo/kinh-nghiem/cach-xoa-cac-lenh-tim-kiem-tren-facebook-3125124.html\" style=\"color: rgb(102, 102, 102); text-decoration: none; outline: 1px; font-weight: 700; font-stretch: normal; line-height: 16px;\">Cách xóa các lệnh tìm kiếm trên Facebook</a></li></ul></div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Là trang chia sẻ video hàng đầu thế giới nhưng YouTube không cung cấp công cụ cho phép người dùng tải video để lưu trên máy. Dịch vụ trực tuyến<a href=\"http://savefrom.net/\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">SaveFrom.net</a>&nbsp;sẽ giúp giải quyết vấn đề này mà không cần cài thêm phần mềm.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Mở trình duyệt, truy cập đến video YouTube cần tải. Thanh địa chỉ sẽ trỏ đến đường dẫn có dạng:&nbsp;https://www.youtube.com/watch?v=mbUG...</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-08-at-10-04-37.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/12/Screen-Shot-2015-02-08-at-10-0-3922-1356-1423713485.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Để tải video, thay phần&nbsp;<strong>https://www.</strong>&nbsp;thành&nbsp;<strong>ss</strong>&nbsp;như hình minh họa.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-08-at-10-04-52.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/12/Screen-Shot-2015-02-08-at-10-0-2650-4249-1423713487.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Trình duyệt sẽ chuyển hướng đến trang SaveFrom.net. Tại đây, website cung cấp nhiều tùy chọn tải video theo độ phân giải, định dạng. Người dùng bấm vào liên kết để lưu video về máy tính.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-08-at-10-06-04.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/12/Screen-Shot-2015-02-08-at-10-0-9129-9442-1423713488.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Dịch vụ này còn hỗ trợ tải video từ trang trực tuyến khác như Vimeo.com, Soundcloud.com... Để thực hiện, truy cập website&nbsp;<a href=\"http://savefrom.net/\" style=\"color: rgb(0, 79, 139); text-decoration: none; outline: 1px;\">http://savefrom.net</a>, điền địa chỉ đường dẫn sau đó bấm nút download.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"Screen-Shot-2015-02-08-at-10-32-53.png\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/12/Screen-Shot-2015-02-08-at-10-3-8389-8986-1423713488.png\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Với mạng xã hội Facebook, cách này chỉ áp dụng với video ở chế độ công khai.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: right;\"><strong>Đình Nam</strong></p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Trang web SaveFrom hỗ trợ download video từ nhiều trang chia sẻ nổi tiếng, cho phép lựa chọn định dạng chất lượng cao ngay trên trình duyệt.</span>'),
(12, 'Cách kiểm tra tình trạng pin trong smartphone', 'pin-1-8530-1423473758.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 480.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Cách kiểm tra tình trạng pin trong smartphone</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 480.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Pin điện thoại giảm chất lượng theo thời gian và người dùng có thể kiểm tra xem pin còn tốt không, có cần thay thế hay không.</div><div id=\"left_calculator\" style=\"font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"fck_detail width_common\" style=\"padding-right: 9.59375px; padding-bottom: 10px; width: 470.40625px; float: left; overflow: hidden; font-stretch: normal; font-size: 14px; color: rgb(51, 51, 51);\"><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Kiểm tra bằng cảm quan</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Bạn không cần phải là người quá am hiểu công nghệ mới có thể phân biệt được đâu là pin tốt, đâu là pin cần thay. Một số lỗi liên quan đến pin có thể nhận thấy bằng mắt thường. Nếu pin có thể tháo rời, người dùng chỉ cần tắt nguồn điện thoại và lấy pin ra để xem xét các triệu chứng như độ phồng, dấu hiệu ăn mòn kim loại hay những vết ố màu xanh hoặc trắng. Nếu thấy biểu hiện này, bạn cần mang chúng đến các đại lý, nhà cung cấp để kiểm tra và thay thế.&nbsp;</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Người dùng không nên để viên pin lỗi trong máy vì nó có thể rò rỉ hóa chất và làm ảnh hưởng đến mạch trong điện thoại. Họ nên đặt pin trong túi nhựa kéo khóa khi mang đi.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"pin-1-8530-1423473758.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/09/pin-1-8530-1423473758.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr></tbody></table><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Kiểm tra bằng cách quay pin</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Pin lithium sẽ bị chai qua nhiều lần sạc. Việc sử dụng không đúng cách càng làm tăng nhanh quá trình này, như để pin ở nơi quá nóng hoặc quá lạnh làm giảm tuổi thọ pin. Một cách giảm chất lượng nữa là để pin bị kiệt và không sạc trong một thời gian dài, khiến pin dễ bị phồng rộp. Quá trình này có thể diễn ra chậm từ một vài tuần đến một vài tháng mà người dùng không nhận ra. Để kiểm tra, đặt pin lên một mặt phẳng và xoay tròn viên pin rồi thả tay (như xoay con quay). Nếu tiếp tục xoay, pin đã có dấu hiệu hỏng.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Kiểm tra tốc độ sụt pin</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Nếu không đo được bằng hai phương pháp trên, người dùng có thể theo dõi xem số phần trăm pin giảm nhanh hay chậm. Thông thường, pin sẽ không giảm hơn 2% cùng một lúc. Và nếu nó giảm từ 100% xuống gần 0% chỉ sau vài giờ trong khi bạn không sử dụng nhiều thì đã đến lúc thay pin mới.</p><p class=\"subtitle\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; font-weight: 700;\">Công cụ kiểm tra pin&nbsp;</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"pin-2-4556-1423473758.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/09/pin-2-4556-1423473758.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Thông tin về pin trong iPhone nằm ở phần More Information của ứng dụng iBackupBot.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">iPhone lưu số lần sạc pin và dung lượng thực của viên pin trong máy, nhưng chỉ nhân viên chăm sóc khách hàng của Apple mới truy cập được thông tin này. Tuy nhiên, người dùng có thể cài ứng dụng&nbsp;iBackupBot trên cả máy Mac và PC để quản lý các thiết bị do Apple sản xuất. Khi kết nối iPhone tới máy tính, ứng dụng sẽ kiểm tra và cho phép người dùng truy cập các thông số về thiết bị, trong đó có cả thống kê số lần sạc, dung lượng hiện tại của pin... Thông thường, pin&nbsp;lithium sẽ giảm 20% dung lượng sau 500 lần sạc.</p><table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; max-width: 100%; width: 470px;\"><tbody><tr><td style=\"line-height: 0;\"><img alt=\"pin-3-3681-1423473759.jpg\" data-natural-=\"\" src=\"http://m.f5.img.vnecdn.net/2015/02/09/pin-3-3681-1423473759.jpg\" data-width=\"500\" data-pwidth=\"470.40625\" style=\"border: 0px; font-size: 0px; line-height: 0; max-width: 100%; width: 470px;\"></td></tr><tr><td style=\"line-height: 0;\"><p class=\"Image\" style=\"padding: 10px; line-height: normal; text-rendering: geometricprecision; font-stretch: normal; font-size: 12px; background: rgb(245, 245, 245);\">Kiểm tra pin bằng cách nhập&nbsp;mã vào phần quay số&nbsp;trên Android.</p></td></tr></tbody></table><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision;\">Còn với người dùng Android, nhập mã&nbsp;*#*#4636#*#* vào phần quay số và thông tin về pin sẽ được hiển thị. Nếu mã này không hoạt động, người dùng có thể tải ứng dụng Battery của MicroPinch&nbsp;để theo dõi.</p><p class=\"Normal\" style=\"margin-bottom: 1em; line-height: 18px; text-rendering: geometricprecision; text-align: right;\"><strong>Minh Minh</strong><br>(<em>Theo PhoneArena</em>)</p></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Pin điện thoại giảm chất lượng theo thời gian và người dùng có thể kiểm tra xem pin còn tốt không, có cần thay thế hay không.</span>');
INSERT INTO `tintuc` (`id_baiviet`, `tenbaiviet`, `anhminhhoa`, `noidung`, `tomtat`) VALUES
(13, 'Cách xóa các lệnh tìm kiếm trên Facebook', 'FB-6-1419406066_660x0.jpg', '<div class=\"title_news\" style=\"margin-top: 10px; padding-bottom: 10px; width: 660.015625px; float: left; color: rgb(51, 51, 51); font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><h1 style=\"font-weight: 400; font-stretch: normal; font-size: 28px; line-height: 32px; text-rendering: geometricprecision;\">Cách xóa các lệnh tìm kiếm trên Facebook</h1></div><div class=\"short_intro txt_666\" style=\"padding-bottom: 10px; color: rgb(68, 68, 68); font-weight: 700; font-stretch: normal; font-size: 14px; line-height: 18px; font-family: arial; width: 660.015625px; float: left; text-rendering: geometricprecision; background-color: rgb(255, 255, 255);\">Khi các thành viên tra cứu trên thanh tìm kiếm, Facebook sẽ tự động lưu lại những từ khóa này và có thể gây rắc rối cho người dùng.</div><div class=\"width_common space_bottom_20\" style=\"margin-bottom: 20px; width: 660.015625px; float: left; font-family: arial; font-size: 12px; background-color: rgb(255, 255, 255);\"><div class=\"block_content_slide_showdetail\"><div id=\"article_content\"><div class=\"item_slide_show\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; clear: both; width: 618px;\"><div class=\"block_thumb_slide_show\" style=\"width: 618px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;\"><img data-reference-id=\"21368265\" src=\"http://l.f7.img.vnecdn.net/2014/12/24/FB-6-1419406066_660x0.jpg\" alt=\"\" class=\"left\" data-component-caption=\"&amp;lt;p class=&amp;quot;Normal&amp;quot;&amp;gt;\r\n	Những thứ người dùng tìm kiếm trên Facebook là bí mật mà họ không muốn ai biết, nhất là khi họ tra cứu tài khoản của người yêu cũ, tìm các trang có nội dung nhạy cảm... Về lý thuyết, chỉ chủ nhân tài khoản mới biết họ tìm kiếm những gì, nhưng họ sẽ khó tránh được việc ai đó vô tình truy cập vào máy tính, điện thoại của họ với tài khoản Facebook chưa được đăng xuất.&amp;lt;/p&amp;gt;\" id=\"vne_slide_image_0\" style=\"border: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto;\"><a class=\"btn_icon_show_slide_show\" style=\"outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/icons/icon_zoom.png) 0% 0% no-repeat;\">&nbsp;</a></div><div class=\"desc_cation\" style=\"padding: 10px 12.359375px; width: 593.265625px; float: left; background: rgb(245, 245, 245);\"><p></p><p class=\"Normal\">Những thứ người dùng tìm kiếm trên Facebook là bí mật mà họ không muốn ai biết, nhất là khi họ tra cứu tài khoản của người yêu cũ, tìm các trang có nội dung nhạy cảm... Về lý thuyết, chỉ chủ nhân tài khoản mới biết họ tìm kiếm những gì, nhưng họ sẽ khó tránh được việc ai đó vô tình truy cập vào máy tính, điện thoại của họ với tài khoản Facebook chưa được đăng xuất.</p><p></p></div><div class=\"clear\" style=\"font-size: 0px; line-height: 0;\">&nbsp;</div></div><div class=\"item_slide_show\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; clear: both; width: 660.015625px;\"><div class=\"block_thumb_slide_show\" style=\"width: 660.015625px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;\"><img data-reference-id=\"21368266\" src=\"http://l.f7.img.vnecdn.net/2014/12/24/FB-1-1419405414_660x0.png\" alt=\"\" class=\"left\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Để hạn chế rủi ro, người dùng có thể xóa lịch sử tìm kiếm này bằng cách bấm vào mũi tên trỏ xuống ở góc phải trên cùng cửa sổ, chọn Activity Log.&amp;lt;/p&amp;gt;\" id=\"vne_slide_image_1\" style=\"border: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto;\"><a class=\"btn_icon_show_slide_show\" style=\"outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/icons/icon_zoom.png) 0% 0% no-repeat;\">&nbsp;</a></div><div class=\"desc_cation\" style=\"padding: 10px 13.1875px; width: 633.609375px; float: left; background: rgb(245, 245, 245);\"><p></p><p>Để hạn chế rủi ro, người dùng có thể xóa lịch sử tìm kiếm này bằng cách bấm vào mũi tên trỏ xuống ở góc phải trên cùng cửa sổ, chọn Activity Log.</p><p></p></div><div class=\"clear\" style=\"font-size: 0px; line-height: 0;\">&nbsp;</div></div><div class=\"item_slide_show\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; clear: both; width: 660.015625px;\"><div class=\"block_thumb_slide_show\" style=\"width: 660.015625px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;\"><img data-reference-id=\"21368267\" src=\"http://l.f5.img.vnecdn.net/2014/12/24/FB-2-1419405415_660x0.png\" alt=\"\" class=\"left\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Sau đó, bấm vào mục More và chọn phần Search (Tìm kiếm).&amp;lt;/p&amp;gt;\" id=\"vne_slide_image_2\" style=\"border: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto;\"><a class=\"btn_icon_show_slide_show\" style=\"outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/icons/icon_zoom.png) 0% 0% no-repeat;\">&nbsp;</a></div><div class=\"desc_cation\" style=\"padding: 10px 13.1875px; width: 633.609375px; float: left; background: rgb(245, 245, 245);\"><p></p><p>Sau đó, bấm vào mục More và chọn phần Search (Tìm kiếm).</p><p></p></div><div class=\"clear\" style=\"font-size: 0px; line-height: 0;\">&nbsp;</div></div><div class=\"item_slide_show\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; clear: both; width: 660.015625px;\"><div class=\"block_thumb_slide_show\" style=\"width: 660.015625px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;\"><img data-reference-id=\"21368268\" src=\"http://l.f6.img.vnecdn.net/2014/12/24/FB-3-1419405415_660x0.png\" alt=\"\" class=\"left\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Người dùng có thể chọn xóa từng lệnh tìm kiếm, hoặc chọn &amp;quot;Clear Searches&amp;quot; để xóa toàn bộ lịch sử tìm kiếm.&amp;lt;/p&amp;gt;\" id=\"vne_slide_image_3\" style=\"border: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto;\"><a class=\"btn_icon_show_slide_show\" style=\"outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/icons/icon_zoom.png) 0% 0% no-repeat;\">&nbsp;</a></div><div class=\"desc_cation\" style=\"padding: 10px 13.1875px; width: 633.609375px; float: left; background: rgb(245, 245, 245);\"><p></p><p>Người dùng có thể chọn xóa từng lệnh tìm kiếm, hoặc chọn \"Clear Searches\" để xóa toàn bộ lịch sử tìm kiếm.</p><p></p></div><div class=\"clear\" style=\"font-size: 0px; line-height: 0;\">&nbsp;</div></div><div class=\"item_slide_show\" style=\"margin-right: auto; margin-bottom: 10px; margin-left: auto; clear: both; width: 660.015625px;\"><div class=\"block_thumb_slide_show\" style=\"width: 660.015625px; float: left; position: relative; text-align: center; font-size: 0px; line-height: 0;\"><img data-reference-id=\"21368269\" src=\"http://l.f5.img.vnecdn.net/2014/12/24/FB-4-1419405416_660x0.png\" alt=\"\" class=\"left\" data-component-caption=\"&amp;lt;p&amp;gt;\r\n	Kết quả sau khi xóa toàn bộ.&amp;lt;/p&amp;gt;\" id=\"vne_slide_image_4\" style=\"border: 0px; line-height: 0; max-width: 100%; float: none; cursor: url(http://st.f1.vnecdn.net/responsive/js/utils/slideshow/css/slideshow/images/icons/zoom_cursor.png), auto;\"><a class=\"btn_icon_show_slide_show\" style=\"outline: 1px; height: 28px; width: 28px; display: block; position: absolute; right: 0px; top: 0px; background: url(http://st.f3.vnecdn.net/responsive/c/v60/images/icons/icon_zoom.png) 0% 0% no-repeat;\">&nbsp;</a></div><div class=\"desc_cation\" style=\"padding: 10px 13.1875px; width: 633.609375px; float: left; background: rgb(245, 245, 245);\"><p></p><p>Kết quả sau khi xóa toàn bộ.</p><p></p></div><div class=\"clear\" style=\"font-size: 0px; line-height: 0;\">&nbsp;</div></div></div><div class=\"desc_cation\" style=\"margin-bottom: 10px; padding-bottom: 10px; width: 660.015625px; float: left; font-size: 14px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;\"><p></p><p style=\"text-align: right;\"><strong>Minh Minh</strong><br><em>Ảnh: BI</em></p></div></div></div>', '<span style=\"color: rgb(68, 68, 68); font-family: arial; font-size: 14px; font-weight: bold; line-height: 18px; background-color: rgb(255, 255, 255);\">Khi các thành viên tra cứu trên thanh tìm kiếm, Facebook sẽ tự động lưu lại những từ khóa này và có thể gây rắc rối cho người dùng.</span>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `created_date`) VALUES
(1, 'admin', 'admin!123', '2015-03-05 16:09:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `tenvideo` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `anhvideo` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `linkvideo` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id_video`, `tenvideo`, `anhvideo`, `linkvideo`) VALUES
(4, 'PHP: Embed videos from link', 'download (13).jpg', 'oIowZiM41kQ'),
(5, 'Mua Hàng Qua Mạng, Vui Sống Mỗi Ngày', 'download (14).jpg', 'mjdzLb8JTGQ'),
(6, 'Mua hàng trực tuyến nước ngoài - Giaonhan247.com', 'mqdefault.jpg', 'vfNZ64IzN7w'),
(7, ' Người Việt CHI GẦN 3 tỷ USD mua hàng qua mạng trong năm 2014', 'mqdefault (1).jpg', 'kgoZhzLeLOY'),
(8, 'Mua sắm trực tuyến- Sự lựa chọn thông minh của người tiêu dùng', 'mqdefault (2).jpg', 'S0zaH5-gPtA'),
(9, 'Mới 30% người tiêu dùng hài lòng khi mua hàng qua mạng', 'mqdefault (3).jpg', 'z0Gzo4tstwI');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_id` (`cart_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Chỉ mục cho bảng `hieu`
--
ALTER TABLE `hieu`
  ADD PRIMARY KEY (`hieu_id`);

--
-- Chỉ mục cho bảng `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`loai_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`id_baiviet`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT cho bảng `hieu`
--
ALTER TABLE `hieu`
  MODIFY `hieu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT cho bảng `loai`
--
ALTER TABLE `loai`
  MODIFY `loai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `id_baiviet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD CONSTRAINT `cart_detail_ibfk_1` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Cơ sở dữ liệu: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Đang đổ dữ liệu cho bảng `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"angular\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Đang đổ dữ liệu cho bảng `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'aa', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"columns_priv\",\"column_stats\",\"db\",\"event\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"ndb_binlog_index\",\"plugin\",\"proc\",\"procs_priv\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"table_structure[]\":[\"columns_priv\",\"column_stats\",\"db\",\"event\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"ndb_binlog_index\",\"plugin\",\"proc\",\"procs_priv\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"table_data[]\":[\"columns_priv\",\"column_stats\",\"db\",\"event\",\"func\",\"general_log\",\"gtid_slave_pos\",\"help_category\",\"help_keyword\",\"help_relation\",\"help_topic\",\"host\",\"index_stats\",\"innodb_index_stats\",\"innodb_table_stats\",\"ndb_binlog_index\",\"plugin\",\"proc\",\"procs_priv\",\"proxies_priv\",\"roles_mapping\",\"servers\",\"slave_master_info\",\"slave_relay_log_info\",\"slave_worker_info\",\"slow_log\",\"tables_priv\",\"table_stats\",\"time_zone\",\"time_zone_leap_second\",\"time_zone_name\",\"time_zone_transition\",\"time_zone_transition_type\",\"user\"],\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@\",\"latex_structure_continued_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@\",\"latex_data_continued_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(2, 'root', 'database', 'acc', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":\"acc_tbl\",\"table_structure[]\":\"acc_tbl\",\"table_data[]\":\"acc_tbl\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@\",\"latex_structure_continued_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@\",\"latex_data_continued_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}'),
(3, 'root', 'server', 'trac_nghiem', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"acc_db\",\"eee\",\"phpmyadmin\",\"test_app\",\"webphukiendt\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@\",\"latex_structure_continued_caption\":\"Cáº¥u trÃºc cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@\",\"latex_data_continued_caption\":\"Ná»™i dung cá»§a báº£ng @TABLE@ (cÃ²n ná»¯a)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"excel_columns\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_use_transaction\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Đang đổ dữ liệu cho bảng `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'user', 'table', 'test_app', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Đang đổ dữ liệu cho bảng `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"test_app\",\"table\":\"student\"},{\"db\":\"test_app\",\"table\":\"test\"},{\"db\":\"test_app\",\"table\":\"history\"},{\"db\":\"test_app\",\"table\":\"user\"},{\"db\":\"test_app\",\"table\":\"high_score\"},{\"db\":\"test_app\",\"table\":\"review\"},{\"db\":\"test_app\",\"table\":\"teacher\"},{\"db\":\"test_app\",\"table\":\"hight_score\"},{\"db\":\"acc_db\",\"table\":\"acc_tbl\"},{\"db\":\"test_app\",\"table\":\"tbscore\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Đang đổ dữ liệu cho bảng `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'test_app', 'history', '{\"sorted_col\":\"`history`.`subject` ASC\"}', '2018-09-30 18:55:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Đang đổ dữ liệu cho bảng `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-08-24 15:18:16', '{\"lang\":\"vi\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Chỉ mục cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Chỉ mục cho bảng `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Chỉ mục cho bảng `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Chỉ mục cho bảng `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Chỉ mục cho bảng `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Chỉ mục cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Chỉ mục cho bảng `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Chỉ mục cho bảng `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Chỉ mục cho bảng `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Chỉ mục cho bảng `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Chỉ mục cho bảng `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Chỉ mục cho bảng `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Cơ sở dữ liệu: `test_app`
--
CREATE DATABASE IF NOT EXISTS `test_app` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test_app`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `high_score`
--

CREATE TABLE `high_score` (
  `id` int(11) NOT NULL,
  `std_name` text NOT NULL,
  `std_code` text,
  `score` text NOT NULL,
  `subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `high_score`
--

INSERT INTO `high_score` (`id`, `std_name`, `std_code`, `score`, `subject`) VALUES
(8, 'Trần Đình Công', '66dcht22447', '10', 'Tin học'),
(9, 'Trần Đình Công', '66dcht22447', '20', 'Tin học'),
(10, 'Tạ Quốc Hoàng', '66dcht12345', '20', 'Tin học'),
(11, 'Trần Đình Công', '66dcht22447', '0', 'Tin học'),
(12, 'Trần Đình Công', '66dcht22447', '0', 'Tin học'),
(13, 'Trần Đình Công', '66dcht22447', '0', 'Tin học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `exam_code` text NOT NULL,
  `level` text NOT NULL,
  `date` text NOT NULL,
  `score` text NOT NULL,
  `std_name` varchar(200) NOT NULL,
  `std_code` varchar(200) NOT NULL,
  `subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `history`
--

INSERT INTO `history` (`id`, `exam_code`, `level`, `date`, `score`, `std_name`, `std_code`, `subject`) VALUES
(29, '1', '1', '01:11:28 01/10/2018', '10', 'Trần Đình Công', '66dcht22447', 'Tin học'),
(30, '3', '1', '01:12:31 01/10/2018', '20', 'Trần Đình Công', '66dcht22447', 'Tin học'),
(34, '3', '1', '01:52:51 01/10/2018', '20', 'Tạ Quốc Hoàng', '66dcht12345', 'Tin học'),
(35, '3', '1', '01:54:55 01/10/2018', '20', 'Tạ Quốc Hoàng', '66dcht12345', 'Tin học'),
(36, '3', '1', '01:59:28 01/10/2018', '20', 'Tạ Quốc Hoàng', '66dcht12345', 'Tin học'),
(37, '3', '1', '01:59:40 01/10/2018', '20', 'Tạ Quốc Hoàng', '66dcht12345', 'Tin học'),
(38, '1', '1', '07:23:58 01/10/2018', '0', 'Trần Đình Công', '66dcht22447', 'Tin học'),
(39, '3', '1', '08:28:38 01/10/2018', '0', 'Trần Đình Công', '66dcht22447', 'Tin học'),
(40, '5', '2', '12:02:19 07/10/2018', '0', 'Trần Đình Công', '66dcht22447', 'Tin học');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `construct` text NOT NULL,
  `word` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `std_name` text NOT NULL,
  `std_code` varchar(200) NOT NULL,
  `std_add` text NOT NULL,
  `std_phone` text NOT NULL,
  `std_birthday` date NOT NULL,
  `std_class` text NOT NULL,
  `std_gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`id`, `std_name`, `std_code`, `std_add`, `std_phone`, `std_birthday`, `std_class`, `std_gender`) VALUES
(1, 'Trần Đình Công', '66dcht22447', 'Số 38, Nghách 108, ngõ 68 Triều Khúc Thanh Xuân Hà Nội', '0123456789', '1997-08-23', '66dcht23', ''),
(2, 'Tạ Quốc Hoàng', '66dcht12345', 'Nghệ An', '0987654321', '2018-09-01', '66dcht21', ''),
(3, 'Trần Tiến Truyền', '66dcht23255', 'daclak', '0999945844', '2018-09-15', '66dcht23', ''),
(12, 'test', '66dcht2222', 'Ha Noi', '00000000', '0000-00-00', '', 'nam'),
(14, 'Tran Hoang', '66dcht1212', '', '', '0000-00-00', '66dcht21', 'nam'),
(15, 'Trân Chân', '66dcht0000', '', '', '0000-00-00', '66dcht123', 'nam'),
(17, 'aaaa', '1111', '', '', '0000-00-00', '1111', 'nam'),
(18, 'nguyen van a', '66dcht2213', 'ha noi', '01697774758', '0000-00-00', '66dcht23', 'nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `tch_name` text NOT NULL,
  `tch_code` text NOT NULL,
  `tch_add` text NOT NULL,
  `tch_phone` text NOT NULL,
  `tch_birthday` text NOT NULL,
  `tch_gender` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `teacher`
--

INSERT INTO `teacher` (`id`, `tch_name`, `tch_code`, `tch_add`, `tch_phone`, `tch_birthday`, `tch_gender`) VALUES
(1, 'Lê chí Luận', 'gvht12345', 'Thanh Hóa', '0123456789', '', 'Nam'),
(4, 'Lê Thanh Tấn', 'gvht11111', 'Hà Nội', '', '', 'nam'),
(5, 'Nguyễn Thi Vân Anh', 'gvht00000', 'Hà Nội', '', '', 'nữ'),
(6, 'Lê Trung Kiên', 'gvht11111', 'Thọ Xuân, Đan phượng, Hà nội', '', '', 'nam');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans_a` text NOT NULL,
  `ans_b` text NOT NULL,
  `ans_c` text NOT NULL,
  `result` text NOT NULL,
  `num_exam` text NOT NULL,
  `level` text NOT NULL,
  `subject` text NOT NULL,
  `teacher_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `test`
--

INSERT INTO `test` (`id`, `question`, `ans_a`, `ans_b`, `ans_c`, `result`, `num_exam`, `level`, `subject`, `teacher_code`) VALUES
(1, '________ mô tả một dịch vụ đám mây mà chỉ có thể được truy cập bởi một số lượng người dùng hạn chế.', 'Data Center', 'Private Cloud', 'Virtualization', 'B', '1', '1', 'Tin học', 'teacher'),
(2, 'When a car pulled out in front of her, Jane did well not to ...... control of her bicycle.', 'miss', 'lose', 'fail', 'B', '3', '1', 'Tiếng anh', 'teacher'),
(4, 'Khái niệm nào trong điện toán đám mây sau đây liên quan đến việc tổng hợp và chia sẻ tài nguyên trên ?', 'Đa hình (Polymorphism)', 'Trìu tượng (Abstraction)', 'Ảo hóa (Virtualization)', 'C', '3', '1', 'Tin học', 'gvht11111'),
(5, 'Dịch vụ nào dưới đây là dịch vụ nền tảng của Amazon?', 'Azure', 'AWS', 'Cloudera', 'B', '2', '1', 'Tin học', 'gvht11111'),
(6, 'Có bao nhiêu mô hình dịch vụ của điện toán đám mây?', '1', '2', '3', 'C', '5', '2', 'Tin học', 'gvht12345'),
(7, 'Khái niệm nào trong điện toán đám mây sau đây liên quan đến việc tổng hợp và chia sẻ tài nguyên trên ?', 'Đa hình (Polymorphism)', 'Trìu tượng (Abstraction)', 'Ảo hóa (Virtualization)', 'C', '5', '2', 'Tin học', 'gvht12345'),
(8, 'test', '1', '2', '3', 'A', 'md2', '1', 'Tin học', 'gvht12345'),
(11, 'tet000111', '1', '2', '3', 'A', 'md2', '1', 'Tin há»c', 'gvht12345'),
(12, 'Kiểu kiến trúc ảo hóa nào chạy trên phần cứng máy chủ?', 'Bare metal Hypervisor', 'Hosted Hypervisor', 'Hybrid Hypervisor', 'A', '3', '3', 'Tin học', 'gvht11111'),
(13, 'Dịch vụ nào dưới đây là dịch vụ IaaS?', 'EC2', 'EC1', 'Hybrid', 'A', '2', '3', 'Tin học', 'gvht11111'),
(14, '___ cho phép xử lý hàng loạt, làm tăng tốc độ xử lý các ứng dụng', 'Khả năng mở rộng', 'Độ tin cậy', 'Tính đàn hồi', 'A', '3', '3', 'Tin học', 'gvht11111'),
(15, '________ có nhiều đặc điểm của mô hình điện toán đám mây?', 'Internet', 'Softwares', 'Web Service.', 'A', '3', '2', 'Tin học', 'gvht11111'),
(16, '________ mô tả một mô hình phân tán, trong đó ứng dụng được lưu trữ bởi một nhà cung cấp dịch vụ và cung cấp cho người dùng.', 'Infrastructure-as-a-Service (IaaS)', 'Platform-as-a-Service (PaaS)', 'Software-as-a-Service (SaaS)', 'C', '2', '3', 'Tin học', 'gvht11111');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `type`) VALUES
(1, 'admin', '123', 0),
(2, '66dcht22447', '000', 2),
(3, 'gvht12345', '123', 1),
(4, '66dcht12345', '123', 2),
(5, '66dcht23255', '123', 2),
(6, '66dcht1212', '123', 2),
(7, 'gvht11111', '123', 1),
(8, '66dcht0000', '123', 2),
(9, '2342', '123', 2),
(10, '1111', '123', 2),
(11, 'gvht00000', '123', 1),
(12, '66dcht2213', '123', 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `high_score`
--
ALTER TABLE `high_score`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `high_score`
--
ALTER TABLE `high_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT cho bảng `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT cho bảng `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT cho bảng `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;--
-- Cơ sở dữ liệu: `webphukiendt`
--
CREATE DATABASE IF NOT EXISTS `webphukiendt` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `webphukiendt`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`) VALUES
(1, 'admin', 'hieuadmin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `fullname` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `fullname`, `createdate`) VALUES
(1, '0', '2017-04-28 16:49:42'),
(2, '0', '2017-04-28 16:51:15'),
(3, '0', '2017-04-28 16:53:53'),
(4, 'Hiáº¿u', '2017-04-28 16:54:34'),
(5, 'Hiáº¿u', '2017-04-29 02:12:53'),
(6, 'Hiáº¿u', '2017-05-01 06:58:25'),
(7, 'Hiáº¿u', '2017-05-01 10:16:28'),
(8, 'Hiáº¿u', '2017-05-01 10:17:28'),
(9, 'Hiáº¿u', '2017-05-01 11:15:23'),
(10, 'admin', '2017-05-01 11:42:20'),
(11, 'admin', '2017-05-01 11:45:21'),
(12, 'admin', '2017-05-03 14:20:16'),
(13, 'admin', '2017-05-04 02:53:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_detail`
--

CREATE TABLE `cart_detail` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL,
  `price` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cart_detail`
--

INSERT INTO `cart_detail` (`id`, `cart_id`, `product_id`, `quantity`, `price`) VALUES
(1, 1, 62, 0, '0'),
(2, 2, 60, 1, '50'),
(3, 2, 61, 1, '50'),
(4, 3, 45, 5, '60'),
(5, 4, 39, 1, '50'),
(6, 5, 62, 1, '50'),
(7, 6, 38, 1, '50'),
(8, 6, 39, 1, '50'),
(9, 6, 45, 1, '60'),
(10, 7, 40, 1, '50'),
(11, 7, 48, 1, '60'),
(12, 8, 48, 1, '60,000'),
(13, 9, 84, 7, '199000'),
(14, 10, 81, 5, '1290000'),
(15, 10, 79, 3, '1990000'),
(16, 10, 65, 1, '199'),
(17, 11, 83, 3, '199000'),
(18, 12, 86, 1, '27000000'),
(19, 12, 67, 8, '249900'),
(20, 12, 85, 1, '12000000'),
(21, 12, 72, 1, '40000'),
(22, 13, 86, 3, '27000000'),
(23, 13, 84, 1, '199000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangky`
--

CREATE TABLE `dangky` (
  `id_khachhang` int(11) NOT NULL,
  `tenkhachhang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachinhan` varchar(200) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `dangky`
--

INSERT INTO `dangky` (`id_khachhang`, `tenkhachhang`, `email`, `matkhau`, `dienthoai`, `diachinhan`) VALUES
(33, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(34, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(35, 'Hiáº¿u', 'admin', 'doimatkhau', 3, '3'),
(36, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(37, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(38, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(39, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(40, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(41, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(42, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(43, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 909090909, '2'),
(44, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(45, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(46, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(47, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(48, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(49, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(50, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(51, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(52, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(53, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(54, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(55, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 5435, '5'),
(56, 'TrÆ°Æ¡ng Ngá»c Táº¥n Hiáº¿u', 'admin', 'doimatkhau', 1222, '1'),
(57, '', 'admin', 'doimatkhau', 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `hinhanhsp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_sp`, `hinhanhsp`) VALUES
(23, 60, 'featured-section-new-to-imac_2x1493467732.jpg'),
(24, 60, 'image0011493467732.png'),
(25, 60, 'image001_21493467732.jpg'),
(26, 60, 'image001_111493467732.jpg'),
(29, 63, '5190001_sa (1) - Copy1493468586.jpg'),
(30, 63, '5190001_sa (1)1493468586.jpg'),
(31, 63, '1466960633738_19141493468586.jpg'),
(32, 63, '1466960633738_19141493468706.jpg'),
(33, 63, 'featured-section-new-to-imac_2x1493468926.jpg'),
(34, 63, '5190001_sa (1) - Copy1493469597.jpg'),
(38, 61, '1466960639886_19201493470147.jpg'),
(43, 62, '5190001_sa (1) - Copy1493471267.jpg'),
(44, 62, '5190001_sa (1)1493471267.jpg'),
(45, 62, 'featured-section-new-to-imac_2x1493471267.jpg'),
(46, 51, '5190001_sa (1) - Copy1493612642.jpg'),
(47, 51, '5190001_sa (1)1493612643.jpg'),
(48, 45, '5190001_sa (1) - Copy1493616068.jpg'),
(49, 45, '5190001_sa (1)1493616068.jpg'),
(50, 45, '1466960633738_19141493616068.jpg'),
(51, 85, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493695704.jpg'),
(52, 85, '3-4a620da2-d3d1-46b3-82b7-6522066a48ed1493695704.jpg'),
(53, 85, 'canon-eos-1d-x-1-1-min1493695704.jpg'),
(54, 85, 'canon-eos-1d-x-2-1-min1493695704.jpg'),
(55, 86, '2-a89056cf-a3ca-4d58-952e-5dcfaaae8d8b1493696681.jpg'),
(56, 86, 'canon-6d-1-1-min1493696682.jpg'),
(57, 86, 'canon-eos-1d-x-2-1-min1493696682.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hieusp`
--

CREATE TABLE `hieusp` (
  `idhieusp` int(11) NOT NULL,
  `tenhieusp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hieusp`
--

INSERT INTO `hieusp` (`idhieusp`, `tenhieusp`, `tinhtrang`) VALUES
(1, 'Sony', '1'),
(3, 'Byz', '1'),
(4, 'Ramax', '1'),
(5, 'Dudao', '1'),
(6, 'Niken', '1'),
(7, 'Piseen', '1'),
(8, 'Noko', '1'),
(9, 'Vukas', '1'),
(10, 'Basuse', '1'),
(11, 'Samsung', '1'),
(12, 'fasion', '1'),
(13, 'Äá»™c quyá»n', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisp`
--

CREATE TABLE `loaisp` (
  `idloaisp` int(11) NOT NULL,
  `tenloaisp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisp`
--

INSERT INTO `loaisp` (`idloaisp`, `tenloaisp`, `tinhtrang`) VALUES
(2, 'Cá»§ sáº¡c', '1'),
(4, 'á»p lÆ°ng Iphone', '1'),
(8, 'Gáº­p chá»¥p áº£nh', '1'),
(9, 'Pin Ä‘iá»‡n thoáº¡i', '1'),
(10, 'Sáº¡c dá»± phÃ²ng', '1'),
(11, 'DÃ¡n trong suá»‘t', '1'),
(12, 'DÃ¡n cÆ°á»ng lá»±c', '1'),
(13, 'Bá»™ sáº¡c', '1'),
(14, 'Bao da hÃ£ng', '1'),
(15, 'DÃ¢y sáº¡c,cÃ¡p sáº¡c', '1'),
(16, 'á»p lÆ°ng Samsung', '1'),
(17, 'Loa nghe nháº¡c', '1'),
(18, 'Tai nghe head', '1'),
(19, 'Thiáº¿t bá»‹ an ninh', '1'),
(20, 'Tháº» nhá»› USB', '1'),
(21, 'Thiáº¿t bá»‹ máº¡ng', '1'),
(22, 'Sáº£n pháº©m khÃ¡c', '1'),
(23, 'loai 1', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `idsanpham` int(11) NOT NULL,
  `tensp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `masp` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giadexuat` float NOT NULL,
  `giagiam` float NOT NULL,
  `soluong` int(11) NOT NULL,
  `loaisp` int(11) NOT NULL,
  `nhasx` int(11) NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensp`, `masp`, `hinhanh`, `giadexuat`, `giagiam`, `soluong`, `loaisp`, `nhasx`, `tinhtrang`, `noidung`) VALUES
(37, 'iphone 7', 'M01', 'iphone-7-plus-red-128gb-400x460.png', 89, 89, 1, 5, 4, '1', 'rrrrrrr'),
(38, 'Macbook Pro', 'M50', 'featured-section-new-to-imac_2x.jpg', 500000, 39, 1, 9, 3, '1', '<p>Ä‘áº¹p</p>'),
(39, 'iphone 7', 'M50', 'iphone-7-plus-red-128gb-400x460.png', 3200000, 39, 1, 12, 3, '1', '<p>Ä‘áº¹p</p>'),
(40, 'Laptop Core ', 'M50', '5190001_sa (1).jpg', 1800000, 39, 1, 10, 1, '1', '<p>Ä‘áº¹p</p>'),
(44, 'Oppo F3 plus', 'f3plus', 'oppo-f3-plus-pp-300x300.jpg', 230000, 89, 5, 11, 4, '1', '<p>Ä‘áº¹p</p>'),
(45, 'iphone 5 plus 256GB', 'ip5', 'iphone-7-plus-256gb-300x300.jpg', 24000, 60, 6, 11, 3, '1', '<p>Ä‘áº¹p</p>'),
(47, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 180000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>'),
(48, 'Sony 9', 'm8', 'sony-xperia-xzs-400x460.png', 20000, 8, 4, 11, 1, '1', '<p>Äáº¹p</p>'),
(65, 'Phá»¥ Kiá»‡n Bá»™ Combo cÃ¡p + Sáº¡c iphone 4', 'h7', 'znp1369155325-150x150.jpg', 199900, 60, 4, 2, 1, '1', '<p>Äáº¹p</p>'),
(66, 'Phá»¥ Kiá»‡n Bá»™ combo CÃ¡p + Sáº¡c iPad 2/3/4', 'y7', '7-700x390.jpg', 299000, 199, 3, 2, 4, '1', '<p>Äáº¹p</p>'),
(67, 'Phá»¥ Kiá»‡n Bá»™ Combo CÃ¡p + Sáº¡c iPhone 5/6/6+ ( Pisen)', 'j8', 'znp1369155325-150x150.jpg', 249900, 199, 6, 2, 1, '1', '<p>Äáº¹p</p>'),
(68, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb (1).jpg', 849000, 699, 2, 4, 4, '1', '<p>Äáº¹p</p>'),
(69, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb (2).jpg', 679000, 699, 2, 4, 8, '1', '<p>Äáº¹p</p>'),
(70, 'Bao da Clear View Galaxy S8 Plus Standing 2017 chÃ­nh hÃ£ng ', 'b6', 'timthumb.jpg', 779000, 699, 2, 4, 7, '1', '<p>Äáº¹p</p>'),
(71, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', 'gay ts gap gon dau 5_200x200.jpg', 400000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>'),
(72, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', 'gay tu suong mini 2_200x200.jpg', 40000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>'),
(73, 'Gáº­y tá»± sÆ°á»›ng mini lÃ³t ná»‰', 'k8', '3112575548_1184480815_200x200.jpg', 60000, 30, 6, 8, 1, '1', '<p>Äáº¹p</p>'),
(74, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-5763535-574477648cb589dfd49642531b777ca5-product.jpg', 159000, 149, 0, 9, 5, '1', '<p>Äáº¹p</p>'),
(75, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-6282355-202a86ba4c35ce1b5941fab448818358-product.jpg', 179000, 149, 2, 9, 7, '1', '<p>Äáº¹p</p>'),
(76, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-7576025-31419a2ed9a0cb8fb604b2f1590a52e7-product.jpg', 189000, 149, 2, 9, 7, '1', '<p>Äáº¹p</p>'),
(77, 'Pin Äiá»‡n Thoáº¡i Lg Blt6', 'p7', 'image-9776025-284b2d6e9c4f8a725360e92b737582f7-product.jpg', 215000, 149, 2, 9, 9, '1', '<p>Äáº¹p</p>'),
(78, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', '0a7-sac-du-phong-romoss-polymoss-10000mah-gia-re.jpg', 199000, 189, 3, 10, 8, '1', '<p>Äáº¹p</p>'),
(79, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', '797-sac-du-phong-genai-trang-10000mah-gia-re.jpg', 1990000, 189, 3, 10, 8, '1', '<p>Äáº¹p</p>'),
(80, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 159000, 189, 3, 10, 8, '1', '<p>Äáº¹p</p>'),
(81, 'Sáº C Dá»° PHÃ’NG GENAI TRáº®NG 10.000MAH', 'j8', 'd8e-pin-sac-xiaomi-10000mah-gen-2-gia-re.jpg', 1290000, 189, 3, 10, 10, '1', '<p>Äáº¹p</p>'),
(82, 'Bá»™ Sáº¡c T2H5', 'b6', '2.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(83, 'Bá»™ Sáº¡c T2H5', 'b6', '3.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(84, 'Bá»™ Sáº¡c T2H5', 'b6', 'download.jpg', 199000, 199, 0, 13, 1, '1', '<p>Äáº¹p</p>'),
(85, 'Canon EOS-1D X', 'canon', 'canon-eos-1d-x-1-1-min.jpg', 12000000, 12000000, 6, 22, 1, '1', '<p>Sáº£n pháº«m h&agrave;ng ch&iacute;nh h&atilde;ng v&agrave; ráº¥t l&agrave; Ä‘áº¹p.</p>'),
(86, 'Canon EOS 6D', 'canon 6d', '3-4a620da2-d3d1-46b3-82b7-6522066a48ed.jpg', 27000000, 27000000, 6, 22, 1, '1', '<p>Äáº¹p</p>'),
(87, 'may cat 123', 'mc123', '8064396-1-hotpink.jpg', 1234, 12, 2, 23, 1, '1', '<p>asfasfa</p>');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tintuc`
--

CREATE TABLE `tintuc` (
  `idtintuc` int(11) NOT NULL,
  `tentintuc` tinytext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matin` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hinhanh` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidung` longtext COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `tinhtrang` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `tintuc`
--

INSERT INTO `tintuc` (`idtintuc`, `tentintuc`, `matin`, `hinhanh`, `noidung`, `tinhtrang`) VALUES
(2, 'Nhiá»u di Ä‘á»™ng bom táº¥n giáº£m giÃ¡ tiá»n triá»‡u trong thÃ¡ng 4', 't2', 'Jet.jpg', 'ThÃ¡ng 4 chá»©ng kiáº¿n biáº¿n Ä‘á»™ng lá»›n vá» giÃ¡ cá»§a nhiá»u di Ä‘á»™ng cao cáº¥p bá»Ÿi Ä‘Ã¢y lÃ  thá»i Ä‘iá»ƒm thá»‹ trÆ°á»ng chÃ o Ä‘Ã³n nhiá»u model Ä‘á»i má»›i.\r\nNhieu di dong bom tan giam gia tien trieu trong thang 4 hinh anh 1\r\niPhone 7, 7 Plus Jet Black (giáº£m 3 triá»‡u Ä‘á»“ng): Tá»« chá»— lÃ  smartphone hot nháº¥t trÃªn thá»‹ trÆ°á»ng, iPhone Jet Black giá» Ä‘Ã¢y trá»Ÿ thÃ nh máº·t hÃ ng áº¿ áº©m, cáº§n giáº£m giÃ¡ Ä‘á»ƒ thanh lÃ½. Tá»« hÃ ng xÃ¡ch tay cho Ä‘áº¿n chÃ­nh hÃ£ng, ngÆ°á»i dÃ¹ng Ä‘á»u Ä‘ang chá»©ng kiáº¿n mÃ n giáº£m giÃ¡ cá»§a nhá»¯ng chiáº¿c iPhone thá»i thÆ°á»£ng nÃ y. CÃ¡c Ä‘áº¡i lÃ½ lá»›n Ä‘ang cÃ´ng bá»‘ chÆ°Æ¡ng trÃ¬nh giáº£m giÃ¡ lÃªn Ä‘áº¿n 3 triá»‡u cho iPhone Jet Black. Cháº³ng háº¡n, iPhone 7 128 GB Jet Black giá» Ä‘Ã¢y cÃ³ giÃ¡ bÃ¡n chá»‰ 18,8 triá»‡u Ä‘á»“ng, 7 Plus lÃ  22,2 triá»‡u Ä‘á»“ng.', '1'),
(4, 'Ufeel Prime ghi Ä‘iá»ƒm vá»›i thiáº¿t káº¿ Ä‘áº¹p, cáº¥u hÃ¬nh tá»‘t', 'h7', 'image001.png', 'Tinh táº¿ vÃ  trang nhÃ£, Ufeel Prime lÃ  thÃ nh viÃªn má»›i nháº¥t trong dÃ²ng Ufeel cÃ³ thiáº¿t káº¿ kim loáº¡i cao cáº¥p vÃ  sang trá»ng.\r\nDÆ°á»›i Ä‘Ã¢y lÃ  má»™t vÃ i Æ°u Ä‘iá»ƒm ná»•i trá»™i cá»§a dÃ²ng smartphone nÃ y.\r\n\r\nThiáº¿t káº¿ sang trá»ng vÃ  lá»‹ch lÃ£m\r\nWiko U-Feel Prime lÃ  báº£n nÃ¢ng cáº¥p cá»§a Wiko U-Feel. Chiáº¿c smartphone nÃ y sá»Ÿ há»¯u nhiá»u nÃ¢ng cáº¥p máº¡nh máº½, káº¿t há»£p cÃ¹ng sáº¯c mÃ u tinh táº¿ - xÃ¡m than, báº¡c vÃ  Ã¡nh kim. KhÃ´ng chá»‰ cÃ³ thiáº¿t káº¿ Ä‘áº¹p máº¯t, mÃ n hÃ¬nh 5 inch Full HD vá»›i Ä‘á»™ phÃ¢n giáº£i lÃªn Ä‘áº¿n 1920 x 1080 pixel sáº½ giÃºp ngÆ°á»i dÃ¹ng chÆ¡i game vÃ  xem phim vá»›i tráº£i nghiá»‡m mÆ°á»£t mÃ .', '1'),
(5, '3 máº«u Ä‘iá»‡n thoáº¡i PhÃ¡p thiáº¿t káº¿ Ä‘áº¹p, giÃ¡ dÆ°á»›i 4 triá»‡u Ä‘á»“ng', 'y6', 'image001_11.jpg', 'Ufeel vÃ  Ufeel Go\r\nSá»Ÿ há»¯u nhiá»u thÃ´ng sá»‘ tÆ°Æ¡ng Ä‘á»“ng, bá»™ Ä‘Ã´i Ufeel vÃ  Ufeel Go lÃ  Ä‘áº¡i diá»‡n hiáº¿m hoi cÃ³ má»©c giÃ¡ dÆ°á»›i 3,999 triá»‡u Ä‘á»“ng sá»Ÿ há»¯u cáº£m biáº¿n vÃ¢n tay. Äiá»ƒm Ä‘áº·c biá»‡t, cáº£m biáº¿n nÃ y cÃ³ kháº£ nÄƒng nháº­n diá»‡n 5 dáº¥u vÃ¢n tay. Vá»›i má»—i ngÃ³n tay khÃ¡c nhau, mÃ¡y sáº½ khá»Ÿi cháº¡y nhá»¯ng á»©ng dá»¥ng riÃªng biá»‡t Ä‘Ã£ gÃ¡n sáºµn.\r\n\r\nMÃ¡y há»— trá»£ 4G, má»Ÿ khÃ³a báº±ng vÃ¢n tay vÃ  cháº¡y Android 6.0 Marshmallow - nhá»¯ng yáº¿u tá»‘ hÃ ng Ä‘áº§u chá»n mua smartphone hiá»‡n nay. Hai thiáº¿t bá»‹ nÃ y Ä‘Æ°á»£c trang bá»‹ thanh RAM 3 GB.', '1');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dangky`
--
ALTER TABLE `dangky`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Chỉ mục cho bảng `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Chỉ mục cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  ADD PRIMARY KEY (`idhieusp`);

--
-- Chỉ mục cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`idloaisp`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsanpham`);

--
-- Chỉ mục cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`idtintuc`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `cart_detail`
--
ALTER TABLE `cart_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `dangky`
--
ALTER TABLE `dangky`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT cho bảng `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT cho bảng `hieusp`
--
ALTER TABLE `hieusp`
  MODIFY `idhieusp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT cho bảng `loaisp`
--
ALTER TABLE `loaisp`
  MODIFY `idloaisp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT cho bảng `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `idtintuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
