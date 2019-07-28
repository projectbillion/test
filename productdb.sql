-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 28, 2019 lúc 03:28 AM
-- Phiên bản máy phục vụ: 10.1.32-MariaDB
-- Phiên bản PHP: 5.6.36

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `productdb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `items`
--

CREATE TABLE `items` (
  `id` int(5) NOT NULL,
  `name` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `category` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `quality` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `price` int(10) NOT NULL,
  `imgs` varchar(255) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Đang đổ dữ liệu cho bảng `items`
--

INSERT INTO `items` (`id`, `name`, `category`, `quality`, `price`, `imgs`) VALUES
(11000, 'Man hau 1', 'man hau', 'Man loai I', 10000, 'https://image-us.24h.com.vn/upload/2-2019/images/2019-04-21/Man-hau-dau-mua-200-ngan-kg-vua-chat-vua-chua-ma-chi-em-van-khong-tiec-tien-vi-them-3-1555825548-638-width500height500.jpg'),
(11001, 'Man hau 2', 'man hau', 'Man loai II', 20000, 'http://sieuthinhanong.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/_/c_y_m_n.jpg'),
(11002, 'Man hau 3', 'man hau', 'Man loai III', 30000, 'https://dacsanvietnam.com/wp-content/uploads/2016/09/thanh-mat-man-hau-bac-ha.jpg'),
(11003, 'Man hau 4', 'man hau', 'Man loai I', 40000, 'http://media.thanhhoa24h.net.vn/thumb_x500x/2018/3/5/23/1-1520230561.jpg'),
(11004, 'Man hau 5', 'man hau', 'Man loai II', 50000, 'http://media.thanhhoa24h.net.vn/thumb_x500x/2018/3/5/23/3-1520230645.jpg'),
(11005, 'Man hau 6', 'man hau', 'Man loai III', 60000, 'http://hn.check.net.vn/Data/product/mainimages/original/product4347.jpg'),
(12000, 'Man anh em 1', 'man anh em', 'Man loai I', 230000, 'http://media.thanhhoa24h.net.vn/thumb_x500x/2018/3/5/23/1-1520230561.jpg'),
(12001, 'Man anh em 2', 'man anh em', 'Man loai II', 154000, 'http://sieuthinhanong.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/_/c_y_m_n.jpg'),
(12002, 'Man anh em 3', 'man anh em', 'Man loai III', 354000, 'http://hn.check.net.vn/Data/product/mainimages/original/product4347.jpg'),
(13000, 'Man tam hoa 1', 'man tam hoa', 'Man loai I', 419000, 'http://media.thanhhoa24h.net.vn/thumb_x500x/2018/3/5/23/3-1520230645.jpg'),
(13001, 'Man tam hoa 2', 'man tam hoa', 'Man loai III', 139000, 'https://image-us.24h.com.vn/upload/2-2019/images/2019-04-21/Man-hau-dau-mua-200-ngan-kg-vua-chat-vua-chua-ma-chi-em-van-khong-tiec-tien-vi-them-3-1555825548-638-width500height500.jpg'),
(13002, 'Man tam hoa 3', 'man tam hoa', 'Man loai I', 369000, 'https://dacsanvietnam.com/wp-content/uploads/2016/09/thanh-mat-man-hau-bac-ha.jpg'),
(13003, 'Man tam hoa 4', 'man tam hoa', 'Man loai II', 299000, 'http://sieuthinhanong.vn/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/_/c_y_m_n.jpg'),
(13004, 'Man tam hoa 5', 'man tam hoa', 'Man loai II', 219000, 'http://hn.check.net.vn/Data/product/mainimages/original/product4347.jpg'),
(21000, 'Bo sap 1', 'bo sap', 'Bo loai I', 154000, 'https://vietagro.net/datafiles/22789/upload/images/14750374024529_bo-sap-daklak-8.jpg'),
(21001, 'Bo sap 2', 'bo sap', 'Bo loai II', 254000, 'https://www.vuonnhacay.com/wp-content/uploads/2019/05/b%C6%A1-5-l%C3%B3ng-1.jpg'),
(21002, 'Bo sap 3', 'bo sap', 'Bo loai III', 354000, 'http://bizweb.dktcdn.net/thumb/grande/100/309/653/products/bo-sap-loai-2.jpg?v=1532516705087'),
(21003, 'Bo sap 4', 'bo sap', 'Bo loai II', 300000, 'http://giongcayanqua.vn/wp-content/uploads/2017/08/bo-sap.jpg'),
(21004, 'Bo sap 5', 'bo sap', 'Bo loai III', 250000, 'http://nongsanhungmanh.com/assets/san-pham/2017_12/qua-bo.jpg'),
(21005, 'Bo sap 6', 'bo sap', 'Bo loai II', 280000, 'http://nongsanhungmanh.com/assets/san-pham/2017_12/qua-bo.jpg'),
(22000, 'Bo tu quy 1', 'bo tu quy', 'Bo loai I', 580000, 'https://cdn.shopify.com/s/files/1/0002/7118/7993/products/127176978357467298881761404381390119604446n-copy_250x250@2x.jpg?v=1527184508'),
(22001, 'Bo tu quy 2', 'bo tu quy', 'Bo loai II', 280000, 'http://bogiongduchuan.vn/public/noidung/images/bogiongduchuan/tintuc/2.jpg'),
(23000, 'Bo hass 1', 'bo hass', 'Bo loai II', 310000, 'https://imgproducts.trangvangvietnam.com/395726078/22.jpeg'),
(23001, 'Bo hass 2', 'bo hass', 'Bo loai II', 330000, 'https://cdn.shopify.com/s/files/1/0002/7118/7993/products/127176978357467298881761404381390119604446n-copy_250x250@2x.jpg?v=1527184508'),
(23002, 'Bo hass 3', 'bo hass', 'Bo loai I', 430000, 'https://media.ex-cdn.com/EXP/media.vietpress.vn/files/doanhtienhuy123/2018/08/07/9-1404.jpg'),
(23003, 'Bo hass 4', 'bo hass', 'Bo loai III', 190000, 'https://newfreshfoods.com.vn/datafiles/galagy/15197054024365_bo-sap-daklak-5.jpg'),
(24000, 'Bo kim cuong 1', 'bo kim cuong', 'Bo loai III', 190000, 'http://media.songkhoe.vn/medias/songkhoe/archive/images/2015/10/28/091557_b1mh.jpg'),
(31000, 'Sua Vinamilk co duong', 'sua co duong', 'Sua loai I', 19000, 'http://product.hstatic.net/1000074072/product/fino-c_-d__ng-min_grande.png'),
(31001, 'Sua TH true Milk co duong', 'sua co duong', 'Sua loai I', 6000, 'http://www.thmilk.vn/image/cache/data/product/milk/3D-pack-Coduong-500x500.png'),
(31002, 'Sua Nuti Food co duong', 'sua co duong', 'Sua loai I', 16000, 'https://s1.marquis.vn/assets/2017/2017-10/a4c34f45c044cb9b43ddad3e58589448.jpg'),
(32000, 'Sua Vinamilk khong duong', 'sua khong duong', 'Sua loai I', 16000, 'http://product.hstatic.net/1000074072/product/fino-ko-d__ng-min.png'),
(32001, 'Sua Nuti Food khong duong', 'sua khong duong', 'Sua loai I', 16000, 'https://s1.marquis.vn/assets/2017/2017-11/525eb1b42b7407a6a3e687056ab7f673.jpg'),
(32002, 'Sua Dutch Lady khong duong', 'sua khong duong', 'Sua loai I', 16000, 'https://s1.marquis.vn/assets/2017/2017-11/88b4457567745a1bd8ec0f3661b8ae5d.jpg'),
(32003, 'Sua TH true Milk khong duong', 'sua khong duong', 'Sua loai I', 16000, 'http://www.12gmart.com.vn/image/cache/data/product/Sua%20nuoc/TH/S%E1%BB%AFa%20t%C6%B0%C6%A1i%20TH%20True%20Milk%20kh%C3%B4ng%20%C4%91%C6%B0%E1%BB%9Dng%20180ml%20th%C3%B9ng-500x500.jpg'),
(33000, 'Sua chua Vinamilk vi nha dam', 'sua chua', 'Sua loai I', 16000, 'http://product.hstatic.net/1000074072/product/nha_dam_61c4e7c78c034665bf76e22b73c41f1e_grande.jpg'),
(33001, 'Sua chua Vinamilk khong duong', 'sua chua', 'Sua loai I', 16000, 'http://product.hstatic.net/1000074072/product/kd_796ddafbfe1d43f8bfc83491dedbf1ce_grande.jpg'),
(33002, 'Sua chua Vinamilk vi trai cay', 'sua chua', 'Sua loai I', 16000, 'http://product.hstatic.net/1000074072/product/trai_cay_9e82726d520249b6a3ec89b0fb8cb775_grande.jpg'),
(33003, 'Sua chua tiet trung TH true Milk', 'sua chua', 'Sua loai I', 16000, 'http://www.thmilk.vn/image/cache/data/product/chia-dau-500x500.png'),
(33004, 'Sua chua nep cam', 'sua chua', 'Sua loai I', 16000, 'http://nepcamduongsinh.com/upload/images/sua-chua-nep-cam.jpg');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `items`
--
ALTER TABLE `items`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33005;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
