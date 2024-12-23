-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 23, 2024 at 03:19 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_log`
--

CREATE TABLE `api_log` (
  `id` int NOT NULL,
  `method` varchar(10) NOT NULL,
  `url` varchar(255) NOT NULL,
  `requestBody` text NOT NULL,
  `statusCode` int NOT NULL,
  `responseBody` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `responseTime` double NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userAgent` varchar(255) NOT NULL,
  `userId` int DEFAULT NULL,
  `ipAddress` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `api_log`
--

INSERT INTO `api_log` (`id`, `method`, `url`, `requestBody`, `statusCode`, `responseBody`, `responseTime`, `createAt`, `userAgent`, `userId`, `ipAddress`) VALUES
(355, 'POST', '/api/order', '{\"fullname\":\"Tùng Lê\",\"phone\":\"0373984007\",\"province\":\"89\",\"district\":\"886\",\"ward\":\"30340\",\"addressDetail\":\"Xóm Bình An\",\"address\":\"Xóm Bình An, Xã Khánh An, Huyện An Phú, Tỉnh An Giang\",\"voucher\":\"VOUCHer_99\",\"paymentMethod\":\"2\",\"methodShip\":\"Giao hàng\",\"products\":[{\"id\":178,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}],\"voucherValue\":8702100,\"voucherCode\":\"VOUCHer_99\",\"total\":87900}', 200, '', 0.774, '2024-12-17 17:09:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(356, 'POST', '/api/cart/remove-product-cart', '{\"products\":[{\"id\":178,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}]}', 200, '', 0.006, '2024-12-17 17:09:35', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(357, 'POST', '/api/auth/check-change-password', '{\"oldPassword\":\"fffffff\",\"newPassword\":\"123456\",\"newPassword2\":\"123456\"}', 400, '', 0.178, '2024-12-17 17:11:19', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(358, 'POST', '/api/auth/check-change-password', '{\"oldPassword\":\"fffffff\",\"newPassword\":\"123456\",\"newPassword2\":\"123456\"}', 400, '', 0.117, '2024-12-17 17:13:05', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(359, 'POST', '/api/cart/insert-update', '{\"filter\":276,\"quantity\":1}', 200, '', 0.028, '2024-12-17 17:27:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(360, 'POST', '/api/payment/create-payment', '{\"orderCode\":92,\"amount\":8790000,\"description\":\"DON HANG 92\",\"buyerName\":\"Tùng Lê\",\"buyerEmail\":\"\",\"buyerPhone\":\"0373984007\",\"buyerAddress\":\"1, Xã Bình Ba, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu\",\"items\":[{\"id\":179,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}]}', 200, '', 0.33, '2024-12-17 17:27:27', 'axios/1.7.2', NULL, '::1'),
(361, 'POST', '/api/order', '{\"fullname\":\"Tùng Lê\",\"phone\":\"0373984007\",\"province\":\"77\",\"district\":\"750\",\"ward\":\"26578\",\"addressDetail\":\"1\",\"address\":\"1, Xã Bình Ba, Huyện Châu Đức, Tỉnh Bà Rịa - Vũng Tàu\",\"voucher\":\"\",\"paymentMethod\":\"2\",\"methodShip\":\"Giao hàng\",\"products\":[{\"id\":179,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}],\"voucherValue\":0,\"voucherCode\":null,\"total\":8790000}', 200, '', 0.591, '2024-12-17 17:27:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(362, 'POST', '/api/cart/remove-product-cart', '{\"products\":[{\"id\":179,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}]}', 200, '', 0.007, '2024-12-17 17:27:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(363, 'POST', '/api/cart/insert-update', '{\"filter\":276,\"quantity\":1}', 200, '', 0.014, '2024-12-17 17:31:44', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(364, 'POST', '/api/voucher/check-voucher', '{\"code\":\"VOUCHer_99\",\"totalAmount\":8790000}', 200, '', 0.149, '2024-12-17 17:32:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '::1'),
(365, 'POST', '/api/payment/create-payment', '{\"orderCode\":93,\"amount\":87900,\"description\":\"DON HANG 93\",\"buyerName\":\"Tùng Lê\",\"buyerEmail\":\"\",\"buyerPhone\":\"0373984007\",\"buyerAddress\":\"1, Thị trấn An Phú, Huyện An Phú, Tỉnh An Giang\",\"items\":[{\"id\":180,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}]}', 200, '', 0.221, '2024-12-17 17:32:09', 'axios/1.7.2', NULL, '::1'),
(366, 'POST', '/api/order', '{\"fullname\":\"Tùng Lê\",\"phone\":\"0373984007\",\"province\":\"89\",\"district\":\"886\",\"ward\":\"30337\",\"addressDetail\":\"1\",\"address\":\"1, Thị trấn An Phú, Huyện An Phú, Tỉnh An Giang\",\"voucher\":\"VOUCHer_99\",\"paymentMethod\":\"2\",\"methodShip\":\"Giao hàng\",\"products\":[{\"id\":180,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}],\"voucherValue\":8702100,\"voucherCode\":\"VOUCHer_99\",\"total\":87900}', 200, '', 0.254, '2024-12-17 17:32:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(367, 'POST', '/api/cart/remove-product-cart', '{\"products\":[{\"id\":180,\"id_filter\":276,\"quantity\":1,\"name\":\"iPhone 11 | Chính hãng VN/A\",\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp\",\"color\":\"Đen\",\"size\":\"64GB\",\"price\":8790000}]}', 200, '', 0.01, '2024-12-17 17:32:09', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 45, '::1'),
(368, 'POST', '/api/feedback/create', '{\"idProduct\":64,\"idOrder\":90,\"description\":\"Sản phẩm đúng mô tả, nhân viên hỗ trợ nhiệt tình\",\"rate\":5,\"img\":\"15766046737126_130.webp\"}', 200, '', 0.073, '2019-12-17 17:44:34', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(369, 'PUT', '/api/feedback/update/20', '{\"description\":\"Sản phẩm đúng mô tả, nhân viên hỗ trợ nhiệt tình, đã cập nhật\",\"rate\":5,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734510215/mlztqiqghv0kgpvhos6j.png\"}', 200, '', 0.025, '2024-12-18 08:24:01', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(370, 'POST', '/api/cart/insert-update', '{\"filter\":276,\"quantity\":1}', 200, '', 0.057, '2024-12-18 09:01:18', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', 30, '::1'),
(371, 'POST', '/api/auth/login', '{\"email\":\"admin@gmail.com\"}', 200, '', 0.274, '2024-12-18 09:26:01', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '::1'),
(372, 'POST', '/api/auth/login', '{\"email\":\"admin@gmail.com\"}', 200, '', 0.099, '2024-12-18 09:26:27', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '::1'),
(373, 'POST', '/api/auth/login', '{\"email\":\"admin@gmail.com\"}', 200, '', 0.116, '2024-12-18 09:32:46', 'Mozilla/5.0 (iPhone; CPU iPhone OS 16_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.6 Mobile/15E148 Safari/604.1', NULL, '::1'),
(374, 'POST', '/api/auth/login', '{\"email\":\"admin@gmail.com\"}', 200, '', 0.201, '2024-12-18 09:43:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', NULL, '::1'),
(375, 'POST', '/api/v1/product/create', '{\"name\":\"Samsung Galaxy S24 Ultra 12GB 256GB\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"information\":\"Điện thoại thông minh\\n2. Cáp truyền dữ liệu\\n3. Que lấy sim\\n* Galaxy S24 Ultra không bao gồm củ sạc.\",\"id_category\":2,\"id_producer\":2,\"qualityGrade\":\"Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"priceRange\":29990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734963740/g5kepusqgsnscwwvkbvj.webp\",\"productDetail\":[{\"color\":\"Xám\",\"size\":\"256GB\",\"quantity\":\"30\",\"price\":29990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp\"},{\"color\":\"Xám\",\"size\":\"512GB\",\"quantity\":\"25\",\"price\":33490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp\"},{\"color\":\"Xám\",\"size\":\"1TB\",\"quantity\":\"10\",\"price\":38490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp\"},{\"color\":\"Vàng\",\"size\":\"256GB\",\"quantity\":\"20\",\"price\":29990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp\"},{\"color\":\"Vàng\",\"size\":\"512GB\",\"quantity\":\"15\",\"price\":34490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp\"},{\"color\":\"Vàng\",\"size\":\"1TB\",\"quantity\":\"20\",\"price\":39490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp\"},{\"color\":\"Đen\",\"size\":\"256GB\",\"quantity\":\"18\",\"price\":29990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp\"},{\"color\":\"Đen\",\"size\":\"512GB\",\"quantity\":\"19\",\"price\":33490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp\"},{\"color\":\"Đen\",\"size\":\"1TB\",\"quantity\":\"19\",\"price\":38490000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp\"}]}', 200, '', 0.414, '2024-12-23 14:30:07', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(376, 'POST', '/api/v1/product/create', '{\"name\":\"Samsung Galaxy Z Fold6\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"information\":\"Hộp, Sách hướng dẫn, Cây lấy sim\",\"qualityGrade\":\"Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"id_category\":2,\"id_producer\":2,\"priceRange\":45990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964339/i47qfi3cvnj4vbdweuuo.webp\",\"productDetail\":[{\"color\":\"Xanh Dương\",\"size\":\"256GB\",\"quantity\":\"12\",\"price\":41990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp\"},{\"color\":\"Xanh Dương\",\"size\":\"512GB\",\"quantity\":\"18\",\"price\":45990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp\"},{\"color\":\"Xanh Dương\",\"size\":\"1TB\",\"quantity\":\"22\",\"price\":52990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp\"},{\"color\":\"Hồng\",\"size\":\"256GB\",\"quantity\":\"12\",\"price\":41990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp\"},{\"color\":\"Hồng\",\"size\":\"512GB\",\"quantity\":\"15\",\"price\":45990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp\"},{\"color\":\"Hồng\",\"size\":\"1TB\",\"quantity\":\"22\",\"price\":52990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp\"},{\"color\":\"Trắng\",\"size\":\"256GB\",\"quantity\":\"28\",\"price\":41990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp\"},{\"color\":\"Trắng\",\"size\":\"512GB\",\"quantity\":\"26\",\"price\":45990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp\"},{\"color\":\"Trắng\",\"size\":\"1TB\",\"quantity\":\"33\",\"price\":52990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp\"}]}', 200, '', 0.034, '2024-12-23 14:36:45', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(377, 'POST', '/api/v1/product/create', '{\"name\":\"OPPO Find X8\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"information\":\"OPPO FIND X8\\nCáp USB Type C\\nCủ sạc superVOOC 80W\\nDụng cụ lấy SIM\\nSách hướng dẫn\\nMiếng dán màn hình (Đã dán sẵn)\\nVỏ bảo vệ\",\"qualityGrade\":\"Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"id_category\":2,\"id_producer\":3,\"priceRange\":22990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964784/ps6k8etcyxyt4mxwafpe.webp\",\"productDetail\":[{\"color\":\"Đen\",\"size\":\"512GB\",\"quantity\":\"12\",\"price\":22990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964857/orw84m6ypib8iqa40o04.webp\"},{\"color\":\"Xám\",\"size\":\"512GB\",\"quantity\":\"12\",\"price\":22990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734964883/bamh948yhgfrwpbjdkwj.webp\"}]}', 200, '', 0.015, '2024-12-23 14:41:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(378, 'POST', '/api/v1/product/create', '{\"name\":\"OPPO Reno12 5G\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"qualityGrade\":\"Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"id_category\":2,\"id_producer\":3,\"priceRange\":12000000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965012/sypimewi4uysfctqoolm.webp\",\"productDetail\":[{\"color\":\"Bạc\",\"size\":\"256GB\",\"quantity\":\"22\",\"price\":11990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965110/mdrq59nraf2jwvdzrtsf.webp\"},{\"color\":\"Bạc\",\"size\":\"512GB\",\"quantity\":\"18\",\"price\":16000000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965110/mdrq59nraf2jwvdzrtsf.webp\"},{\"color\":\"Đen\",\"size\":\"256GB\",\"quantity\":\"22\",\"price\":11990000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965116/xtenkfu6tvg7ydhydkgv.webp\"},{\"color\":\"Đen\",\"size\":\"512GB\",\"quantity\":\"12\",\"price\":16000000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965116/xtenkfu6tvg7ydhydkgv.webp\"}]}', 200, '', 0.022, '2024-12-23 14:45:40', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(379, 'POST', '/api/v1/product/create', '{\"name\":\"Xiaomi Redmi 14C 4GB\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"qualityGrade\":\"Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"id_category\":2,\"id_producer\":4,\"priceRange\":2999000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965405/rwqngh2hrfvsmtxdygy1.webp\",\"productDetail\":[{\"color\":\"Đen\",\"size\":\"128GB\",\"quantity\":\"11\",\"price\":2999000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965489/zues3ul3jiu1ctdalkyj.webp\"},{\"color\":\"Xanh Dương\",\"size\":\"128GB\",\"quantity\":\"22\",\"price\":2999000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965525/s3gyfchesjixugvd9z03.webp\"}]}', 200, '', 0.096, '2024-12-23 14:52:27', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1'),
(380, 'POST', '/api/v1/product/create', '{\"name\":\"Nokia 3210 4G\",\"description\":\"Mới, đầy đủ phụ kiện từ nhà sản xuất\",\"information\":\"Hướng dẫn nhanh\\nSổ tay an toàn\\nHướng dẫn sử dụng\\nPin có thể tháo rời\",\"qualityGrade\":\"Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất\",\"id_category\":6,\"id_producer\":7,\"priceRange\":1500000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965613/rhzaygj3ebkkzrmmlx7p.png\",\"productDetail\":[{\"color\":\"Đen\",\"size\":\"4G\",\"quantity\":\"22\",\"price\":1500000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965673/bfae3cjyqzwpvggllicv.png\"},{\"color\":\"Vàng\",\"size\":\"4G\",\"quantity\":\"12\",\"price\":1500000,\"img\":\"http://res.cloudinary.com/drkmrlmla/image/upload/v1734965726/l5g7gdl7nnpfj18pgk8j.webp\"}]}', 200, '', 0.059, '2024-12-23 14:56:17', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 30, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_filter` int NOT NULL,
  `quantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `id_user`, `id_filter`, `quantity`) VALUES
(181, 30, 276, 1),
(182, 30, 262, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `createAt`, `updateAt`, `status`) VALUES
(1, 'iPhone(IOS)', '2023-03-14 00:00:00', '2024-06-06 00:00:00', 1),
(2, 'Android', '2023-03-14 00:00:00', '2024-11-20 00:00:00', 1),
(3, 'Khác', '2023-03-14 00:00:00', '2024-06-06 00:00:00', 1),
(6, 'Nokia', '2024-06-06 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `rate` int NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `img` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `id_user`, `id_product`, `id_order`, `rate`, `description`, `img`, `createAt`, `updateAt`) VALUES
(18, 30, 48, 84, 5, 'Sản phẩm dùng mượt, giao hàng nhanh', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734509825/o55uezltnmowbnvjhbz1.png', '2024-12-05 00:38:19', NULL),
(19, 30, 49, 84, 5, 'Ghê ta', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734509825/o55uezltnmowbnvjhbz1.png', '2024-12-05 00:54:58', NULL),
(20, 30, 64, 90, 5, 'Sản phẩm đúng mô tả, nhân viên hỗ trợ nhiệt tình, đã cập nhật', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734510215/mlztqiqghv0kgpvhos6j.png', '2019-12-18 00:44:33', '2024-12-18 15:24:00');

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `id` int NOT NULL,
  `id_pro` int NOT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `quantity` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`id`, `id_pro`, `color`, `size`, `quantity`, `img`, `price`, `status`) VALUES
(187, 48, 'Black', '64GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731348927/frwoywcco9tzzz8cohgb.png', 99999999, 1),
(188, 48, 'Black', '128GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731348927/frwoywcco9tzzz8cohgb.png', 1200000, 1),
(189, 48, 'Black', '256GB', 32, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731348927/frwoywcco9tzzz8cohgb.png', 1500000, 1),
(190, 48, 'White', '512GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731349010/y1kzojwlx9whq8w3fopl.png', 200000, 0),
(191, 48, 'White', '1TB', 20, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731349010/y1kzojwlx9whq8w3fopl.png', 240000, 0),
(192, 48, 'White', '2TB', 96, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731349010/y1kzojwlx9whq8w3fopl.png', 300000, 0),
(193, 48, 'White', '64GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731349010/y1kzojwlx9whq8w3fopl.png', 999999, 0),
(194, 48, 'Silver', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731599562/yzfh2hbrtsfcvakiv48c.png', 120000, 0),
(195, 48, 'Silver', '64GB', 23, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731599562/yzfh2hbrtsfcvakiv48c.png', 234000, 0),
(204, 49, 'Titan đen', '256GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733651875/x83a1zwcdihqlppdmtel.webp', 39390000, 1),
(205, 49, 'Titan đen', '512GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733651875/x83a1zwcdihqlppdmtel.webp', 39990000, 1),
(206, 49, 'Titan đen', '1TB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733651875/x83a1zwcdihqlppdmtel.webp', 45990000, 1),
(207, 49, 'Titan trắng', '256GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652183/ioqwb1djtbzhednajgzq.webp', 39380000, 1),
(208, 49, 'Titan trắng', '512GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652183/ioqwb1djtbzhednajgzq.webp', 39990000, 1),
(209, 49, 'Titan trắng', '1TB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652183/ioqwb1djtbzhednajgzq.webp', 46000000, 1),
(210, 49, 'Titan sa mạc', '256GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652209/glpp1zjotefn8mgheifv.webp', 39380000, 1),
(211, 49, 'Titan sa mạc', '512GB', 14, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652209/glpp1zjotefn8mgheifv.webp', 39990000, 1),
(212, 49, 'Titan sa mạc', '1TB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652209/glpp1zjotefn8mgheifv.webp', 46500000, 1),
(213, 49, 'Titan tự nhiên', '256GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652280/xwoukc6f5d7o4il8k2fa.webp', 39390000, 1),
(214, 49, 'Titan tự nhiên', '512GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652280/xwoukc6f5d7o4il8k2fa.webp', 39990000, 1),
(215, 49, 'Titan tự nhiên', '1TB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733652280/xwoukc6f5d7o4il8k2fa.webp', 45500000, 1),
(216, 57, 'Đen', '128GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653264/iirb8csmntomg8way2yl.webp', 19590000, 1),
(217, 57, 'Đen', '512GB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653264/iirb8csmntomg8way2yl.webp', 22990000, 1),
(218, 57, 'Hồng', '128GB', 13, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653396/pzqynwxotxxinypc2yio.webp', 19590000, 1),
(219, 57, 'Hồng', '512GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653396/pzqynwxotxxinypc2yio.webp', 22890000, 1),
(220, 57, 'Xanh dương', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653454/q6rvcvnok2m0rkltvrsr.webp', 19490000, 1),
(221, 57, 'Xanh dương', '512GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653454/q6rvcvnok2m0rkltvrsr.webp', 22790000, 1),
(222, 57, 'Vàng', '128GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653510/q6o06tqsdjxng7c6byrj.webp', 19690000, 1),
(223, 57, 'Vàng', '512GB', 13, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653510/q6o06tqsdjxng7c6byrj.webp', 22990000, 1),
(224, 58, 'Trắng', '128GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653768/vteeaqlomfogatqinlkl.webp', 22090000, 1),
(225, 58, 'Trắng', '256GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653768/vteeaqlomfogatqinlkl.webp', 24590000, 1),
(226, 58, 'Trắng', '512GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653768/vteeaqlomfogatqinlkl.webp', 28999000, 1),
(227, 58, 'Đen', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653959/kdqdo4fx40w7yrxpn0za.webp', 22100000, 1),
(228, 58, 'Đen', '256GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653959/kdqdo4fx40w7yrxpn0za.webp', 24690000, 1),
(229, 58, 'Đen', '512GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653959/kdqdo4fx40w7yrxpn0za.webp', 28999000, 1),
(230, 58, 'Xanh Mòng Kết', '128GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654080/iqucgijbyc9wckpxjuik.webp', 24800000, 1),
(231, 58, 'Xanh Mòng Kết', '256GB', 20, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654080/iqucgijbyc9wckpxjuik.webp', 24590000, 1),
(232, 58, 'Xanh Mòng Kết', '512GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654080/iqucgijbyc9wckpxjuik.webp', 29000000, 1),
(233, 59, 'Titan đen', '128GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654300/shkewhwbvabr7fvjxgdr.webp', 28390000, 1),
(234, 59, 'Titan đen', '256GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654300/shkewhwbvabr7fvjxgdr.webp', 31290000, 1),
(235, 59, 'Titan đen', '512GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654300/shkewhwbvabr7fvjxgdr.webp', 37990000, 1),
(236, 59, 'Titan đen', '1TB', 3, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654300/shkewhwbvabr7fvjxgdr.webp', 42590000, 1),
(237, 59, 'Titan tự nhiên', '128GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654361/s94spkcd9q9ijqlsbaos.webp', 28490000, 1),
(238, 59, 'Titan tự nhiên', '256GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654361/s94spkcd9q9ijqlsbaos.webp', 31390000, 1),
(239, 59, 'Titan tự nhiên', '512GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654361/s94spkcd9q9ijqlsbaos.webp', 37890000, 1),
(240, 59, 'Titan tự nhiên', '1TB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654361/s94spkcd9q9ijqlsbaos.webp', 42600000, 1),
(241, 59, 'Titan sa mạc', '128GB', 3, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654491/hewcwdqdqmursc3auhbh.webp', 29490000, 1),
(242, 59, 'Titan sa mạc', '256GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654491/hewcwdqdqmursc3auhbh.webp', 31390000, 1),
(243, 59, 'Titan sa mạc', '512GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654491/hewcwdqdqmursc3auhbh.webp', 37890000, 1),
(244, 59, 'Titan sa mạc', '1TB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654491/hewcwdqdqmursc3auhbh.webp', 42800000, 1),
(245, 60, 'Tím', '128GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 25590000, 1),
(246, 60, 'Tím', '256GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 27990000, 1),
(247, 60, 'Tím', '512GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 31910000, 1),
(248, 60, 'Tím', '1TB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 41790000, 1),
(249, 60, 'Bạc', '128GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 25490000, 1),
(250, 60, 'Bạc', '256GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 27890000, 1),
(251, 60, 'Bạc', '512GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 31510000, 1),
(252, 60, 'Bạc', '1TB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 41290000, 1),
(253, 61, 'Tím', '1TB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 40190000, 1),
(254, 61, 'Tím', '256GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 29290000, 1),
(255, 61, 'Tím', '512GB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654837/ksaorwqidwzusa9j0ftr.webp', 34690000, 1),
(256, 61, 'Bạc', '1TB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 40090000, 1),
(257, 61, 'Bạc', '256GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 29190000, 1),
(258, 61, 'Bạc', '512GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654862/yd8aifzjpsroexuhvvtp.webp', 34590000, 1),
(259, 62, 'Đen', '128GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653264/iirb8csmntomg8way2yl.webp', 22590000, 1),
(260, 62, 'Đen', '512GB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653264/iirb8csmntomg8way2yl.webp', 25890000, 1),
(261, 62, 'Hồng', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653396/pzqynwxotxxinypc2yio.webp', 22490000, 1),
(262, 62, 'Hồng', '512GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653396/pzqynwxotxxinypc2yio.webp', 25790000, 1),
(263, 62, 'Xanh dương', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653454/q6rvcvnok2m0rkltvrsr.webp', 22690000, 1),
(264, 62, 'Xanh dương', '512GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653454/q6rvcvnok2m0rkltvrsr.webp', 25890000, 1),
(265, 62, 'Vàng', '128GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653510/q6o06tqsdjxng7c6byrj.webp', 22490000, 1),
(266, 62, 'Vàng', '512GB', 13, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653510/q6o06tqsdjxng7c6byrj.webp', 25690000, 1),
(267, 63, 'Đen', '128GB', 7, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655965/amxswvi7hbxkwleyrrcv.webp', 23390000, 1),
(268, 63, 'Đen', '256GB', 5, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655965/amxswvi7hbxkwleyrrcv.webp', 27290000, 1),
(269, 63, 'Đen', '512GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655965/amxswvi7hbxkwleyrrcv.webp', 31990000, 1),
(270, 63, 'Xám', '128GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655978/sskgvsgzlbcxflm29dlr.webp', 23490000, 1),
(271, 63, 'Xám', '256GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655978/sskgvsgzlbcxflm29dlr.webp', 27390000, 1),
(272, 63, 'Xám', '512GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655978/sskgvsgzlbcxflm29dlr.webp', 31890000, 1),
(273, 63, 'Vàng', '128GB', 3, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655987/zxqnl3bakfmhf7mdc5hi.webp', 23590000, 1),
(274, 63, 'Vàng', '256GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655987/zxqnl3bakfmhf7mdc5hi.webp', 27490000, 1),
(275, 63, 'Vàng', '512GB', 8, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655987/zxqnl3bakfmhf7mdc5hi.webp', 31990000, 1),
(276, 64, 'Đen', '64GB', 4, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp', 8790000, 1),
(277, 64, 'Đen', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733673290/qyaxtosfwx7ngno4enn6.webp', 10290000, 1),
(278, 64, 'Trắng', '64GB', 6, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733673322/ukhmn14ygrjpv2xttawp.webp', 8690000, 1),
(279, 64, 'Trắng', '128GB', 9, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733673322/ukhmn14ygrjpv2xttawp.webp', 10190000, 1),
(280, 65, 'Xám', '256GB', 30, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp', 29990000, 1),
(281, 65, 'Xám', '512GB', 25, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp', 33490000, 1),
(282, 65, 'Xám', '1TB', 10, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734963841/qvp7viibarzfz3rpbv2i.webp', 38490000, 1),
(283, 65, 'Vàng', '256GB', 20, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp', 29990000, 1),
(284, 65, 'Vàng', '512GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp', 34490000, 1),
(285, 65, 'Vàng', '1TB', 20, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964058/h6lm4xq5ieicafi8bdd8.webp', 39490000, 1),
(286, 65, 'Đen', '256GB', 18, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp', 29990000, 1),
(287, 65, 'Đen', '512GB', 19, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp', 33490000, 1),
(288, 65, 'Đen', '1TB', 19, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964158/ibp1xxhpzvx0ud8un4lq.webp', 38490000, 1),
(289, 66, 'Xanh Dương', '256GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp', 41990000, 1),
(290, 66, 'Xanh Dương', '512GB', 18, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp', 45990000, 1),
(291, 66, 'Xanh Dương', '1TB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964430/nhc0sxwothsftjzqbbsp.webp', 52990000, 1),
(292, 66, 'Hồng', '256GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp', 41990000, 1),
(293, 66, 'Hồng', '512GB', 15, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp', 45990000, 1),
(294, 66, 'Hồng', '1TB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964496/acnuaplbasv0uxszwpv0.webp', 52990000, 1),
(295, 66, 'Trắng', '256GB', 28, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp', 41990000, 1),
(296, 66, 'Trắng', '512GB', 26, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp', 45990000, 1),
(297, 66, 'Trắng', '1TB', 33, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964561/wzavbjkdozapt9jhybql.webp', 52990000, 1),
(298, 67, 'Đen', '512GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964857/orw84m6ypib8iqa40o04.webp', 22990000, 1),
(299, 67, 'Xám', '512GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964883/bamh948yhgfrwpbjdkwj.webp', 22990000, 1),
(300, 68, 'Bạc', '256GB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965110/mdrq59nraf2jwvdzrtsf.webp', 11990000, 1),
(301, 68, 'Bạc', '512GB', 18, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965110/mdrq59nraf2jwvdzrtsf.webp', 16000000, 1),
(302, 68, 'Đen', '256GB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965116/xtenkfu6tvg7ydhydkgv.webp', 11990000, 1),
(303, 68, 'Đen', '512GB', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965116/xtenkfu6tvg7ydhydkgv.webp', 16000000, 1),
(304, 69, 'Đen', '128GB', 11, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965489/zues3ul3jiu1ctdalkyj.webp', 2999000, 1),
(305, 69, 'Xanh Dương', '128GB', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965525/s3gyfchesjixugvd9z03.webp', 2999000, 1),
(306, 70, 'Đen', '4G', 22, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965673/bfae3cjyqzwpvggllicv.png', 1500000, 1),
(307, 70, 'Vàng', '4G', 12, 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965726/l5g7gdl7nnpfj18pgk8j.webp', 1500000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `firebase_token`
--

CREATE TABLE `firebase_token` (
  `id` int NOT NULL,
  `token` varchar(255) NOT NULL,
  `userId` int DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `firebase_token`
--

INSERT INTO `firebase_token` (`id`, `token`, `userId`, `createdAt`) VALUES
(126, 'dsDyJaSCjM49whWqplR0AB:APA91bEvKSKK6cy5Q4FqpAj9roRwtHFp0G_R3kH_U1X1ea3PUhzy40wmuLrVq3XG_6Je6EJFRUrS-GpZKMX-OSPLRf5OKpY8Prj5boSf6vwYGewIlJna4W0', 45, '2024-11-22 08:55:35'),
(482, 'dmixg12RseHnCC84Adnol7:APA91bFYDzSnT_qcsM4yOtGuzqTFqOEIHXOCyi7mDlRkZ_g4Avl4Sg_vm7uW5THnUy1Nfi7lEzNSsI8HXnpbk1mpXAfsezfBzAYFk9oE9BXPPuOKLaZm6j0', NULL, '2024-12-09 14:23:03'),
(529, 'dmixg12RseHnCC84Adnol7:APA91bGlKNUzceZbCm30_cYf2F0CGqcOl2t5hXRuR5TcdXy9DeRgbekaMPjN5dcu-NSFootwSOVlavYvjWfrDhjIyTSX6FvEIBOqZpwNVbvXjrdDQjYr7KQ', 30, '2024-12-23 14:37:33');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `shipping_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `shipping_method` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  `total_amount` int NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `voucherValue` int NOT NULL,
  `voucherCode` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `id_user`, `fullname`, `phone`, `status`, `reason`, `orderDate`, `shipping_address`, `shipping_method`, `payment_method`, `total_amount`, `note`, `voucherValue`, `voucherCode`) VALUES
(78, 30, 'tung le van', '0373984007', 10, NULL, '2024-11-18 10:29:13', '1, Thị trấn Mỏ Cày, Huyện Mỏ Cày Nam, Tỉnh Bến Tre', 'Giao hàng', '2', 2200000, NULL, 0, NULL),
(84, 30, 'Tùng Lê', '0373984007', 2, NULL, '2024-12-05 00:33:38', 'Xóm Tân Mĩ 1, Xã Tân Quang, Thành phố Sông Công, Tỉnh Thái Nguyên', 'Giao hàng', '1', 1002000, NULL, 99197999, 'VOUCHER_99'),
(87, 30, 'Tùng Lê', '0373984007', -1, 'Đơn hàng đặt sai địa chỉ', '2024-12-07 14:04:12', 'Xóm Tân Mĩ 1, Xã Tân Quang, Thành phố Sông Công, Tỉnh Thái Nguyên', 'Giao hàng', '1', 999999, NULL, 0, NULL),
(88, 30, 'Tùng Lê', '0373984007', 1, '', '2024-12-08 22:26:37', 'Xóm Hòa Nhân 1, Xã Hoà Long, Thành phố Bà Rịa, Tỉnh Bà Rịa - Vũng Tàu', 'Giao hàng', '1', 26390000, NULL, 1000000, 'VOUCHER_03_12'),
(89, 30, 'Tùng Lê', '0373984007', 0, NULL, '2024-12-11 23:00:29', 'Thị trấn Thắng, Xã Đồng Tân, Huyện Hiệp Hòa, Tỉnh Bắc Giang', 'Giao hàng', '1', 23390000, NULL, 0, NULL),
(90, 30, 'Tùng Lê', '0373984007', 2, NULL, '2024-12-17 23:54:31', 'Xóm tân mĩ 1, Xã Tân Quang, Thành phố Sông Công, Tỉnh Thái Nguyên', 'Giao hàng', '2', 87900, NULL, 8702100, 'VOUCHER_99');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int NOT NULL,
  `id_order` int NOT NULL,
  `id_filter` int NOT NULL,
  `quantity` int NOT NULL,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_filter`, `quantity`, `price`) VALUES
(124, 78, 193, 2, 100000),
(125, 78, 187, 2, 1000000),
(134, 84, 190, 1, 200000),
(137, 87, 193, 1, 999999),
(138, 88, 271, 1, 27390000),
(139, 89, 267, 1, 23390000),
(140, 90, 276, 1, 8790000);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int NOT NULL,
  `otp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `email`, `createAt`) VALUES
(24, '809312', 'levantung141120t0552@gmail.com', '2024-05-10 01:25:29'),
(25, '673190', 'levantung141120t0552@gmail.com', '2024-05-10 01:02:22'),
(26, '467755', 'levantung141120t0552@gmail.com', '2024-05-10 02:03:12'),
(32, '730817', 'hungdzkk2002@gmail.com', '2024-05-11 00:58:29'),
(33, '123688', 'anhducle862002@gmail.com', '2024-05-11 14:22:55'),
(47, '293920', 'admin12345@gmail.com', '2024-05-29 01:23:51'),
(54, '729558', 'admin12345@gmail.com', '2024-05-31 00:43:12'),
(55, '933716', 'admin12345@gmail.com', '2024-05-31 00:48:56'),
(59, '384900', 'admin@gmail.com', '2024-12-08 22:31:05'),
(60, '916700', 'abc@gmail.com', '2024-12-09 21:28:17'),
(61, '206032', 'admin@gmail.com', '2024-12-09 21:30:30');

-- --------------------------------------------------------

--
-- Table structure for table `producer`
--

CREATE TABLE `producer` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producer`
--

INSERT INTO `producer` (`id`, `name`, `createAt`, `updateAt`, `status`) VALUES
(1, 'iPhone', '2024-06-06 23:19:07', '2024-06-07 22:59:33', 1),
(2, 'SAMSUNG', '2024-06-06 23:19:07', NULL, 1),
(3, 'OPPO', '2024-06-06 23:19:07', '2024-11-20 15:38:55', 1),
(4, 'XIAOMI', '2024-06-06 23:19:07', NULL, 1),
(5, 'VIVO', '2024-06-06 23:19:07', '2024-11-20 11:25:45', 1),
(6, 'Realme', '2024-06-06 23:19:07', NULL, 1),
(7, 'NOKIA', '2024-06-06 23:19:07', NULL, 1),
(12, 'Lenovo', '2024-06-06 23:41:54', '2024-11-20 11:25:52', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `information` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `priceRange` int NOT NULL,
  `qualityGrade` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `star` float DEFAULT '5',
  `id_producer` int DEFAULT NULL,
  `id_category` int DEFAULT NULL,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `information`, `priceRange`, `qualityGrade`, `img`, `star`, `id_producer`, `id_category`, `createAt`, `updateAt`, `status`) VALUES
(48, 'Sản phẩm TEST', 'Mô tả 1', 'Thông tin 1', 10000000, 'Tốt, còn bảo hành', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1731348882/qzhclg74y8si4smzrle1.png', 5, 1, 1, '2024-11-12 01:17:35', '2024-12-08 10:08:04', 0),
(49, 'iPhone 16 Pro Max | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummerShop hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'iPhone sử dụng iOS 18, Cáp Sạc USB‑C (1m)', 39390000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733651553/wwr8rfgnjkywyub0ovvs.webp', 5, 1, 1, '2024-11-14 15:55:48', '2024-12-08 10:05:57', 1),
(57, 'iPhone 15 | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummer Shp hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C', 20000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653086/mpjgnc374gi3xqlrnuui.webp', 5, 1, 1, '2024-12-08 10:25:16', '2024-12-08 10:25:16', 1),
(58, 'iPhone 16 | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummer shop hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'iPhone sử dụng iOS 18, Cáp Sạc USB‑C (1m), Tài liệu', 24000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653652/difzocrcmkewci6rui2e.webp', 5, 1, 1, '2024-12-08 10:34:53', '2024-12-08 10:34:53', 1),
(59, 'iPhone 16 Pro | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummer Shop hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'iPhone sử dụng iOS 18, Cáp Sạc USB‑C (1m), Tài liệu', 37000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654542/rxn0xfbdqjlfvoypcb6q.webp', 5, 1, 1, '2024-12-08 10:42:32', '2024-12-08 10:42:32', 1),
(60, 'iPhone 14 Pro Max | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C', 35000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654720/cwf48ed1qdqslxmarnvq.webp', 5, 1, 1, '2024-12-08 10:48:49', '2024-12-08 10:48:49', 1),
(61, 'iPhone 15 Pro Max | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C', 37000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733654720/cwf48ed1qdqslxmarnvq.webp', 5, 1, 1, '2024-12-08 10:58:41', '2024-12-08 10:58:41', 1),
(62, 'iPhone 15 Plus | Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummer Shp hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Type C', 23000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733653086/mpjgnc374gi3xqlrnuui.webp', 5, 1, 1, '2024-12-08 11:01:35', '2024-12-08 11:01:35', 1),
(63, 'iPhone 12 Pro Max I Chính hãng VN/A', 'Máy mới 100% , chính hãng Apple Việt Nam.\nSummer Shop hiện là đại lý bán lẻ uỷ quyền iPhone chính hãng VN/A của Apple Việt Nam', 'iPhone sử dụng iOS 18, Cáp Sạc USB‑C (1m), Tài liệu', 23490000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733655997/yy451odbnz3ijmen4g0w.webp', 5, 1, 1, '2024-12-08 11:06:44', '2024-12-08 11:06:44', 1),
(64, 'iPhone 11 | Chính hãng VN/A', 'Mới 99%, đầy đủ phụ kiện từ nhà sản xuất', 'Hộp, Sách hướng dẫn, Cây lấy sim, Cáp Lightning - Type C', 9000000, '1 ĐỔI 1 trong 30 ngày nếu có lỗi phần cứng nhà sản xuất. Bảo hành 12 tháng tại trung tâm bảo hành chính hãng Apple', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1733673212/tpgwt2ubyaibsivhipux.webp', 5, 1, 1, '2024-12-08 15:55:28', '2024-12-08 15:55:28', 1),
(65, 'Samsung Galaxy S24 Ultra 12GB 256GB', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', 'Điện thoại thông minh\n2. Cáp truyền dữ liệu\n3. Que lấy sim\n* Galaxy S24 Ultra không bao gồm củ sạc.', 29990000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734963740/g5kepusqgsnscwwvkbvj.webp', 5, 2, 2, '2024-12-23 14:30:06', '2024-12-23 14:30:06', 1),
(66, 'Samsung Galaxy Z Fold6', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', 'Hộp, Sách hướng dẫn, Cây lấy sim', 45990000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964339/i47qfi3cvnj4vbdweuuo.webp', 5, 2, 2, '2024-12-23 14:36:45', '2024-12-23 14:36:45', 1),
(67, 'OPPO Find X8', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', 'OPPO FIND X8\nCáp USB Type C\nCủ sạc superVOOC 80W\nDụng cụ lấy SIM\nSách hướng dẫn\nMiếng dán màn hình (Đã dán sẵn)\nVỏ bảo vệ', 22990000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734964784/ps6k8etcyxyt4mxwafpe.webp', 5, 3, 2, '2024-12-23 14:41:40', '2024-12-23 14:41:40', 1),
(68, 'OPPO Reno12 5G', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', NULL, 12000000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965012/sypimewi4uysfctqoolm.webp', 5, 3, 2, '2024-12-23 14:45:40', '2024-12-23 14:45:40', 1),
(69, 'Xiaomi Redmi 14C 4GB', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', NULL, 2999000, 'Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965405/rwqngh2hrfvsmtxdygy1.webp', 5, 4, 2, '2024-12-23 14:52:27', '2024-12-23 14:52:27', 1),
(70, 'Nokia 3210 4G', 'Mới, đầy đủ phụ kiện từ nhà sản xuất', 'Hướng dẫn nhanh\nSổ tay an toàn\nHướng dẫn sử dụng\nPin có thể tháo rời', 1500000, 'Bảo hành 12 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 'http://res.cloudinary.com/drkmrlmla/image/upload/v1734965613/rhzaygj3ebkkzrmmlx7p.png', 5, 7, 6, '2024-12-23 14:56:17', '2024-12-23 14:56:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'default.jpg',
  `birthday` date DEFAULT NULL,
  `gender` int DEFAULT NULL,
  `isAdmin` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `username`, `avatar`, `birthday`, `gender`, `isAdmin`, `status`, `createAt`, `updateAt`) VALUES
(26, 'user123@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$vrRSzfBSzWRBJ84gZA35wQ$KGKkrhtAz5NySeNlg8QptvwwWME5YLptc/MGXV69Wq0', 'Test Admin', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-03-14 00:00:00', '2023-03-14 00:00:00'),
(27, 'adminold@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$QWAQyduEQQIKtxKJ7xywNA$Hxg1o/ZPxWzc4GCSagSPKzr9O0hDV331/wBFxhxFYHU', 'Summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-03-14 00:00:00', '2023-03-14 00:00:00'),
(28, 'admin123@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$owY+iWZTvqDDB99DakblCg$ldHc71iQiB93bD0ms/xH7pgA4Z/UnFg9EBJoeY+DOs0', 'Update chính mình', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-03-14 00:00:00', '2023-03-14 00:00:00'),
(29, 'admin1234@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$tsN4FbIuHaLTVUAJSds4OQ$m2vegZhVnYPIsrfoThwnKp3g1KbatTSq24bsx2C2kVA', 'Test Admin 366', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-03-14 00:00:00', '2023-03-14 00:00:00'),
(30, 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$KXN+9HNWer+mFz9BVSd2BQ$qKdOYn6crSbpTfxWxwE/LgzTD/yJzB7+QbASFpgWXEc', 'Admin', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734939471/vmsncqap5hjo73htwciy.jpg', '1997-11-20', 2, 1, 1, '2023-03-14 00:00:00', '2023-03-14 00:00:00'),
(31, 'user@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$YWZySH/liPyMOdd8wJCumQ$/uMXq3w7hbgPVXJrERO8hCJa/qEVQQCZVaQ4HpPbWrU', 'user name', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-03-21 00:00:00', '2023-03-21 00:00:00'),
(32, 'usertest@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ujSEP/B5rzWmma4LiXe6Rw$w2W1faSOZSN/ENKISdS0T5BtOF0MNUia4G7ezL1e7sI', 'test', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-04-05 00:00:00', '2023-04-05 00:00:00'),
(33, 'nguyenyen@gmaiil.com', '$argon2id$v=19$m=65536,t=3,p=4$ENI+GDbnJ8YFnAAvkbN9JQ$3gZ25Neu6NKSwRbqb5FQKd+ZYkZnVPe4c33COzlQGGU', 'Nguyen Yen', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-04-08 00:00:00', '2023-04-08 00:00:00'),
(34, 'daoquynanh@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$5RV4vPnt7SuF/0DjLVymOg$qfKdDwPCcCo0jqqydlilTYUXbjtD6+3t4DuAthk25DY', 'Đào Quỳnh Anh', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', '2023-04-16', 2, 0, 1, '2023-04-08 00:00:00', '2023-04-08 00:00:00'),
(35, 'sunflower@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$8U76gPLs5a/URPzWH0nrBg$r8bAZPR7iE4zctZv71TXRFj3fey4qsiBVt5iltuNXaw', 'Sunflower', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', '2002-11-14', 1, 0, 1, '2023-04-13 00:00:00', '2023-04-13 00:00:00'),
(37, 'haitien@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$/EOcQt9SslOrB3P2ZGkhyA$+s3U+oebcl2LDw4VfsBvoA3bRfxXm86n706FsBnLcbI', 'Hải Tiến', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-04-14 00:00:00', '2023-04-14 00:00:00'),
(38, 'levantungFake14112002@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9G54ts6yleCxB5MQA0iOWg$pHdoP4/727/rTnGQNrMReM8fSxS/CVK3v3vnBbpP18s', 'ĐQ.Anh', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2023-04-24 00:00:00', '2023-04-24 00:00:00'),
(39, 'levantung14112002Fake@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$CJh1FJwZSNq9AxXMg9W+Yw$/zc3gSxOnxl/sP54aN75K02RZSkl1DLavaMZ4FidIq4', 'Summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-05-10 00:00:00', '2024-05-10 00:00:00'),
(42, 'gggff@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$s7fHKb5xgRo+jz5NttEdZA$1SdTNIpkRknbxFiUQVhPQaMBlAF5h1wKrHTLtnHfh0s', 'summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-05-15 00:00:00', '2024-05-15 00:00:00'),
(43, 'levantung143333112002@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$YDe5XNNo2wtuMPlClnmQmw$Uuneb+MGoNX8xpc+esFamJYLRvcNlYEg9ORtWv6DrUA', 'summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-05-15 00:00:00', '2024-05-15 00:00:00'),
(44, 'levantungf14112002@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$W4//nRgLSL9BXEbX3GOuhg$Y1HZc3aiuS0hyN3oW59ArFTYzx1/ADcARrisp2NjS20', 'summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-05-15 00:00:00', '2024-05-15 00:00:00'),
(45, 'levantung14112002@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$WRw4AEssj1IUwPasRc8Nhg$hMbGcrOxDp47s2TaSagbdQ38Ys9q219nwrruOMW4RaY', 'Lê Tùng', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', '2024-05-28', 1, 0, 1, '2024-05-28 00:00:00', '2024-05-29 00:00:00'),
(46, 'manhtan9122002@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$iA5W9ttARUUiMlcTcBJHPQ$t60R7kK3PAa45GdokryKZ180dd20/Xv4ZB9uO1WAVQQ', 'Mạnh Tân', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-05-29 00:00:00', '2024-05-29 00:00:00'),
(47, 'hvtuantvtc@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$3WhN8gm4lClACZpfZB+pQQ$OlAvYQBQL5iK3fHCXLFEiSVEQ3okuRWNttcdWTcTKzo', 'hvtuantvtc@gmail.com', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', '2024-06-07', 1, 0, 1, '2024-06-07 00:00:00', '2024-06-07 00:00:00'),
(48, 'usertest11111@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$gr6tXAAEGU8Xj+4aae/l0g$gugcT+XHpgt626GWGvcHHLCKqOhgYmKX/7KP2QHRR00', 'Summer', 'https://res.cloudinary.com/drkmrlmla/image/upload/v1734960934/jpnkgqpa0tnp4rcpylns.jpg', NULL, NULL, 0, 1, '2024-11-20 14:58:39', '2024-11-20 14:58:39');

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `id` int NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `value` int NOT NULL,
  `quantity` int NOT NULL,
  `initQuantity` int NOT NULL,
  `minOrderValue` double DEFAULT NULL,
  `maxMoney` double DEFAULT NULL,
  `expiredTime` datetime NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `createAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updateAt` datetime DEFAULT NULL,
  `status` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`id`, `code`, `value`, `quantity`, `initQuantity`, `minOrderValue`, `maxMoney`, `expiredTime`, `description`, `createAt`, `updateAt`, `status`) VALUES
(2, 'VOUCHER_99', 99, 4, 20, 200000, NULL, '2024-12-23 00:00:00', NULL, '2024-12-01 23:10:11', '2024-12-04 16:06:16', 1),
(5, 'VOUCHER_03_12', 20, 19, 33, 10000000, 1000000, '2024-12-31 00:00:00', 'test', '2024-12-03 14:50:45', '2024-12-03 15:41:15', 1),
(6, 'NOEL_24_12', 30, 10, 10, 20000000, 1000000, '2024-12-25 00:00:00', 'voucher noel', '2024-12-03 15:46:00', '2024-12-08 16:58:05', 1),
(7, 'TEST', 1, 1, 1, 0, 0, '2024-12-03 00:00:00', NULL, '2024-12-03 15:48:22', NULL, 0),
(8, 'HET_HAN', 100, 0, 10, NULL, NULL, '2024-12-04 00:00:00', NULL, '2024-12-03 16:20:27', '2024-12-08 16:50:07', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_log`
--
ALTER TABLE `api_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_user` (`id_user`),
  ADD KEY `cart_filter` (`id_filter`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `feedback_user` (`id_user`),
  ADD KEY `feedback_product` (`id_product`),
  ADD KEY `feedback_order` (`id_order`);

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `filter_ibfk_1` (`id_pro`);

--
-- Indexes for table `firebase_token`
--
ALTER TABLE `firebase_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_user` (`id_user`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `details_orders` (`id_order`),
  ADD KEY `details_fillter` (`id_filter`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_2` (`id_category`),
  ADD KEY `pro_producer` (`id_producer`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_log`
--
ALTER TABLE `api_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=308;

--
-- AUTO_INCREMENT for table `firebase_token`
--
ALTER TABLE `firebase_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_filter` FOREIGN KEY (`id_filter`) REFERENCES `filter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cart_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `filter`
--
ALTER TABLE `filter`
  ADD CONSTRAINT `filter_ibfk_1` FOREIGN KEY (`id_pro`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `order_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `details_fillter` FOREIGN KEY (`id_filter`) REFERENCES `filter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `details_orders` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `pro_producer` FOREIGN KEY (`id_producer`) REFERENCES `producer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
