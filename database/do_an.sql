-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2019 lúc 09:40 AM
-- Phiên bản máy phục vụ: 10.1.30-MariaDB
-- Phiên bản PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `do_an`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiet_tkb`
--

CREATE TABLE `chitiet_tkb` (
  `id_chitiettkb` int(11) NOT NULL,
  `id_tkb` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `id_giangvien` int(11) NOT NULL,
  `id_lop` int(11) NOT NULL,
  `id_phonghoc` int(11) NOT NULL,
  `id_thu` int(11) NOT NULL,
  `tietbatdau` int(11) NOT NULL,
  `tietketthuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `diemdanh`
--

CREATE TABLE `diemdanh` (
  `id_diemdanh` int(11) NOT NULL,
  `ngaygiodiemdanh` datetime NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `id_lop` int(11) NOT NULL,
  `mssv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `diemdanh` int(11) NOT NULL,
  `diem_ythuc` double NOT NULL,
  `diem_kynang` double NOT NULL,
  `diem_kienthuc` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `id_giangvien` int(11) NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_khoa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoa`
--

CREATE TABLE `khoa` (
  `id_khoa` int(11) NOT NULL,
  `tenkhoa` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_khoa` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `id_khoahoc` int(11) NOT NULL,
  `tenkhoahoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lop`
--

CREATE TABLE `lop` (
  `id_lop` int(11) NOT NULL,
  `tenlop` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `gvcn` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_gvcn` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `id_khoa` int(11) NOT NULL,
  `id_khoahoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monhoc`
--

CREATE TABLE `monhoc` (
  `id_monhoc` int(11) NOT NULL,
  `tenmonhoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_khoa` int(11) NOT NULL,
  `lythuyet` int(11) NOT NULL,
  `sobuoi_lt` int(11) NOT NULL,
  `thuchanh` int(11) NOT NULL,
  `sobuoi_th` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ngaytrongtuan`
--

CREATE TABLE `ngaytrongtuan` (
  `id_thu` int(11) NOT NULL,
  `thu` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phonghoc`
--

CREATE TABLE `phonghoc` (
  `id_phong` int(11) NOT NULL,
  `tenphong` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ghichu` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `id_sv` int(11) NOT NULL,
  `masv` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `hoten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gioitinh` int(11) NOT NULL,
  `ngaysinh` date NOT NULL,
  `diachi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sdt` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_bo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sdt_me` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_lop` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thoikhoabieu`
--

CREATE TABLE `thoikhoabieu` (
  `id_tkb` int(11) NOT NULL,
  `kyhoc` int(11) NOT NULL,
  `id_khoahoc` int(11) NOT NULL,
  `tuanbatdau` int(11) NOT NULL,
  `tuanketthuc` int(11) NOT NULL,
  `thoigianhoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$QbvNHN8yIwtLLj6jGpoOku9UNLSm9XafrtFopmhC063whTnXPssvq', 1, 'I5LdYgQ33npHX0RWQEmRHrO2ELVmDUvnIFSQRYQMhdmYz4uGLtdzjJF3RQeT', NULL, NULL),
(2, 'giangvien', '$2y$10$jX6REmicZCiUmfXSpNM68.E8Yspyu5.8ij1Aswd.m5EQvZS0WQbye', 2, '82275UtgpEoq3z09QBRGj2cdlD8a8qY5OfPzF3M7dPFgP6HPZX6jr3r4Zfkh', NULL, NULL),
(3, 'sinhvien', '$2y$10$fIE90Ev4Z6f2YvZWyVtKnO8d9IiPdDeT7qv5qd6.cetMVyjIUF4vS', 3, '7ohXSWAqVpAqCQ5NBs0kxrUCueM2IeniQpiPaBWBFXH41iuGnXmggRP3DKM9', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiet_tkb`
--
ALTER TABLE `chitiet_tkb`
  ADD PRIMARY KEY (`id_chitiettkb`),
  ADD KEY `id_tkb` (`id_tkb`),
  ADD KEY `id_giangvien` (`id_giangvien`),
  ADD KEY `id_lop` (`id_lop`),
  ADD KEY `id_monhoc` (`id_monhoc`),
  ADD KEY `id_phonghoc` (`id_phonghoc`),
  ADD KEY `id_thu` (`id_thu`);

--
-- Chỉ mục cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD PRIMARY KEY (`id_diemdanh`),
  ADD KEY `id_lop` (`id_lop`),
  ADD KEY `id_monhoc` (`id_monhoc`);

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`id_giangvien`),
  ADD KEY `id_khoa` (`id_khoa`);

--
-- Chỉ mục cho bảng `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`id_khoa`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`id_khoahoc`);

--
-- Chỉ mục cho bảng `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`id_lop`),
  ADD KEY `id_khoa` (`id_khoa`),
  ADD KEY `id_khoahoc` (`id_khoahoc`);

--
-- Chỉ mục cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id_monhoc`),
  ADD KEY `id_khoa` (`id_khoa`);

--
-- Chỉ mục cho bảng `ngaytrongtuan`
--
ALTER TABLE `ngaytrongtuan`
  ADD PRIMARY KEY (`id_thu`);

--
-- Chỉ mục cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  ADD PRIMARY KEY (`id_phong`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`id_sv`),
  ADD KEY `sinhvien_ibfk_1` (`id_lop`);

--
-- Chỉ mục cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD PRIMARY KEY (`id_tkb`),
  ADD KEY `id_khoahoc` (`id_khoahoc`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiet_tkb`
--
ALTER TABLE `chitiet_tkb`
  MODIFY `id_chitiettkb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  MODIFY `id_diemdanh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  MODIFY `id_giangvien` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoa`
--
ALTER TABLE `khoa`
  MODIFY `id_khoa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  MODIFY `id_khoahoc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lop`
--
ALTER TABLE `lop`
  MODIFY `id_lop` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id_monhoc` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ngaytrongtuan`
--
ALTER TABLE `ngaytrongtuan`
  MODIFY `id_thu` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phonghoc`
--
ALTER TABLE `phonghoc`
  MODIFY `id_phong` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  MODIFY `id_sv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  MODIFY `id_tkb` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiet_tkb`
--
ALTER TABLE `chitiet_tkb`
  ADD CONSTRAINT `chitiet_tkb_ibfk_1` FOREIGN KEY (`id_tkb`) REFERENCES `thoikhoabieu` (`id_tkb`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_tkb_ibfk_2` FOREIGN KEY (`id_giangvien`) REFERENCES `giangvien` (`id_giangvien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_tkb_ibfk_3` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_tkb_ibfk_4` FOREIGN KEY (`id_monhoc`) REFERENCES `monhoc` (`id_monhoc`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_tkb_ibfk_5` FOREIGN KEY (`id_phonghoc`) REFERENCES `phonghoc` (`id_phong`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiet_tkb_ibfk_6` FOREIGN KEY (`id_thu`) REFERENCES `ngaytrongtuan` (`id_thu`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `diemdanh`
--
ALTER TABLE `diemdanh`
  ADD CONSTRAINT `diemdanh_ibfk_1` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diemdanh_ibfk_2` FOREIGN KEY (`id_monhoc`) REFERENCES `monhoc` (`id_monhoc`);

--
-- Các ràng buộc cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD CONSTRAINT `giangvien_ibfk_1` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id_khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `lop`
--
ALTER TABLE `lop`
  ADD CONSTRAINT `lop_ibfk_1` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id_khoa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lop_ibfk_2` FOREIGN KEY (`id_khoahoc`) REFERENCES `khoahoc` (`id_khoahoc`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `monhoc`
--
ALTER TABLE `monhoc`
  ADD CONSTRAINT `monhoc_ibfk_1` FOREIGN KEY (`id_khoa`) REFERENCES `khoa` (`id_khoa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD CONSTRAINT `sinhvien_ibfk_1` FOREIGN KEY (`id_lop`) REFERENCES `lop` (`id_lop`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `thoikhoabieu`
--
ALTER TABLE `thoikhoabieu`
  ADD CONSTRAINT `thoikhoabieu_ibfk_1` FOREIGN KEY (`id_khoahoc`) REFERENCES `khoahoc` (`id_khoahoc`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
