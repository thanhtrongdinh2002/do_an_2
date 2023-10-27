-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 07:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cake`
--

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `iduser` int(11) NOT NULL,
  `sotien` int(11) NOT NULL,
  `Thoigian` date NOT NULL,
  `idsp` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `MaDH` int(11) NOT NULL,
  `MaGD` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giaodich`
--

INSERT INTO `giaodich` (`iduser`, `sotien`, `Thoigian`, `idsp`, `soluong`, `MaDH`, `MaGD`) VALUES
(123345, 222222, '0000-00-00', 0, 0, 0, 0),
(7424972, 10000, '2023-05-26', 1, 7, 0, 0),
(7424972, 10000000, '2023-05-26', 5, 1, 0, 0),
(7424972, 40000100, '2023-05-26', 1, 1, 0, 0),
(7424972, 40000100, '2023-05-26', 1, 1, 7627, 14023186),
(7424972, 40000100, '2023-05-26', 3, 1, 7627, 14023186),
(5652246, 20000100, '2023-05-28', 1, 1, 8533, 14024215);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `idgiohang` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`idgiohang`, `idsp`, `iduser`, `soluong`) VALUES
(41, 2, 5705178, 1),
(42, 1, 750167, 1),
(43, 1, 831998, 1),
(49, 2, 9114396, 2),
(50, 1, 9114396, 4);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `iduser` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `sdt` int(11) NOT NULL,
  `diachi` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` varchar(100) NOT NULL COMMENT 'thành viên thanh toán',
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` int(11) NOT NULL,
  `thanhphan` varchar(500) NOT NULL,
  `id_loai` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idsp`, `tensp`, `gia`, `thanhphan`, `id_loai`, `hinhanh`) VALUES
(1, 'bánh mì sữa', 200001, 'Trứng, sữa, bơ, đường, vani,...', 1, 'Banh_kem_ca_phe.png'),
(2, 'Bánh mì ngọt', 100000, 'Bột mì, đường,...', 5, '9-2ae7523d-fdb0-4caf-bc36-12c51b43f1fc_c83fb.png'),
(3, 'Bánh kem socola', 200000, 'Sữa, bơ, đường, vani,...', 1, '9-6-201622-580300515-5365-1465527424.png'),
(4, 'Bánh kem tươi dâu tây', 200000, 'Trứng, bơ, sữa, đường,...', 1, 'Banh_kem_tuoi_dau_tay.png'),
(5, 'Bánh mì rohlik ngọt', 100000, 'Trứng, bơ, sữa, đường,...', 5, 'Banh_mi_rohlik_ngot.png'),
(6, 'Bánh mì sừng trâu', 100000, 'Bột mì, đường,...', 5, 'Banh_mi_sung_trau.png'),
(7, 'Bánh kem vani', 150000, 'Trứng, bơ, sữa, đường,...', 1, 'bERRY_ME_2_copy.png'),
(103, '', 0, '', 1, 'Wallpaper 4K đẹp - Hình nền 4K cho máy tính - Hình nền đẹp.png'),
(104, '', 0, '', 1, 'sun rising by lior mazza.png');

-- --------------------------------------------------------

--
-- Table structure for table `productpro_type`
--

CREATE TABLE `productpro_type` (
  `id_loai` int(11) NOT NULL,
  `tenloai` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productpro_type`
--

INSERT INTO `productpro_type` (`id_loai`, `tenloai`) VALUES
(1, 'Bánh kem'),
(2, 'Bánh pizza'),
(5, 'Bánh mì ngọt'),
(6, 'bánh xèo');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `uid` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `quyen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`uid`, `username`, `pass`, `quyen`) VALUES
(13, 'admin', '1', 0),
(14, 'thanhtorng', '123', 0),
(15, 'thanhtrong1', '123', 0),
(16, 'trongdinh', 'trong', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`idgiohang`),
  ADD KEY `idsp` (`idsp`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idsp`),
  ADD KEY `id_loai` (`id_loai`);

--
-- Indexes for table `productpro_type`
--
ALTER TABLE `productpro_type`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `idgiohang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `productpro_type`
--
ALTER TABLE `productpro_type`
  MODIFY `id_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idsp`) REFERENCES `product` (`idsp`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_loai`) REFERENCES `productpro_type` (`id_loai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
