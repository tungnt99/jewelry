-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 18, 2022 lúc 03:25 PM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `jewellery`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `account`
--

CREATE TABLE `account` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `account`
--

INSERT INTO `account` (`id`, `email`, `password`, `fullname`, `phoneNo`, `address`, `role_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '9ef9ee5a94d29fbc31c2509e1afb60e8', 'Lê Hoài Nam', '0375877699', 'Hoàng Đan, Tam Dương, Vĩnh Phúc', 1, 'f73362e26ab578aa8c5deb2649679a5c', '2022-05-30 22:17:15', '2022-06-05 10:18:10'),
(2, 'hoainam12121999@gmail.com', 'd9b11768790af31fdfc19cc17e3d5027', 'Lê Hoài Nam', '0375877699', 'Hoàng Đan, Tam Dương, Vĩnh Phúc', 2, '2894e7a8a5857407ba1a2018791b83d6', '2022-06-05 09:10:55', NULL),
(3, 'xuantruong@gmail.com', 'd9b11768790af31fdfc19cc17e3d5027', 'Lê Xuân Trường', '123456789', 'vĩnh phúc', 2, 'a089e7c617feb14804b914a997e89ded', '2022-06-15 17:59:17', NULL),
(4, 'thanhtung99yl@gmail.com', '797038b96dd53f12093aba87c46823d6', 'Tùng Nguyễn Thanh', '0904714322', 'Yên Lũng - An Khánh - Hoài Đức - Hà Nội', 2, '1f66388556c68267c42780a65cbbb44e', '2022-06-18 20:09:41', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `brand`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(4, 'Disney|PNJ'),
(2, 'PNJ'),
(3, 'PNJ Silver'),
(1, 'Style By PNJ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(4, 'Bangle'),
(8, 'Bracelet'),
(5, 'Charm'),
(2, 'Earring'),
(6, 'Necklace'),
(1, 'Ring');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phoneNo` varchar(255) DEFAULT NULL,
  `subject_name` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `feedback`
--

INSERT INTO `feedback` (`id`, `fullname`, `email`, `phoneNo`, `subject_name`, `note`, `created_at`, `status`) VALUES
(1, 'Lê Hoài Nam', 'hoainam12121999@gmail.com', '0375877699', 'test', 'test feedback oke?', '2022-06-04 10:36:31', 'read'),
(2, 'Le Hoai Nam', 'admin@gmail.com', '123', 'test', 'aaa', '2022-06-11 10:59:29', 'read');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gemstone`
--

CREATE TABLE `gemstone` (
  `id` int(11) NOT NULL,
  `gemstone_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `gemstone`
--

INSERT INTO `gemstone` (`id`, `gemstone_name`) VALUES
(4, 'Akoya Pearl'),
(2, 'Citrine'),
(7, 'CZ (xoàn mỹ)'),
(8, 'Diamond'),
(9, 'ECZ'),
(3, 'Emerald'),
(13, 'Freshwater Pearl'),
(14, 'Moon'),
(15, 'Ngọc Trai Swarovski'),
(6, 'No Gemstone'),
(12, 'Pearl'),
(1, 'Ruby'),
(5, 'Sapphire'),
(10, 'Synthetic'),
(11, 'Topaz');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `material`
--

CREATE TABLE `material` (
  `id` int(11) NOT NULL,
  `material_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `material`
--

INSERT INTO `material` (`id`, `material_name`) VALUES
(1, 'Gold'),
(2, 'Platinum'),
(3, 'Silver');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `material_detail`
--

CREATE TABLE `material_detail` (
  `id` int(11) NOT NULL,
  `material_id` int(11) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `material_detail`
--

INSERT INTO `material_detail` (`id`, `material_id`, `color`, `age`) VALUES
(3, 1, 'White Gold', '10K'),
(5, 1, 'White Gold', '18K'),
(6, 1, 'White Gold', '14K'),
(7, 2, '', ''),
(8, 3, '', ''),
(9, 1, 'Traditional color', '18K'),
(10, 1, 'Traditional Gold', '14K'),
(11, 1, 'Traditional Gold', '24K');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `size`, `price`, `quantity`) VALUES
(3, 3, 34, 12, 169.65, 1),
(4, 3, 35, 13, 385.05, 3),
(11, 6, 36, 15, 733.9, 1),
(12, 7, 132, 0, 52.25, 7);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `soft_delete` int(11) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `title`, `description`, `thumbnail`, `price`, `gender`, `category_id`, `brand_id`, `material_id`, `created_at`, `updated_at`, `soft_delete`, `deleted_at`) VALUES
(17, 'Silver Ring STYLE By PNJ - A1', 'Not possessing brilliant rhinestone details but wearing a unique design with creative lines, the  ring STYLE By PNJ will transform with her personality and personality.', './public/img/product/a1-1.png', 37.25, 'Female', 1, 1, 8, '2022-06-12 10:48:04', '2022-06-14 12:33:40', 0, NULL),
(18, 'Silver Ring STYLE By PNJ  - A2', '', './public/img/product/a2-1.png', 34.75, 'Female', 1, 1, 8, '2022-06-12 10:49:31', NULL, 0, NULL),
(19, 'Silver ring with stones STYLE By PNJ - A3', 'Explore and let its vibrant, colorful designs inspire you to tell your own unique story in an exciting way. Possessing a unique design with sparkling colorful stone accents, the ring silver STYLE By PNJ will enhance the personality and sophistication of the pretty girl.', './public/img/product/a3-1.png', 38.25, 'Female', 1, 1, 8, '2022-06-12 10:55:51', NULL, 0, NULL),
(20, 'Silver ring with PNJSilver heart-shaped stone - A4', 'With a trendy design and stones attached around the ring surface on 92.5 sterling silver, PNJSilver brings a ring with a youthful yet unconventional beauty, helping girls to stand out.', './public/img/product/a4-1.png', 49.75, 'Female', 1, 3, 8, '2022-06-12 10:58:08', NULL, 0, NULL),
(21, '18K White Gold Diamond Ring PNJ - A5', 'There is nothing more beautiful and magnificent than a diamond – a precious stone that celebrates perfection, purity and is a symbol of luxury. Possessing diamond accents and 18K gold material on luxurious design, creating a noble appearance for PNJ Diamond Ring.', './public/img/product/a5-1.png', 2371.4, 'Female', 1, 2, 5, '2022-06-12 10:59:58', '2022-06-12 11:00:25', 0, NULL),
(22, '18K Gold Ring with CZ PNJ - A6', 'Taking advantage of the sparkling white color of  CZ stone  and creative design, PNJ brings an elegant 14K gold ring like the beautiful beauty of proud ladies.', './public/img/product/a6-1.png', 272.15, 'Female', 1, 2, 9, '2022-06-12 11:03:10', '2022-06-12 11:03:35', 0, NULL),
(23, '10K white gold ring with stones ECZ PNJ - A7', 'Ring, 10K white gold material, set with ECZ stones 1 5.5ly + 12 1.5ly pieces + 8 1.25ly pieces + 2 1.75ly pieces.', './public/img/product/a7-1.png', 209.1, 'Female', 1, 2, 3, '2022-06-12 11:06:05', NULL, 0, NULL),
(24, '18K Italian White Gold Ring with CZ PNJ - A8', '', './public/img/product/a8-1.png', 315.05, 'Female', 1, 2, 5, '2022-06-12 11:07:47', NULL, 0, NULL),
(25, 'Platinum Wedding Ring with Diamond PNJ - A9', 'Overcoming the honing journey at the hands of artisans, diamonds are associated with the symbol of faithful love, lipstick. Besides, with the combination of Platinum material and the sparkling and pure beauty of diamond, PNJ brings a modern wedding ring but still retains the inherent traditional features.', './public/img/product/a9-1.png', 738.45, 'Unisex', 1, 2, 7, '2022-06-12 11:11:08', NULL, 0, NULL),
(26, 'PNJ Diamond Diamond Men\'s Platinum Wedding Ring - A10', 'With the appearance of many elegant designs,  wedding rings diamonds are not only favored by women but also by boys for their wedding day. Taking advantage of the brilliant platinum luster along with a clever variation of masculine designs and diamonds with 57 precise cutouts, the PNJ diamond wedding ring becomes a declaration of love, marking a turning point. big in life.', './public/img/product/a10-1.png', 897.7, 'Male', 1, 2, 7, '2022-06-12 11:13:27', NULL, 0, NULL),
(27, 'PNJ Platinum Diamond Ring Case - A11', '', './public/img/product/a11-1.png', 1105.65, 'Female', 1, 2, 7, '2022-06-12 11:15:30', NULL, 0, NULL),
(28, 'PNJ Platinum Diamond Ring Case - A12', '', './public/img/product/a12-1.png', 842.6, 'Female', 1, 2, 7, '2022-06-12 11:16:51', NULL, 0, NULL),
(29, 'PNJ Platinum Diamond Wedding Ring - A13', 'Overcoming the honing journey at the hands of artisans, diamonds are associated with the symbol of faithful love, lipstick. Besides, by combining the material  Platinum with the sparkling and pure beauty of diamond, PNJ brings a modern wedding ring but still retains the inherent traditional features.', './public/img/product/a13-1.png', 721.8, 'Female', 1, 2, 7, '2022-06-12 11:19:11', NULL, 0, NULL),
(30, 'Silver Ring STYLE By PNJ DNA - A14', 'With a trendy design and stones attached around the ring surface on 92.5 silver material, STYLE By PNJ brings a  ring  with a youthful but equally disruptive beauty, helping the girls to stand out.', './public/img/product/a14-1.png', 32.7, 'Female', 1, 1, 8, '2022-06-12 11:21:31', NULL, 0, NULL),
(31, 'Silver ring with stones PNJSilver The Language of Flowers - A15', 'With a trendy design and stones attached around the ring surface on 92.5 silver material, PNJSilver brings a  ring  with a youthful but equally disruptive beauty, helping the girls to stand out.', './public/img/product/a15-1.png', 44.75, 'Female', 1, 3, 8, '2022-06-12 11:23:18', NULL, 0, NULL),
(32, 'Silver Ring with Disney stones|PNJ Snow White & the Seven Dwarfs - A16', '', './public/img/product/a16-1.png', 29.1, 'Female', 1, 4, 8, '2022-06-12 11:26:13', '2022-06-12 11:26:39', 0, NULL),
(33, '18K Gold Ring with CZ PNJ - A17', 'The luxury of 18K gold material combined with the sparkling brightness of CZ stone has created a pure and luxurious beauty for PNJ ring products. Possessing a delicate design,  PNJ Gold Ring  honors the beauty of Vietnamese women, and at the same time shows class and radiance to the owner.', './public/img/product/a17-1.png', 145.95, 'Female', 1, 2, 9, '2022-06-12 11:28:28', NULL, 0, NULL),
(34, '10K white gold ring with stones ECZ PNJ - A18', 'Possessing a rather small design and quite simple but equally sophisticated design, the PNJ ring with ECZ stones is accented with soft curves made of 10K white gold material, bringing a gentle, charming beauty. fit for every hand.', './public/img/product/a18-1.png', 169.65, 'Female', 1, 2, 3, '2022-06-12 11:30:13', NULL, 0, NULL),
(35, '18K Gold Ring with CZ PNJ - A19', '', './public/img/product/a19-1.png', 385.05, 'Female', 1, 2, 9, '2022-06-12 11:34:33', NULL, 0, NULL),
(36, 'PNJ Platinum Diamond Wedding Ring - A20', '', './public/img/product/a20-1.png', 733.9, 'Female', 1, 2, 7, '2022-06-12 11:35:45', NULL, 0, NULL),
(37, '18K Italian Gold Bracelet PNJ - C1', 'In addition, with sophisticated design, she will be surprised when combined with outfits such as office suits or street dresses. With the highlights on the products, PNJ believes that she will truly shine and stand out when wearing them.', './public/img/product/c1-1.png', 1096.2, 'Female', 4, 2, 9, '2022-06-12 11:42:09', NULL, 0, NULL),
(38, '14K White Gold Bracelet with Topaz PNJ - C2', 'The most sought-after and popular design of PNJ today, the 14K gold bracelet  is cared for to every detail by Topaz stones. PNJ uses Topaz gemstones with the color of hope green and 14K gold to honor the elegance of women - a beauty like a star, brightening up the whole sky.', './public/img/product/c2-1.png', 1484.6, 'Female', 4, 2, 6, '2022-06-12 11:50:59', '2022-06-12 11:51:23', 0, NULL),
(39, '18K Italian Gold Bracelet PNJ - C3', 'The  PNJ Bracelet  possesses the rigidity of finely crafted 18K Italian gold, combining molding, engraving and engraving details according to Italian jewelry technology, creating a shiny and luxurious appearance. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c3-1.png', 853.3, 'Female', 4, 2, 9, '2022-06-12 11:55:38', NULL, 0, NULL),
(40, '18K Gold Bracelet with Citrine PNJ - C4', 'Citrine is known as a stone symbolizing wisdom, bringing clarity of mind and prosperity to the owner when attached to jewelry. A bit of gold from Citrine and brilliant 18K yellow gold, the bangle  for her wrist is a self-rewarding gift for her career development journey.', './public/img/product/c4-1.png', 1354.85, 'Female', 4, 2, 9, '2022-06-12 11:57:12', NULL, 0, NULL),
(41, '18K Italian White Gold Bracelet PNJ - C5', 'The  PNJ Bracelet  possesses the rigidity of finely crafted 18K Italian gold, combining molding, engraving and engraving details according to Italian jewelry technology, creating a shiny and luxurious appearance. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c5-1.png', 714.3, 'Female', 4, 2, 5, '2022-06-12 11:59:20', NULL, 0, NULL),
(42, '18K Gold Bracelet PNJ - C6', 'The  PNJ Bracelet  possesses the sturdiness of  18K gold  which is finely crafted, combining delicate flower details, creating nobility and elegance. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c6-1.png', 877.5, 'Female', 4, 2, 9, '2022-06-12 12:00:41', NULL, 0, NULL),
(43, '18K Italian Gold Bracelet PNJ - C7', 'The  bracelet PNJ owns the solidity of 18K Italian gold, which is finely crafted, combining details of casting, pearling and engraving according to Italian jewelry technology, creating a shiny and luxurious look. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c7-1.png', 634.5, 'Female', 4, 2, 9, '2022-06-12 12:02:04', NULL, 0, NULL),
(44, 'Freshwater PNJ Pearl Pearl 14K Gold Bracelet - C8', 'PNJ pearl jewelry such as PNJ locket with pearls, PNJ rings with pearls, PNJ necklaces with pearls, etc. will be the most meaningful and wonderful gifts for the women you love.', './public/img/product/c8-1.png', 364.5, 'Female', 4, 2, 10, '2022-06-12 12:04:05', '2022-06-12 12:06:59', 0, NULL),
(45, 'Bracelet 18K Gold with Ruby stones PNJ - C9', 'PNJ Shopping Online will take the product with the actual selling price at the store corresponding to the specific weight of gold, report it back to the customer and enjoy the preferential policy online.', './public/img/product/c9-1.png', 1316.25, 'Female', 4, 2, 9, '2022-06-12 12:06:03', NULL, 0, NULL),
(46, 'Silver bracelet with stones PNJSilver - C10', '', './public/img/product/c10-1.png', 44.25, 'Female', 4, 3, 8, '2022-06-12 12:08:06', '2022-06-12 12:08:43', 0, NULL),
(47, 'Lắc tay Bạc PNJSilver - C11', '', './public/img/product/c11-1.png', 57.25, 'Female', 4, 3, 8, '2022-06-12 12:10:07', NULL, 0, NULL),
(48, 'PNJSilver Italian Silver Bracelet - C12', 'The  bracelet  from PNJSilver is crafted from highly functional Italian silver combined with an innovative design. This helps the product to blow trendy colors and personality into the style of young people. Also because of its high applicability, currently, Italian silver is being loved by many women.', './public/img/product/c12-1.png', 82.25, 'Female', 4, 3, 8, '2022-06-12 13:13:30', NULL, 0, NULL),
(49, 'Disney | PNJ Frozen - C13', 'Possessing a design that is not too strange but extremely unique, the  bracelet Disney|PNJ made from 92.5 silver material puts on a youthful, innovative and \"high fashion\" look.', './public/img/product/c13-1.png', 59.25, 'Female', 4, 4, 8, '2022-06-12 13:15:40', NULL, 0, NULL),
(50, 'Disney|PNJ Snow White & the Seven Dwarfs Silver Bracelet - C14', '', './public/img/product/c14-1.png', 37.25, 'Female', 4, 4, 8, '2022-06-12 13:18:07', NULL, 0, NULL),
(51, 'Disney|PNJ Beauty & The Beas Silver Bracelet - C15', '', './public/img/product/c15-1.png', 54.75, 'Female', 4, 4, 8, '2022-06-12 13:19:28', NULL, 0, NULL),
(52, 'PNJ Platinum Bracelet - C16', 'The  PNJ Bracelet  possesses the sturdiness of platinum, is finely crafted, combines unique pearl molding details, creating a shiny and luxurious look. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c16-1.png', 238.05, 'Female', 4, 2, 7, '2022-06-12 13:20:42', NULL, 0, NULL),
(53, 'PNJ Platinum Bracelet - C17', 'The  PNJ Bracelet  possesses the sturdiness of platinum, is finely crafted, combines unique pearl molding details, creating a shiny and luxurious look. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.', './public/img/product/c17-1.png', 292.05, 'Female', 4, 2, 7, '2022-06-12 13:22:05', NULL, 0, NULL),
(54, 'Silver bracelet with stones PNJSilver - C18', 'If you are looking for something new for your silver jewelry, come to PNJSilver. Currently we have thousands of product sets that can satisfy your preferences. PNJSilver silver bracelet has a trendy style, very suitable for modern women.', './public/img/product/c18-1.png', 60.1, 'Female', 4, 3, 8, '2022-06-12 13:23:30', NULL, 0, NULL),
(55, 'PNJSilver Italian Silver Bracelet - C19', 'The  bracelet  from PNJSilver is crafted from highly functional Italian silver combined with an innovative design. This helps the product to blow trendy colors and personality into the style of young people. Also because of its high applicability, today, \"Italian silver\" is being loved by many women.', './public/img/product/c19-1.png', 75.75, 'Female', 4, 3, 8, '2022-06-12 13:25:00', NULL, 0, NULL),
(56, 'PNJSilver The Language of Flowers silver bracelet - C20', 'The bracelet from PNJSilver is crafted from highly functional silver combined with an innovative design. This helps the product to blow trendy colors and personality into the style of young people. Also because of its high applicability, silver is currently being favored by many women.', './public/img/product/c20-1.png', 51.75, 'Female', 4, 3, 8, '2022-06-12 13:26:00', NULL, 0, NULL),
(57, '24K Gold Bracelet PNJ - E1', 'The PNJ Gold Bracelet  possesses the hardness of 24K gold, which is finely crafted, combining molding, engraving and engraving details, creating a shiny and luxurious appearance. With a textured side and a smooth side, ladies The bride can be worn in 2 different ways to match the outfit on the wedding day', './public/img/product/e1-1.png', 875.65, 'Female', 6, 2, 11, '2022-06-12 13:34:51', '2022-06-12 13:36:13', 0, NULL),
(58, '24K Gold Wedding Bracelets PNJ - E2', '', './public/img/product/e2-1.png', 909.25, 'Female', 6, 2, 11, '2022-06-12 13:43:54', NULL, 0, NULL),
(59, '24K Gold Wedding Bracelets PNJ  - E3', 'The PNJ Gold Bracelet  possesses the hardness of 24K gold, which is finely crafted, combining molding, engraving and engraving details, creating a shiny and luxurious appearance. With a textured side and a smooth side, ladies The bride can be worn in 2 different ways to match the outfit on the wedding day', './public/img/product/e3-1.png', 589.9, 'Female', 6, 2, 11, '2022-06-12 13:45:30', NULL, 0, NULL),
(60, '18K White Italian Gold Bracelet PNJ - E4', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e4-1.png', 1199.5, 'Female', 6, 2, 5, '2022-06-12 13:46:39', NULL, 0, NULL),
(61, '18K White Italian Gold Bracelet PNJ - E5', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e5-1.png', 1064.5, 'Female', 6, 2, 5, '2022-06-12 13:49:12', NULL, 0, NULL),
(62, '18K White Italian Gold Bracelet PNJ - E6', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e6-1.png', 1319.5, 'Female', 6, 2, 5, '2022-06-12 13:50:30', NULL, 0, NULL),
(63, '18K White Italian Gold Bracelet PNJ - E7', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. Next from PNJ will be proud of her', './public/img/product/e7-1.png', 1134.5, 'Female', 6, 2, 5, '2022-06-12 13:52:14', NULL, 0, NULL),
(64, '18K White Italian Gold Bracelet PNJ - E8', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness, design The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e8-1.png', 1699.5, 'Female', 6, 2, 5, '2022-06-12 13:54:30', NULL, 0, NULL),
(65, '18K White Italian Gold Bracelet PNJ - E9', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e9-1.png', 1749.5, 'Female', 6, 2, 5, '2022-06-12 13:56:29', NULL, 0, NULL),
(66, '18K White Italian Gold Bracelet PNJ - E11', 'Possessing a unique design with a modern design, the 18K Italian gold bracelet not only has a disruptive beauty but also adorns the trendy features The bracelet is made from 18K Italian gold and scores with its uniqueness and design. The design from PNJ will proudly shine with her every step of the way. Possessing a slim design, the product will highlight her proud beauty.', './public/img/product/e11-1.png', 949.5, 'Female', 6, 2, 5, '2022-06-12 13:59:17', NULL, 0, NULL),
(67, 'Silver Bracelet with stones STYLE by PNJ DNA - E12', '', './public/img/product/e12-1.png', 167.25, 'Female', 6, 1, 8, '2022-06-12 14:00:49', '2022-06-12 14:03:59', 0, NULL),
(68, 'PNJSilver Italian Silver Bracelet with wavy style - E14', 'Silver bracelet owns a unique design, modernized and dressed in fashion, liberal Crafted from Italian silver material, the PNJSilver bracelet possesses the beauty of youthfulness in accordance with the style of modern people. girl', './public/img/product/e14-1.png', 59.75, 'Female', 6, 3, 8, '2022-06-12 14:03:13', NULL, 0, NULL),
(69, 'Italian Silver Bracelet PNJSilver - E13', 'Featured right from the unique design, the Italian silver bracelet from PNJSilver is sure to bring her a dynamic style with lots of bold mix & match ideas to show off her personality! Crafted from high-quality Italian silver and inspired by festive season design, PNJSilver puts on an artistic and distinctive shirt.', './public/img/product/e13-1.png', 167.25, 'Female', 6, 3, 8, '2022-06-12 14:04:52', NULL, 0, NULL),
(70, 'Italian Silver Bracelet PNJSilver - E15', '', './public/img/product/e15-1.png', 102.25, 'Female', 6, 3, 8, '2022-06-12 15:59:07', NULL, 0, NULL),
(71, 'Italian Silver Bracelet PNJSilver - E16', 'Featured right from the unique design, the Italian silver bracelet from PNJSilver is sure to bring her a dynamic style with lots of bold mix & match ideas to show off her personality! Crafted from high-quality Italian silver and inspired by festive season design, PNJSilver puts on an artistic and distinctive shirt.', './public/img/product/e16-2.jpg', 85.9, 'Female', 6, 3, 8, '2022-06-12 16:00:47', NULL, 0, NULL),
(72, 'Italian Silver Bracelet PNJSilver - E17', 'Featured right from the unique design, the Italian silver bracelet from PNJSilver is sure to bring her a dynamic style with lots of bold mix & match ideas to show off her personality! Crafted from high-quality Italian silver and inspired by festive season design, PNJSilver puts on an artistic and distinctive shirt.', './public/img/product/e17-1.png', 120.75, 'Female', 6, 3, 8, '2022-06-12 16:02:11', NULL, 0, NULL),
(73, 'Italian Silver Bracelet PNJSilver - E18', 'Silver bracelet owns a unique design, modernized and dressed in fashion, liberal Crafted from Italian silver material, the PNJSilver bracelet possesses the beauty of youthfulness in accordance with the style of modern people. girl', './public/img/product/e18-1.png', 71.55, 'Female', 6, 3, 8, '2022-06-12 16:03:19', NULL, 0, NULL),
(74, 'Italian Silver Bracelet PNJSilver Mazza - E19', 'Silver bracelet owns a unique design, modernized and dressed in fashion, liberal Crafted from Italian silver material, the PNJSilver bracelet possesses the beauty of youthfulness in accordance with the style of modern people. girl', './public/img/product/e19-1.png', 122.75, 'Female', 6, 3, 8, '2022-06-12 16:04:26', NULL, 0, NULL),
(75, 'Italian Silver Bracelet PNJSilver Mazza - E20', '', './public/img/product/e20-1.png', 120.55, 'Female', 6, 3, 8, '2022-06-12 16:05:21', NULL, 0, NULL),
(76, '18K Italian white gold earrings with CZ stones PNJ - B1', '', './public/img/product/b1-1.png', 283.7, 'Unisex', 2, 2, 5, '2022-06-12 16:10:31', NULL, 0, NULL),
(77, '10K Gold Earrings with ECZ PNJ Gemstones Mother\'s Flowers - B2', 'The earrings are a jewelry line with a unique combination of 10K gold and ECZ stones that meet the highest standards of quality and precision in every cut. Possessing a design from the symbol of a peony integrated into a heart, the product in the Mother\'s Flower Collection  carries the meaning of love for a mother, which is kept in the heart by children.', './public/img/product/b2-1.png', 241.15, 'Female', 2, 2, 10, '2022-06-12 16:13:24', NULL, 0, NULL),
(78, '10K Gold Earrings with ECZ PNJ Gemstones Mother\'s Flowers - B3', 'Like peonies, the earrings in the  Mother\'s Flower Collection have a 3D shape for the petals that gives a soft feel to the product and a combination of ECZ stones to create accents for the pistil.', './public/img/product/b3-1.png', 191.4, 'Female', 2, 2, 10, '2022-06-12 16:16:31', NULL, 0, NULL),
(79, '10K white gold earrings with stones ECZ PNJ - B4', 'The earrings  are exquisitely crafted by jewelers by being crafted from 10K gold with 41.6% pure gold. And ECZ stones of the highest standard of quality and precision in every cut, skillfully placed on the earrings, make the product even more brilliant and beautiful.', './public/img/product/b4-1.png', 309.5, 'Female', 2, 2, 3, '2022-06-12 16:19:08', NULL, 0, NULL),
(80, 'ECZ PNJ Trinh Collection 10K Gold Earrings with stones - B5', '', './public/img/product/b5-1.png', 121.45, 'Female', 2, 2, 10, '2022-06-12 16:20:15', NULL, 0, NULL),
(81, '10K white gold earrings with stones ECZ PNJ - B6', 'The earrings  are exquisitely crafted by jewelers by being crafted from 10K gold with 41.6% pure gold. And ECZ stones of the highest standard of quality and precision in every cut, skillfully placed on the earrings, make the product even more brilliant and beautiful.', './public/img/product/b6-1.png', 240.85, 'Female', 2, 2, 3, '2022-06-12 16:21:16', NULL, 0, NULL),
(82, '18K Gold Earrings PNJ  - B7', 'Simulating the Asian perfection of a woman, PNJ puts all her heart and love into every detail on her new earrings. PNJ launched an exquisite design, a pair of earrings, which is a harmonious blend of design and standard 18K gold material.', './public/img/product/b7-1.png', 236.55, 'Female', 2, 2, 9, '2022-06-12 16:24:31', NULL, 0, NULL),
(83, '18K Italian White Gold Earrings PNJ - B8', 'Refreshing the classic standard of 18K gold color with modern design,  PNJ earrings have a fresh look, yet are just right to brighten up the lady\'s optimistic beauty. The harmony and harmony follows each improvised line, creating an overall beautiful pair of earrings.', './public/img/product/b8-1.png', 201.2, 'Female', 2, 2, 5, '2022-06-12 16:25:55', NULL, 0, NULL),
(84, '18K Italian Gold Earrings PNJ - B9', 'Refreshing the classic standard of 18K Italian gold with modern design,  PNJ earrings have a fresh look, yet are just right to brighten up the optimistic beauty of the lady. The harmony and harmony follows each improvised line, creating an overall beautiful pair of earrings.', './public/img/product/b9-1.png', 309.5, 'Female', 2, 2, 9, '2022-06-12 16:27:34', NULL, 0, NULL),
(85, '10K white gold earrings with stones ECZ PNJ - B10', 'Bringing perfect beauty not inferior to diamonds, the gold ring with the highlight  ECZ stone  will be the \"assistant\" to enhance the beauty of every girl who prefers modern and elegant style.', './public/img/product/b10-1.png', 206.55, 'Female', 2, 2, 3, '2022-06-12 16:28:30', NULL, 0, NULL),
(86, 'PNJ Platinum Earrings - B11', '', './public/img/product/b11-1.png', 141.75, 'Female', 2, 2, 7, '2022-06-12 16:29:30', NULL, 0, NULL),
(87, 'PNJ Platinum Earrings - B12', 'Simulating the Asian perfection of a woman, PNJ puts all her heart and love into every detail on the new earrings.. PNJ launched a delicate earrings design, which is a harmonious blend of design and sophisticated platinum material.', './public/img/product/b12-1.png', 177.75, 'Female', 2, 2, 7, '2022-06-12 16:31:11', NULL, 0, NULL),
(88, 'PNJ Platinum Earrings - B13', 'Simulating the Asian perfection of a woman, PNJ puts all her heart and love into every detail on the new earrings.. PNJ launched a delicate earrings design, which is a harmonious blend of design and sophisticated platinum material.', './public/img/product/b13-1.png', 431.55, 'Female', 2, 2, 7, '2022-06-12 16:32:56', NULL, 0, NULL),
(89, 'PNJ Platinum Earrings - B14', 'Simulating the Asian perfection of a woman, PNJ puts all her heart and love into every detail on her new earrings. PNJ launched a delicate earrings design, which is a harmonious blend of design and sophisticated platinum material.', './public/img/product/b14-1.png', 170.55, 'Female', 2, 2, 7, '2022-06-12 16:34:54', NULL, 0, NULL),
(90, 'PNJ Platinum Earrings - B15', '', './public/img/product/b15-1.png', 269.55, 'Female', 2, 2, 7, '2022-06-12 16:35:44', NULL, 0, NULL),
(91, 'Mother\'s Flower PNJSilver Pearl Earring - B16', 'Keeping the concept of the peony symbolism combined with heart details as small details,  silver earrings  in  Mother\'s Flower Collection  bring a sense of femininity and tenderness to the owner.', './public/img/product/b16-1.png', 32.75, 'Female', 2, 3, 8, '2022-06-12 16:36:50', NULL, 0, NULL),
(92, 'Silver Pearl Earrings PNJSilver - B17', 'Silver Pearl Earrings PNJSilver - B17', './public/img/product/b17-1.png', 39.75, 'Female', 2, 3, 8, '2022-06-12 16:38:22', NULL, 0, NULL),
(93, 'PNJSilver Mother\'s Flower Earrings Silver - B18', 'Keeping the concept of the peony symbolism combined with heart details as small details,  silver earrings  in  Mother\'s Flower Collection  bring a sense of femininity and tenderness to the owner.', './public/img/product/b18-1.png', 34.75, 'Female', 2, 3, 8, '2022-06-12 16:39:42', NULL, 0, NULL),
(94, 'Silver Pearl Earrings STYLE by PNJ Sexy - B19', '', './public/img/product/b19-1.png', 39.75, 'Female', 2, 1, 8, '2022-06-12 16:42:09', NULL, 0, NULL),
(95, 'Silver earrings with stones PNJSilver - B20', 'Still emphasizing the creativity of the girls\' style, PNJSilver brings  earrings  made of 92.5 silver with stone accents. Dressed in a delicate design and adorned with sparkling white stones, the earrings bring a seductive beauty, helping girls become radiant and attractive.', './public/img/product/b20-1.png', 52.75, 'Female', 2, 3, 8, '2022-06-12 16:43:14', NULL, 0, NULL),
(96, '14K White Gold Diamond Pendant PNJ - D1', '', './public/img/product/d1-1.png', 1323.9, 'Female', 5, 2, 6, '2022-06-12 16:53:32', '2022-06-15 22:15:00', 0, NULL),
(97, '18K Italian White Gold Pendant with CZ PNJ - D2', '', './public/img/product/d2-1.png', 433.5, 'Female', 5, 2, 5, '2022-06-12 16:54:42', NULL, 0, NULL),
(98, '18K Italian White Gold Pendant with stones CZ PNJ - D3', '', './public/img/product/d3-1.png', 387.05, 'Female', 5, 2, 5, '2022-06-12 16:55:48', NULL, 0, NULL),
(99, '18K Italian White Gold Pendant PNJ - D4', '', './public/img/product/d4-1.png', 320.55, 'Female', 5, 2, 5, '2022-06-12 16:57:10', NULL, 0, NULL),
(100, '18K Italian White Gold Pendant PNJ - D5', '', './public/img/product/d5-1.png', 140.65, 'Female', 5, 2, 5, '2022-06-12 16:59:29', NULL, 0, NULL),
(101, '14K White Gold Pendant with Topaz PNJ - D6', '', './public/img/product/d6-1.png', 900, 'Female', 5, 2, 6, '2022-06-12 17:00:27', NULL, 0, NULL),
(102, '18K White Gold Diamond Pendant PNJ - D7', '', './public/img/product/d7-1.png', 2690, 'Female', 5, 2, 5, '2022-06-12 17:02:05', NULL, 0, NULL),
(103, '18K Italian White Gold Pendant PNJ - D8', 'Refreshing the classic standard of 18K Italian gold with a modern design, the PNJ earrings have a fresh, yet well-fitted look to brighten up the lady\'s optimistic beauty. The harmony and harmony follows each improvised line, creating an overall beautiful pair of earrings.', './public/img/product/d8-1.png', 563.4, 'Female', 5, 2, 5, '2022-06-12 17:03:40', NULL, 0, NULL),
(104, 'Silver Pendant with Pearl PNJSilver - D9', '', './public/img/product/d9-1.png', 44.75, 'Female', 5, 3, 8, '2022-06-12 17:05:25', '2022-06-12 17:05:59', 0, NULL),
(105, 'Silver pendant with stones PNJSilver - D10', '', './public/img/product/d10-1.png', 14.5, 'Unisex', 5, 3, 8, '2022-06-12 17:07:01', NULL, 0, NULL),
(106, 'Silver pendant with stones PNJSilver - D11', 'Finished with aesthetic beauty by sparkling stones hand-set on each piece of jewelry, the pendant is crafted from high quality 92.5 sterling silver combined with the sparkle of white stones, like like a flower blooming on the surface beautifully and delicately.', './public/img/product/d11-2.png', 58.25, 'Female', 5, 3, 8, '2022-06-12 17:08:12', NULL, 0, NULL),
(107, 'Silver pendant with PNJSilver swan stone - D12', 'Finished with aesthetic beauty by sparkling stones hand-set on each piece of jewelry, the pendant is crafted from high quality 92.5 sterling silver combined with the sparkle of white stones, like like a flower blooming on the surface beautifully and delicately.', './public/img/product/d12-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:09:17', NULL, 0, NULL),
(108, 'Silver pendant with PNJSilver stone in the shape of a cat - D13', 'Finished with aesthetic beauty by sparkling stones hand-set on each piece of jewelry, the pendant is crafted from high quality 92.5 sterling silver combined with the sparkle of white stones, like like a flower blooming on the surface beautifully and delicately.', './public/img/product/d13-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:10:10', NULL, 0, NULL),
(109, 'Silver pendant with PNJSilver stone in the shape of an owl - D14', 'Honoring her delicate beauty with a classic silver glitter pendant with a white color of the attached stone, PNJSilver is sure to be what you need to always shine and attract everyone. The look.', './public/img/product/d14-2.png', 52.5, 'Female', 5, 3, 8, '2022-06-12 17:11:20', NULL, 0, NULL),
(110, 'Silver Pendant PNJSilver - D15', 'Pendant possess a modern design with the beauty of youth and fashion. Crafted from high-grade 92.5 silver, PNJSilver will both bring durability and bring beautiful colors over time.', './public/img/product/d15-1.png', 19.75, 'Female', 5, 3, 8, '2022-06-12 17:12:32', NULL, 0, NULL),
(111, 'PNJ Platinum Pendant - D16', '', './public/img/product/d16-2.png', 260.55, 'Female', 5, 2, 7, '2022-06-12 17:13:46', NULL, 0, NULL),
(112, '14K White Gold Diamond Pendant Pendant - D17', '', './public/img/product/d17-1.png', 1544.4, 'Female', 5, 2, 6, '2022-06-12 17:14:42', NULL, 0, NULL),
(113, '14K gold pendant with Moon stones - D18', '', './public/img/product/d18-1.png', 304.15, 'Female', 5, 2, 9, '2022-06-12 17:16:03', '2022-06-12 17:16:48', 0, NULL),
(114, 'Freshwater PNJ Pearl Pendant 14K Gold Coin Pendant - D19', 'Freshwater pearls, also known as freshwater pearls, are perfect for those who want beautiful round pearls with a mother-of-pearl layer on a reasonable budget. Coupled with a balanced 14k gold content in crafting, her jewelry will have a special sophistication.', './public/img/product/d19-1.png', 189.5, 'Female', 5, 2, 9, '2022-06-12 17:18:04', NULL, 0, NULL),
(115, '24K Gold Pendant with CZ PNJ - D20', 'Bringing both classic and modern features with the clarity of lines, while maintaining the softness and improvisation between 24K gold and the unique design - the pendant appears to be elegant and attractive. Impressive like a mature woman with elegant style.', './public/img/product/d20-1.png', 311, 'Female', 5, 2, 11, '2022-06-12 17:19:10', NULL, 0, NULL),
(116, 'PNJ Ruby PNJ 18K Gold Bracelet - F1', 'Exclusively for girls who love colored stone jewelry, Ruby stone\r\n   The noble red color will definitely be a jewelry model not to be missed. The\r\n   The bracelet has a unique and fashionable design. The Ruby master stone is cut\r\n   meticulous, careful to enhance the characteristic color of the stone and gold material\r\n   18K, making the product conquer even the most personality and fastidious girls.', './public/img/product/f1-1.png', 2607.3, 'Female', 8, 2, 9, '2022-06-16 14:34:57', NULL, 0, NULL),
(117, '18K Gold Bracelet with Citrine PNJ Spring Colors - F2', 'Join PNJ to add a bit of fashion to her wrist with an 18K gold bracelet. The delicate combination between the brilliant iridescence of gold and the striking orange-yellow color of the Citrine stone on the unique design has created a luxurious and modern beauty for the watch, helping her to always shine in every movement. If the ring adorns a lovely hand, the ring will enhance the delicate beauty of her wrist. Extremely graceful and elegant with a design that is both classic and modern, with the perfect combination of 18K gold and orange yellow of Citrine, creating a beautiful jewelry, honoring the beauty of women. Vietnamese women, help you spread your charm.', './public/img/product/f2-1.png', 1675.1, 'Female', 8, 2, 9, '2022-06-16 14:36:48', '2022-06-16 14:37:58', 0, NULL),
(118, 'Silver children\'s bracelet PNJSilver - F3', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Decorate a little cute, a little out of the way and a little pretty for your baby with&nbsp;</span><a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-bac/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">silver bracelet PNJSilver</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">. Dressed in a simple design combining high-quality silver, the silver bracelet helps your baby look lovely and avoid some bad things.</span><br></p>', './public/img/product/f3-1.png', 22.25, 'Child', 8, 3, 8, '2022-06-16 14:40:27', NULL, 0, NULL),
(119, '18K Gold Bracelet with Ruby PNJ Spring Colors - F4', '<p><a href=\"https://www.pnj.com.vn/sac-xuan/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Spring Color Collection</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;was launched with gold jewelry products with luxurious designs exclusively for ladies in the spring. With curving design lines highlighted by delicate white stones, combined with luxurious red ruby accents and crafted on 18K gold material, it has put on a noble shirt for the bracelet. Surely, this will be a piece of jewelry that honors the typical classic beauty mixed with a bit of modernity of the ladies.</span><br></p>', './public/img/product/f4-1.png', 153.9, 'Female', 8, 2, 9, '2022-06-16 14:44:05', NULL, 0, NULL),
(120, '18K Italian white gold bracelet with stones CZ PNJ - F5', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">If silver accessories adorn your youthful beauty, gold jewelry will help you look sophisticated, luxurious and aristocratic. By using 18K Italian white gold and high-dispersion CZ stone, it brings a trendy and luxurious shine to the wearer. In addition, PNJ jewelry also helps ladies become more confident in life.</span><br></p>', './public/img/product/f5-1.png', 1339.1, 'Female', 8, 2, 5, '2022-06-16 14:46:00', NULL, 0, NULL),
(121, 'Silver monkey bracelet PNJSilver - F6', '', './public/img/product/f6-1.png', 22.5, 'Child', 8, 3, 8, '2022-06-16 14:47:19', NULL, 0, NULL),
(122, 'PNJSilver duck-shaped silver children\'s bracelet - F7', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Children\'s jewelry is always very concerned by parents because there are currently many products on the market that do not guarantee quality. But for PNJSilver silver bracelets, mothers can rest assured because PNJSilver\'s silver has a clear origin and origin, so it is very safe for children\'s health and skin.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Children\'s jewelry is always very concerned by parents because there are currently many products on the market that do not guarantee quality. But for PNJSilver silver bracelets, mothers can rest assured because PNJSilver\'s silver has a clear origin and origin, so it is very safe for children\'s health and skin.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Children\'s jewelry is always very concerned by parents because there are currently many products on the market that do not guarantee quality. But for PNJSilver silver bracelets, mothers can rest assured because PNJSilver\'s silver has a clear origin and origin, so it is very safe for children\'s health and skin.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span></p>', './public/img/product/f7-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 15:21:42', '2022-06-16 15:26:52', 0, NULL),
(123, '18K Italian White Gold Bracelet PNJ - F8', '<p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 14px;\">Women\'s bracelets,</p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 14px;\">18K yellow Italian white gold material, no stones attached.</p>', './public/img/product/f8-1.png', 945.4, 'Female', 8, 2, 5, '2022-06-16 16:32:25', NULL, 0, NULL),
(124, '18K Gold Bracelet with CZ PNJ - F9', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Elegant and graceful with these&nbsp;</span><a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">PNJ bracelet</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;fashion and luxury. Besides, the bracelet is also adorned with youthful and trendy beauty with CZ stones, making her gentle beauty become sweeter and more fashionable than ever..</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Crafted from 18K gold, the talented hands of the jeweler PNJ have portrayed the charm and sophistication of the bracelet. In particular, with the sparkle of CZ stones attached to the ring, it will add elegance and nobility, helping the wearer to shine, attracting every look.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f9-1.png', 1038.85, 'Female', 8, 2, 9, '2022-06-16 16:35:20', NULL, 0, NULL),
(125, 'PNJSilver bee-shaped silver children\'s bracelet - F10', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">In addition to pretty clothes, jewelry is also one of the meaningful gifts that parents always give their little angels. Especially the silver bracelet not only makes the baby look cuter, but also has health benefits.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Immerse yourself in the lovely summer, PNJSilver brand designed a lovely bee-shaped silver bracelet for your baby. Made of high quality 92.5 sterling silver imported from Italy according to world quality standards, parents are completely assured of the health and soft skin of their babies.!</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">The design of the bracelet is quite simple with a smooth design, perfectly combined with the cutely depicted bee detail, adorning the lovely beauty of the angels. With PNJSilver silver bracelet, parents can easily mix with any outfit to keep their baby cute in everyone\'s eyes..</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f10-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 16:38:17', NULL, 0, NULL),
(126, '10K White Gold Bracelet with ECZ PNJ Gemstones in Pure Flower Colors - F11', '', './public/img/product/f11-1.png', 846.85, 'Female', 8, 2, 3, '2022-06-16 16:39:57', NULL, 0, NULL),
(127, 'PNJSilver silver children\'s bracelet - F12', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Besides the lovely costumes of the children, mothers can combine with silver bracelet accessories to help the baby feel more excited. PNJSilver children\'s silver bracelet is made of high quality 92.5 silver material, imported from Italy, the quality meets world standards. PNJSilver bracelets not only help the angels stay beautiful, but also ensure the safety of children\'s soft and sensitive skin..</span></p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 15px; color: rgb(70, 70, 70); line-height: 24px; text-align: justify;\">Children\'s jewelry accessories, in addition to the material factor, the design is also quite interested by parents. PNJSilver silver bracelet has a new and unique design. The beginning and the end of the PNJSilver children\'s silver bracelet are rounded, smooth, non-contiguous and create space to fit the baby\'s hand. Not only helps parents easily manipulate when wearing for babies, but also brings a sense of comfort and safety for the angels when playing.</p><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px; font-family: Roboto, sans-serif; font-size: 15px; color: rgb(70, 70, 70); line-height: 24px; text-align: justify;\">The plus point for PNJSilver children\'s silver bracelet is the lovely orange wing pattern, helping the little angels to immerse themselves in the summer joyfully and happily.</p><p><br></p>', './public/img/product/f12-1.png', 25.5, 'Child', 8, 3, 8, '2022-06-16 16:41:15', NULL, 0, NULL),
(128, 'DIY silver charm bracelet PNJSilver - F13', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">A charm bracelet represents the love of discovery and frequent travel with charms. The special thing is that choosing a charm for your bracelet can be done continuously and stretches like a collection. Gradually you will have a whole collection with many different colors, sizes, designs, themes to make the most beautiful bracelets and necklaces with your own personal style.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Each charm is small, but carries with it the stories, feelings, hopes and deep memories of someone. Each charm bead is like a diary page, helping you always remember your own memorable memories and milestones. PNJSilver DIY charm bracelet with stylish silver color, along with design touches that break the way young girls can coordinate with outfits and make them feel more beautiful and charming.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><br></p>', './public/img/product/f13-1.png', 27.5, 'Female', 8, 3, 8, '2022-06-16 16:43:24', '2022-06-16 16:47:10', 0, NULL),
(129, '18K Gold Bracelet with CZ stones PNJ - F14', '', './public/img/product/f14-1.png', 85.65, 'Female', 8, 2, 9, '2022-06-16 16:49:46', NULL, 0, NULL),
(130, '10K white gold bracelet with stones ECZ PNJ Rose - F15', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Inspired by the beauty and sweetness of roses, world fashion trends,&nbsp;</span><a href=\"https://www.pnj.com.vn/bo-suu-tap-trang-suc/trang-suc-vang/hoa-hong-rose/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">BST Rose PNJ</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">&nbsp;Including stylized designs from rose images, using trendy ECZ Swarovski stones, pearls not only enhance beauty, charm, and femininity, but also praise the youthful and attractive kiss mind. woman\'s scent.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Bringing pure and gentle beauty, charm and beauty, rose motifs are being fully utilized by fashionistas in each style. mix &amp; match.&nbsp;</span><a href=\"https://www.pnj.com.vn/trang-suc-vang/vong-tay/?features_hash=46-69329\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">10K white gold PNJ bracelet with ECZ stones</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;Being blown to life is not only reflected in the soaring lines in the design but also the unique blend of sparkling gems, winding along the soft curves of the flower shape, harmoniously interwoven. Pure 10K white gold material is a meaningful gift to help women shine and affirm their own style.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f15-1.png', 713.8, 'Female', 8, 2, 3, '2022-06-16 16:51:31', NULL, 0, NULL);
INSERT INTO `product` (`id`, `title`, `description`, `thumbnail`, `price`, `gender`, `category_id`, `brand_id`, `material_id`, `created_at`, `updated_at`, `soft_delete`, `deleted_at`) VALUES
(131, 'PNJSilver Friendzone Breaker silver bracelet in the shape of Love - F16', '<p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\">Derived from the story \"Friendship Belt\" when young people were still hesitant, hesitantly closed themselves in the safety belt of the theory called friendship, or expanded as the struggle \"Attack/ take the initiative or wait?!”, PNJSilver\'s Friendzone Breaker was born, encouraging young people not to hesitate to \"break\" the barriers that have been holding you back for so long. This time, PNJSiver still favors the ability to Mix &amp; Match to create their own fashion style according to their personality. Outlining designs based on small icons such as hearts, keys or fashion blocks, symbols of spring, combined with small pearls following the Minimalist trend, Friendzone Breaker becomes fashionable jewelry versions. The site helps young people \"shock\" their form, breaking down all barriers to live young every moment.</span></p><p><a href=\"https://www.pnj.com.vn/trang-suc-bac/?features_hash=38-19893\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Vòng đeo tay</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;Not only is it a jewelry for girls anymore, today it can also create an impressive and unique highlight of the guys. With the collection Friendzone Breaker comes from the story \"Friendship Belt\" when young people are still hesitant, hesitant to close themselves in the safety belt of the theory called friendship, or expanded as friendship. In the battle of \"Attacking/active or waiting?!\", PNJSilver\'s guys don\'t hesitate to \"break\" the barriers that have been holding you back for so long to create a breakthrough for this year\'s love season.</span></p><p><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Friendzone Breaker is not just in the meaning of \"Friendzone\" as its name suggests. Figuratively, broadly, that \"zone\" is like the limits around the lives of young people, the limit of love, the limit of dreams, the limit of creativity, or the limit of yourself, created by you.</span><br style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">Then what are you waiting for &nbsp;</span><a href=\"https://www.pnj.com.vn/bo-suu-tap-trang-suc/trang-suc-bac/friendzone-breaker/\" style=\"background: rgb(255, 255, 255); font-family: Roboto, sans-serif; font-size: 14px; color: rgb(51, 122, 183); outline: none; cursor: pointer; transition: all 150ms ease 0s; text-align: justify;\">Frienzone Breaker</a><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\">&nbsp;For this new year, ladies and gentlemen, please equip yourself with accessories, take the initiative in style to create your own fashion style.</span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;\"><br></span><span style=\"color: rgb(70, 70, 70); font-family: Roboto, sans-serif; text-align: justify;\"><br></span><br></p>', './public/img/product/f16-1.png', 36.65, 'Female', 8, 3, 8, '2022-06-16 16:53:22', NULL, 0, NULL),
(132, 'High-quality alloy bracelet with stones STYLE By PNJ - F17', '', './public/img/product/f17-1.png', 52.25, 'Female', 8, 1, 7, '2022-06-16 16:54:27', NULL, 0, NULL),
(133, 'High quality alloy bracelet with stones PNJ STYLE x CHOU CHOU - F18', 'Put on the charm, the bracelet &nbsp;&nbsp;PNJ STYLE x CHOU CHOU With pearl accents, it is only a jewelry that enhances the beauty of the owner, but also helps the owner to express his or her own personality. The design is inspired by Chan Bui who is a symbol of young people, overcoming obstacles to assert their own personality, unlike any other model.', './public/img/product/f18-1.png', 54.75, 'Female', 8, 1, 7, '2022-06-16 16:58:38', NULL, 0, NULL),
(134, '24K Gold Wedding Bracelet PNJ - F19', '<div style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px;\">Chiếc&nbsp;<a href=\"https://www.pnj.com.vn/lac-vong-tay/vong-tay/vong-tay-vang/?itm_source=pdp&amp;itm_medium=vongtayvang&amp;itm_campaign=&amp;itm_content=\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(21, 0, 221); outline: none; cursor: pointer; transition: all 150ms ease 0s;\">bracelet PNJ</a>&nbsp;possesses the hardness of 24K gold, which is finely crafted, creating a shiny and luxurious look. With a unique design and sharp metallic luster, the product will enhance the beauty of the ladies.</p></div><div style=\"font-family: Roboto, sans-serif; font-size: 14px;\"><p style=\"margin-bottom: 0px; padding-top: 6px; padding-bottom: 6px;\">In addition, with the sophisticated design of the bracelet, she will be surprised when combined with a red Ao Dai on the big day. With the highlights on the products, PNJ believes that she will truly shine and stand out when wearing them.</p></div>', './public/img/product/f19-1.png', 588.9, 'Female', 8, 2, 11, '2022-06-16 17:01:11', NULL, 0, NULL),
(135, 'Akoya pearl 14K white gold bracelet - F20', 'Taking advantage of the femininity of Akoya Pearl - a gentle gemstone, and the sophistication of 14K gold, PNJ has brought a bracelet masterpiece with an ethereal style and helped her show off her trendy style.', './public/img/product/f20-1.png', 1825.55, 'Female', 8, 2, 6, '2022-06-16 17:03:54', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_gemstone`
--

CREATE TABLE `product_gemstone` (
  `product_id` int(11) DEFAULT NULL,
  `gemstone_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_gemstone`
--

INSERT INTO `product_gemstone` (`product_id`, `gemstone_id`) VALUES
(17, 6),
(18, 7),
(19, 7),
(20, 7),
(21, 8),
(22, 7),
(23, 7),
(25, 8),
(26, 8),
(27, 6),
(28, 6),
(29, 8),
(30, 7),
(31, 7),
(32, 10),
(33, 7),
(34, 9),
(35, 7),
(36, 8),
(37, 6),
(38, 11),
(39, 6),
(40, 2),
(41, 6),
(42, 6),
(43, 6),
(44, 12),
(45, 1),
(46, 6),
(47, 6),
(48, 6),
(49, 10),
(50, 10),
(51, 10),
(52, 6),
(53, 6),
(54, 7),
(55, 6),
(56, 7),
(57, 6),
(58, 6),
(59, 6),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 6),
(66, 6),
(67, 6),
(68, 6),
(69, 6),
(70, 6),
(71, 6),
(72, 6),
(73, 6),
(74, 6),
(75, 6),
(76, 7),
(77, 7),
(78, 7),
(79, 7),
(80, 7),
(81, 7),
(82, 7),
(85, 7),
(91, 7),
(92, 7),
(93, 7),
(95, 7),
(96, 8),
(97, 7),
(98, 7),
(101, 11),
(102, 8),
(104, 13),
(105, 7),
(106, 7),
(107, 7),
(108, 7),
(109, 7),
(112, 8),
(113, 14),
(114, 13),
(115, 7),
(116, 1),
(117, 2),
(119, 1),
(124, 7),
(126, 7),
(129, 7),
(130, 9),
(132, 7),
(133, 15),
(134, 6),
(135, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_order`
--

CREATE TABLE `product_order` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `status` varchar(30) NOT NULL,
  `canceled_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_order`
--

INSERT INTO `product_order` (`id`, `account_id`, `note`, `order_date`, `status`, `canceled_at`) VALUES
(1, 2, 'mong cửa hàng tiện đường ship cho phần ăn trưa tôi đã đặt ở cửa hàng abc', '2022-06-08 15:16:55', 'Ordered successfully', NULL),
(3, 2, 'tôi muốn thanh toán tại cửa hàng', '2022-06-15 17:36:50', 'ordered successfully', NULL),
(6, 3, 'tôi muốn nhận hàng và thanh toán tại nhà. vui lòng ship giúp tôi', '2022-06-15 18:00:25', 'Ordered successfully', NULL),
(7, 4, NULL, NULL, 'Pending', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `product_id` int(11) DEFAULT NULL,
  `size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`product_id`, `size_id`) VALUES
(17, 7),
(17, 9),
(19, 6),
(19, 7),
(19, 8),
(19, 9),
(20, 5),
(20, 6),
(20, 7),
(20, 8),
(20, 9),
(21, 14),
(22, 5),
(22, 6),
(22, 7),
(22, 8),
(22, 9),
(22, 11),
(22, 12),
(22, 14),
(22, 25),
(22, 26),
(23, 5),
(23, 6),
(23, 7),
(23, 8),
(23, 9),
(23, 10),
(23, 11),
(23, 12),
(23, 15),
(23, 25),
(23, 26),
(25, 5),
(25, 6),
(25, 7),
(25, 8),
(25, 9),
(25, 10),
(25, 11),
(25, 12),
(25, 14),
(25, 25),
(25, 26),
(25, 27),
(25, 28),
(26, 8),
(26, 10),
(26, 11),
(26, 12),
(26, 14),
(26, 15),
(26, 16),
(26, 17),
(26, 18),
(26, 19),
(26, 20),
(27, 5),
(27, 6),
(27, 7),
(27, 8),
(27, 9),
(27, 26),
(28, 5),
(28, 6),
(28, 7),
(28, 8),
(28, 9),
(29, 10),
(29, 11),
(29, 12),
(29, 14),
(29, 15),
(29, 16),
(30, 6),
(30, 7),
(30, 8),
(30, 9),
(31, 5),
(31, 6),
(31, 7),
(31, 8),
(31, 9),
(32, 5),
(32, 6),
(32, 7),
(32, 8),
(32, 10),
(32, 26),
(33, 5),
(33, 6),
(33, 7),
(33, 8),
(33, 9),
(33, 10),
(33, 12),
(33, 15),
(33, 26),
(34, 5),
(34, 6),
(34, 7),
(34, 8),
(34, 9),
(34, 10),
(34, 11),
(34, 12),
(34, 14),
(34, 15),
(34, 16),
(34, 17),
(34, 18),
(34, 25),
(34, 26),
(35, 5),
(35, 6),
(35, 7),
(35, 8),
(35, 9),
(35, 10),
(35, 11),
(35, 12),
(35, 14),
(35, 15),
(35, 16),
(35, 17),
(35, 18),
(35, 25),
(35, 26),
(36, 5),
(36, 6),
(36, 7),
(36, 8),
(36, 9),
(36, 10),
(36, 11),
(36, 12),
(36, 14),
(36, 15),
(36, 16),
(36, 17),
(36, 18),
(37, 29),
(38, 29),
(38, 30),
(38, 32),
(38, 33),
(39, 29),
(40, 29),
(40, 32),
(41, 32),
(42, 29),
(43, 32),
(44, 29),
(44, 32),
(45, 29),
(45, 32),
(46, 35),
(46, 37),
(47, 30),
(47, 31),
(47, 32),
(48, 32),
(49, 29),
(49, 32),
(49, 33),
(50, 37),
(51, 29),
(51, 32),
(51, 33),
(52, 29),
(53, 32),
(54, 29),
(54, 32),
(54, 33),
(54, 34),
(54, 35),
(54, 36),
(55, 29),
(55, 32),
(55, 33),
(56, 29),
(56, 32),
(56, 33),
(57, 38),
(57, 39),
(57, 40),
(57, 41),
(57, 42),
(57, 43),
(57, 44),
(57, 45),
(58, 38),
(58, 39),
(58, 40),
(58, 41),
(58, 42),
(58, 43),
(58, 44),
(58, 45),
(59, 38),
(59, 39),
(59, 40),
(59, 41),
(59, 42),
(59, 43),
(59, 44),
(59, 45),
(60, 38),
(60, 39),
(60, 40),
(60, 41),
(60, 42),
(60, 43),
(60, 44),
(60, 45),
(61, 38),
(61, 39),
(61, 40),
(61, 41),
(61, 42),
(61, 43),
(61, 44),
(61, 45),
(62, 38),
(62, 39),
(62, 40),
(62, 41),
(62, 42),
(62, 43),
(62, 44),
(62, 45),
(63, 38),
(63, 39),
(63, 40),
(63, 41),
(63, 42),
(63, 43),
(63, 44),
(63, 45),
(64, 38),
(64, 39),
(64, 40),
(64, 41),
(64, 42),
(64, 43),
(64, 44),
(64, 45),
(65, 38),
(65, 39),
(65, 40),
(65, 41),
(65, 42),
(65, 44),
(65, 45),
(66, 38),
(66, 39),
(66, 40),
(66, 41),
(66, 42),
(66, 43),
(66, 44),
(66, 45),
(67, 38),
(67, 39),
(67, 41),
(67, 42),
(67, 43),
(67, 44),
(67, 45),
(68, 38),
(68, 41),
(68, 42),
(68, 43),
(68, 45),
(69, 38),
(69, 41),
(69, 42),
(69, 43),
(69, 45),
(70, 38),
(70, 39),
(70, 41),
(70, 42),
(70, 43),
(70, 44),
(70, 45),
(71, 38),
(71, 41),
(71, 42),
(71, 43),
(71, 45),
(72, 38),
(72, 41),
(72, 42),
(72, 43),
(72, 45),
(73, 38),
(73, 41),
(73, 42),
(73, 43),
(73, 45),
(74, 41),
(75, 41),
(116, 54),
(116, 55),
(116, 56),
(116, 57),
(116, 58),
(116, 59),
(116, 61),
(116, 62),
(117, 54),
(117, 55),
(117, 56),
(117, 57),
(117, 58),
(117, 60),
(118, 46),
(118, 47),
(118, 48),
(118, 49),
(118, 50),
(118, 51),
(118, 52),
(119, 54),
(119, 55),
(119, 56),
(119, 57),
(119, 58),
(120, 53),
(120, 54),
(120, 55),
(120, 56),
(120, 57),
(120, 58),
(120, 59),
(120, 60),
(120, 61),
(120, 62),
(120, 63),
(121, 46),
(121, 47),
(121, 48),
(121, 50),
(121, 52),
(122, 46),
(122, 47),
(122, 48),
(122, 50),
(122, 52),
(123, 55),
(123, 56),
(123, 57),
(123, 58),
(124, 55),
(124, 56),
(124, 57),
(124, 58),
(124, 62),
(125, 47),
(125, 48),
(125, 50),
(125, 51),
(125, 52),
(126, 53),
(126, 54),
(126, 55),
(126, 56),
(126, 57),
(126, 58),
(126, 59),
(126, 60),
(127, 47),
(127, 48),
(127, 50),
(127, 51),
(127, 52),
(128, 55),
(128, 56),
(128, 57),
(128, 58),
(128, 59),
(129, 54),
(129, 55),
(129, 56),
(129, 57),
(129, 58),
(129, 59),
(130, 54),
(130, 55),
(130, 56),
(130, 57),
(130, 58),
(130, 59),
(131, 53),
(131, 54),
(131, 55),
(131, 56),
(131, 57),
(131, 58),
(132, 57),
(133, 63),
(134, 55),
(134, 56),
(134, 57),
(135, 56),
(135, 57);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id`, `size`, `category_id`) VALUES
(5, '9', 1),
(6, '10', 1),
(7, '11', 1),
(8, '12', 1),
(9, '13', 1),
(10, '14', 1),
(11, '15', 1),
(12, '16', 1),
(14, '18', 1),
(15, '19', 1),
(16, '20', 1),
(17, '21', 1),
(18, '22', 1),
(19, '23', 1),
(20, '24', 1),
(23, '9', 6),
(24, '27', 1),
(25, '7', 1),
(26, '8', 1),
(27, '5', 1),
(28, '6', 1),
(29, '17', 4),
(30, '14', 4),
(31, '15', 4),
(32, '16', 4),
(33, '18', 4),
(34, '22', 4),
(35, '23', 4),
(36, '24', 4),
(37, '25', 4),
(38, '14', 6),
(39, '36', 6),
(40, '38', 6),
(41, '40', 6),
(42, '42', 6),
(43, '43', 6),
(44, '44', 6),
(45, '45', 6),
(46, '38', 8),
(47, '40', 8),
(48, '42', 8),
(49, '43', 8),
(50, '44', 8),
(51, '45', 8),
(52, '46', 8),
(53, '49', 8),
(54, '50', 8),
(55, '51', 8),
(56, '52', 8),
(57, '53', 8),
(58, '54', 8),
(59, '55', 8),
(60, '56', 8),
(61, '57', 8),
(62, '58', 8),
(63, '60', 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thumbnail`
--

CREATE TABLE `thumbnail` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `thumbnail`
--

INSERT INTO `thumbnail` (`id`, `product_id`, `thumbnail`) VALUES
(27, 17, './public/img/product/a1-2.png'),
(28, 17, './public/img/product/a1-3.png'),
(31, 18, './public/img/product/a2-2.png'),
(32, 18, './public/img/product/a2-3.png'),
(33, 18, './public/img/product/a2-4.jpg'),
(34, 19, './public/img/product/a3-2.png'),
(35, 19, './public/img/product/a3-3.png'),
(36, 19, './public/img/product/a3-4.jpg'),
(37, 20, './public/img/product/a4-2.png'),
(38, 20, './public/img/product/a4-3.png'),
(39, 20, './public/img/product/a4-4.jpg'),
(40, 21, './public/img/product/a5-2.png'),
(41, 21, './public/img/product/a5-3.png'),
(42, 21, './public/img/product/a5-4.jpg'),
(43, 23, './public/img/product/a7-2.png'),
(44, 23, './public/img/product/a7-3.png'),
(45, 23, './public/img/product/a7-4.jpg'),
(47, 24, './public/img/product/a8-2.png'),
(48, 24, './public/img/product/a8-3.png'),
(50, 24, './public/img/product/a8-4.jpg'),
(51, 25, './public/img/product/a9-2.png'),
(52, 25, './public/img/product/a9-3.png'),
(53, 25, './public/img/product/a9-4.jpg'),
(54, 26, './public/img/product/a10-2.png'),
(55, 26, './public/img/product/a10-3.png'),
(56, 26, './public/img/product/a10-4.jpg'),
(57, 27, './public/img/product/a11-2.png'),
(58, 27, './public/img/product/a11-3.png'),
(59, 27, './public/img/product/a11-4.jpg'),
(60, 29, './public/img/product/a13-2.png'),
(61, 29, './public/img/product/a13-3.jpg'),
(62, 30, './public/img/product/a14-2.png'),
(63, 30, './public/img/product/a14-3.png'),
(64, 30, './public/img/product/a14-4.jpg'),
(65, 31, './public/img/product/a15-2.png'),
(66, 31, './public/img/product/a15-3.png'),
(67, 31, './public/img/product/a15-4.jpg'),
(68, 32, './public/img/product/a16-2.png'),
(69, 32, './public/img/product/a16-3.png'),
(70, 32, './public/img/product/a16-4.jpg'),
(71, 33, './public/img/product/a17-2.png'),
(72, 33, './public/img/product/a17-3.png'),
(73, 33, './public/img/product/a17-4.jpg'),
(74, 34, './public/img/product/a18-2.png'),
(75, 34, './public/img/product/a18-3.png'),
(76, 34, './public/img/product/a18-4.jpg'),
(77, 35, './public/img/product/a19-2.png'),
(78, 35, './public/img/product/a19-3.png'),
(79, 36, './public/img/product/a20-2.png'),
(80, 36, './public/img/product/a20-3.png'),
(81, 37, './public/img/product/c1-2.png'),
(82, 37, './public/img/product/c1-3.png'),
(83, 38, './public/img/product/c2-2.png'),
(84, 38, './public/img/product/c2-3.png'),
(85, 39, './public/img/product/c3-2.png'),
(86, 39, './public/img/product/c3-3.jpg'),
(87, 40, './public/img/product/c4-2.png'),
(88, 40, './public/img/product/c4-3.png'),
(89, 40, './public/img/product/c4-4.jpg'),
(90, 41, './public/img/product/c5-2.png'),
(91, 41, './public/img/product/c5-3.png'),
(92, 41, './public/img/product/c5-4.jpg'),
(93, 42, './public/img/product/c6-2.png'),
(94, 42, './public/img/product/c6-3.png'),
(95, 42, './public/img/product/c6-4.jpg'),
(96, 43, './public/img/product/c7-2.png'),
(97, 43, './public/img/product/c7-3.png'),
(98, 43, './public/img/product/c7-4.jpg'),
(99, 44, './public/img/product/c8-2.png'),
(100, 44, './public/img/product/c8-3.png'),
(101, 44, './public/img/product/c8-4.png'),
(102, 46, './public/img/product/c10-2.png'),
(103, 46, './public/img/product/c10-3.png'),
(104, 46, './public/img/product/c10-4.jpg'),
(105, 47, './public/img/product/c11-2.png'),
(106, 47, './public/img/product/c11-3.png'),
(107, 47, './public/img/product/c11-4.jpg'),
(108, 48, './public/img/product/c12-2.png'),
(109, 48, './public/img/product/c12-3.png'),
(111, 48, './public/img/product/c12-4.jpg'),
(112, 49, './public/img/product/c13-2.png'),
(113, 50, './public/img/product/c14-2.png'),
(114, 50, './public/img/product/c14-3.png'),
(115, 51, './public/img/product/c15-2.png'),
(116, 51, './public/img/product/c15-3.png'),
(117, 52, './public/img/product/c16-2.png'),
(118, 52, './public/img/product/c16-3.png'),
(119, 52, './public/img/product/c16-4.jpg'),
(120, 53, './public/img/product/c17-2.png'),
(121, 53, './public/img/product/c17-3.png'),
(122, 53, './public/img/product/c17-4.jpg'),
(123, 54, './public/img/product/c18-2.png'),
(124, 54, './public/img/product/c18-3.png'),
(125, 54, './public/img/product/c18-4.jpg'),
(126, 55, './public/img/product/c19-1.png'),
(127, 55, './public/img/product/c19-3.png'),
(128, 56, './public/img/product/c20-2.png'),
(129, 56, './public/img/product/c20-3.png'),
(130, 56, './public/img/product/c20-4.jpg'),
(131, 57, './public/img/product/e1-2.png'),
(132, 58, './public/img/product/e2-2.png'),
(133, 59, './public/img/product/e3-2.png'),
(134, 60, './public/img/product/e4-2.png'),
(135, 60, './public/img/product/e4-3.png'),
(136, 60, './public/img/product/e4-4.png'),
(137, 61, './public/img/product/e5-2.png'),
(138, 61, './public/img/product/e5-3.jpg'),
(139, 62, './public/img/product/e6-2.png'),
(140, 62, './public/img/product/e6-3.png'),
(141, 62, './public/img/product/e6-4.jpg'),
(142, 63, './public/img/product/e7-2.png'),
(143, 63, './public/img/product/e7-3.jpg'),
(144, 64, './public/img/product/e8-2.png'),
(145, 64, './public/img/product/e8-3.png'),
(146, 64, './public/img/product/e8-4.jpg'),
(147, 65, './public/img/product/e9-2.png'),
(148, 65, './public/img/product/e9-3.jpg'),
(149, 66, './public/img/product/e11-2.png'),
(150, 66, './public/img/product/e11-3.jpg'),
(151, 67, './public/img/product/e12-2.png'),
(152, 67, './public/img/product/e12-3.png'),
(153, 67, './public/img/product/e12-4.jpg'),
(154, 68, './public/img/product/e14-2.png'),
(155, 68, './public/img/product/e14-3.png'),
(156, 68, './public/img/product/e14-4.jpg'),
(157, 69, './public/img/product/e13-2.png'),
(158, 69, './public/img/product/e13-3.png'),
(161, 69, './public/img/product/e13-4.jpg'),
(162, 70, './public/img/product/e15-2.png'),
(163, 70, './public/img/product/e15-3.png'),
(164, 70, './public/img/product/e15-4.jpg'),
(165, 72, './public/img/product/e17-2.png'),
(166, 72, './public/img/product/e17-3.png'),
(167, 72, './public/img/product/e17-4.jpg'),
(168, 73, './public/img/product/e18-2.png'),
(169, 73, './public/img/product/e18-3.png'),
(170, 73, './public/img/product/e18-4.jpg'),
(171, 74, './public/img/product/e19-2.png'),
(172, 74, './public/img/product/e19-3.png'),
(173, 75, './public/img/product/e20-2.png'),
(174, 75, './public/img/product/e20-3.png'),
(175, 78, './public/img/product/b3-2.png'),
(176, 78, './public/img/product/b3-3.jpg'),
(177, 78, './public/img/product/b3-4.jpg'),
(178, 76, './public/img/product/b1-2.png'),
(179, 76, './public/img/product/b1-3.jpg'),
(180, 76, './public/img/product/b1-4.jpg'),
(181, 77, './public/img/product/b2-2.png'),
(182, 77, './public/img/product/b2-3.jpg'),
(183, 77, './public/img/product/b2-4.jpg'),
(184, 79, './public/img/product/b4-2.png'),
(185, 79, './public/img/product/b4-3.jpg'),
(186, 79, './public/img/product/b4-4.jpg'),
(187, 81, './public/img/product/b6-2.png'),
(188, 81, './public/img/product/b6-3.jpg'),
(189, 81, './public/img/product/b6-4.jpg'),
(190, 82, './public/img/product/b7-2.png'),
(191, 82, './public/img/product/b7-3.jpg'),
(192, 82, './public/img/product/b7-4.jpg'),
(193, 83, './public/img/product/b8-2.png'),
(194, 83, './public/img/product/b8-3.jpg'),
(195, 83, './public/img/product/b8-4.jpg'),
(196, 84, './public/img/product/b9-2.png'),
(197, 85, './public/img/product/b10-2.png'),
(198, 85, './public/img/product/b10-3.jpg'),
(199, 85, './public/img/product/b10-4.jpg'),
(200, 86, './public/img/product/b11-2.png'),
(201, 86, './public/img/product/b11-3.jpg'),
(202, 87, './public/img/product/b12-2.png'),
(203, 87, './public/img/product/b12-3.jpg'),
(204, 88, './public/img/product/b13-2.png'),
(205, 88, './public/img/product/b13-3.jpg'),
(206, 89, './public/img/product/b14-2.png'),
(207, 89, './public/img/product/b14-3.jpg'),
(208, 90, './public/img/product/b15-2.png'),
(209, 90, './public/img/product/b15-3.jpg'),
(210, 91, './public/img/product/b16-2.png'),
(211, 91, './public/img/product/b16-3.jpg'),
(212, 91, './public/img/product/b16-4.jpg'),
(213, 92, './public/img/product/b17-2.png'),
(214, 92, './public/img/product/b17-3.jpg'),
(215, 92, './public/img/product/b17-4.jpg'),
(216, 93, './public/img/product/b18-2.png'),
(217, 93, './public/img/product/b18-3.jpg'),
(218, 93, './public/img/product/b18-4.jpg'),
(219, 94, './public/img/product/b19-2.png'),
(220, 94, './public/img/product/b19-3.jpg'),
(221, 95, './public/img/product/b20-2.png'),
(222, 95, './public/img/product/b20-3.jpg'),
(223, 95, './public/img/product/b20-4.jpg'),
(224, 96, './public/img/product/d1-2.png'),
(225, 96, './public/img/product/d1-3.png'),
(226, 96, './public/img/product/d1-4.jpg'),
(227, 97, './public/img/product/d2-2.png'),
(228, 97, './public/img/product/d2-3.png'),
(229, 98, './public/img/product/d3-2.png'),
(230, 98, './public/img/product/d3-3.png'),
(231, 98, './public/img/product/d3-4.jpg'),
(232, 99, './public/img/product/d4-2.png'),
(233, 99, './public/img/product/d4-3.png'),
(234, 100, './public/img/product/d5-2.png'),
(235, 100, './public/img/product/d5-3.png'),
(236, 101, './public/img/product/d6-2.png'),
(237, 101, './public/img/product/d6-3.png'),
(238, 101, './public/img/product/d6-4.jpg'),
(239, 102, './public/img/product/d7-2.png'),
(240, 102, './public/img/product/d7-3.png'),
(241, 102, './public/img/product/d7-4.jpg'),
(242, 103, './public/img/product/d8-2.png'),
(243, 103, './public/img/product/d8-3.png'),
(244, 103, './public/img/product/d8-4.jpg'),
(245, 104, './public/img/product/d9-2.png'),
(246, 104, './public/img/product/d9-3.png'),
(247, 105, './public/img/product/d10-2.png'),
(248, 105, './public/img/product/d10-3.png'),
(249, 106, './public/img/product/d11-3.png'),
(250, 106, './public/img/product/d11-4.jpg'),
(251, 107, './public/img/product/d12-3.png'),
(252, 107, './public/img/product/d12-4.jpg'),
(253, 108, './public/img/product/d13-3.png'),
(254, 108, './public/img/product/d13-4.jpg'),
(255, 109, './public/img/product/d14-3.png'),
(256, 109, './public/img/product/d14-4.jpg'),
(257, 110, './public/img/product/d15-2.png'),
(258, 110, './public/img/product/d15-3.png'),
(259, 110, './public/img/product/d15-4.jpg'),
(260, 112, './public/img/product/d17-2.png'),
(261, 112, './public/img/product/d17-3.png'),
(262, 112, './public/img/product/d17-4.jpg'),
(263, 113, './public/img/product/d18-2.png'),
(264, 113, './public/img/product/d18-3.png'),
(265, 113, './public/img/product/d18-4.jpg'),
(266, 114, './public/img/product/d19-2.png'),
(267, 114, './public/img/product/d19-3.png'),
(268, 114, './public/img/product/d19-4.jpg'),
(269, 115, './public/img/product/d20-2.png'),
(270, 115, './public/img/product/d20-3.png'),
(271, 115, './public/img/product/d20-4.jpg'),
(272, 17, './public/img/product/a1-4.jpg'),
(273, 116, './public/img/product/f1-2.png'),
(274, 118, './public/img/product/f3-2.png'),
(275, 118, './public/img/product/f3-3.png'),
(276, 118, './public/img/product/f3-4.jpg'),
(277, 120, './public/img/product/f5-2.png'),
(278, 121, './public/img/product/f6-2.png'),
(279, 121, './public/img/product/f6-3.png'),
(280, 121, './public/img/product/f6-4.jpg'),
(281, 122, './public/img/product/f7-2.png'),
(282, 122, './public/img/product/f7-3.png'),
(283, 122, './public/img/product/f7-4.png'),
(284, 124, './public/img/product/f9-2.png'),
(285, 125, './public/img/product/f10-2.png'),
(286, 125, './public/img/product/f10-3.png'),
(287, 125, './public/img/product/f10-4.jpg'),
(288, 127, './public/img/product/f12-2.png'),
(289, 127, './public/img/product/f12-3.png'),
(290, 127, './public/img/product/f12-4.jpg'),
(292, 128, './public/img/product/f13-2.png'),
(293, 128, './public/img/product/f13-3.png'),
(294, 128, './public/img/product/f13-4.jpg'),
(295, 129, './public/img/product/f14-2.png'),
(296, 129, './public/img/product/f14-3.png'),
(297, 130, './public/img/product/f15-2.jpg'),
(298, 131, './public/img/product/f16-2.png'),
(299, 131, './public/img/product/f16-3.png'),
(300, 131, './public/img/product/f16-4.jpg'),
(301, 132, './public/img/product/f17-2.png'),
(302, 132, './public/img/product/f17-3.jpg'),
(303, 133, './public/img/product/f18-2.png'),
(304, 133, './public/img/product/f18-3.png'),
(305, 133, './public/img/product/f18-4.jpg'),
(306, 134, './public/img/product/f19-2.png'),
(307, 135, './public/img/product/f20-2.png');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- Chỉ mục cho bảng `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name` (`brand_name`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Chỉ mục cho bảng `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gemstone`
--
ALTER TABLE `gemstone`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gemstone_name` (`gemstone_name`);

--
-- Chỉ mục cho bảng `material`
--
ALTER TABLE `material`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `material_name` (`material_name`);

--
-- Chỉ mục cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `material_id` (`material_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `material_id` (`material_id`);

--
-- Chỉ mục cho bảng `product_gemstone`
--
ALTER TABLE `product_gemstone`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `gemstone_id` (`gemstone_id`);

--
-- Chỉ mục cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD KEY `size_id` (`size_id`);

--
-- Chỉ mục cho bảng `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `account`
--
ALTER TABLE `account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `gemstone`
--
ALTER TABLE `gemstone`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `material`
--
ALTER TABLE `material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT cho bảng `product_order`
--
ALTER TABLE `product_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`);

--
-- Các ràng buộc cho bảng `material_detail`
--
ALTER TABLE `material_detail`
  ADD CONSTRAINT `material_detail_ibfk_1` FOREIGN KEY (`material_id`) REFERENCES `material` (`id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `product_order` (`id`),
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `product_ibfk_4` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`id`),
  ADD CONSTRAINT `product_ibfk_5` FOREIGN KEY (`material_id`) REFERENCES `material_detail` (`id`);

--
-- Các ràng buộc cho bảng `product_gemstone`
--
ALTER TABLE `product_gemstone`
  ADD CONSTRAINT `product_gemstone_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_3` FOREIGN KEY (`gemstone_id`) REFERENCES `gemstone` (`id`),
  ADD CONSTRAINT `product_gemstone_ibfk_4` FOREIGN KEY (`gemstone_id`) REFERENCES `gemstone` (`id`);

--
-- Các ràng buộc cho bảng `product_order`
--
ALTER TABLE `product_order`
  ADD CONSTRAINT `product_order_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`);

--
-- Các ràng buộc cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD CONSTRAINT `product_size_ibfk_1` FOREIGN KEY (`size_id`) REFERENCES `size` (`id`);

--
-- Các ràng buộc cho bảng `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `size_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Các ràng buộc cho bảng `thumbnail`
--
ALTER TABLE `thumbnail`
  ADD CONSTRAINT `thumbnail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
