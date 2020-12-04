-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2020 at 08:19 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `bailam`
--

CREATE TABLE `bailam` (
  `MaCauChon` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `MaCauHoi` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `bailam`
--

INSERT INTO `bailam` (`MaCauChon`, `MaCauHoi`, `username`) VALUES
('71683_1_3', '71683_1', 'sinhvien1'),
('71683_2_3', '71683_2', 'sinhvien1'),
('71683_3_3', '71683_3', 'sinhvien1');

-- --------------------------------------------------------

--
-- Table structure for table `cau_chon`
--

CREATE TABLE `cau_chon` (
  `MaCauChon` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `TenCauChon` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `boolean` int(11) NOT NULL DEFAULT 0,
  `MaCauHoi` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cau_chon`
--

INSERT INTO `cau_chon` (`MaCauChon`, `TenCauChon`, `boolean`, `MaCauHoi`) VALUES
('71683_1_1', '1aasd', 0, '71683_1'),
('71683_1_2', '1b', 0, '71683_1'),
('71683_1_3', '1c', 1, '71683_1'),
('71683_1_4', '1d', 0, '71683_1'),
('71683_2_1', '2a', 1, '71683_2'),
('71683_2_2', '2b', 0, '71683_2'),
('71683_2_3', '2c', 0, '71683_2'),
('71683_2_4', '2d', 0, '71683_2'),
('71683_3_1', '3a', 0, '71683_3'),
('71683_3_2', '3b', 0, '71683_3'),
('71683_3_3', '3c', 0, '71683_3'),
('71683_3_4', '3d', 1, '71683_3');

-- --------------------------------------------------------

--
-- Table structure for table `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `MaCauHoi` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `TenCauHoi` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaDe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cau_hoi`
--

INSERT INTO `cau_hoi` (`MaCauHoi`, `TenCauHoi`, `MaDe`) VALUES
('71683_1', 'câu 1aaa', 71683),
('71683_2', 'câu 2', 71683),
('71683_3', 'câu 3', 71683);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classId` int(11) NOT NULL,
  `className` varchar(1000) NOT NULL,
  `literature` varchar(100) NOT NULL,
  `room` varchar(50) NOT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classId`, `className`, `literature`, `room`, `img`) VALUES
(11763, 'HK1_2020_503074_N02', 'Mobile', 'A506', 'Best_upcoming_5G_Mobile_Phones_to_buy_in_2020_Banner_Upcoming-5G-mobiles-Img1.jpg'),
(31195, 'HK1_2020_502045_N03', 'Công nghệ phần mềm', 'B203', 'bit-770x385.jpg'),
(36540, 'Nhóm 2 tổ 1 Giải thuật 2', 'Cấu trúc dữ liệu và giải thuật 2', 'A506', 'e0a85ff6c0c64720ad582bdec3741cd1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `class_user`
--

CREATE TABLE `class_user` (
  `id` int(11) NOT NULL,
  `userId` varchar(200) NOT NULL,
  `classId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_user`
--

INSERT INTO `class_user` (`id`, `userId`, `classId`) VALUES
(2, 'sinhvien2', 31195),
(3, 'giaovien1', 11763),
(4, 'giaovien2', 31195),
(5, 'giaovien2', 36540),
(6, 'sinhvien2', 36540),
(7, 'sinhvien1', 11763);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `cmtId` int(11) NOT NULL,
  `content` text NOT NULL,
  `notiID` int(11) NOT NULL,
  `userId` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`cmtId`, `content`, `notiID`, `userId`) VALUES
(1, 'Đồ án mình làm nhóm mấy người ạ', 1, 'sinhvien1'),
(2, 'phạm vi ôn bài từ chương mấy ạ', 5, 'sinhvien1'),
(3, 'dạ em cảm ơn ạ', 4, 'sinhvien2'),
(4, 'mình học phòng nào thưa thầy', 3, 'sinhvien2'),
(5, 'nhớ có mặt đúng giờ nhe sthầy điểm danh đầu giờ', 2, 'giaovien2'),
(6, 'A205 em nhé', 3, 'giaovien2'),
(7, 'tối đa 4 người em nhé', 1, 'giaovien1'),
(8, 'hết luôn em nhé', 5, 'giaovien1');

-- --------------------------------------------------------

--
-- Table structure for table `de_thi`
--

CREATE TABLE `de_thi` (
  `MaDe` int(11) NOT NULL,
  `TenDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Deadline` int(11) DEFAULT NULL,
  `num` int(11) NOT NULL,
  `classID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `de_thi`
--

INSERT INTO `de_thi` (`MaDe`, `TenDe`, `Deadline`, `num`, `classID`) VALUES
(71683, 'đề 1asid', 0, 3, 11763);

-- --------------------------------------------------------

--
-- Table structure for table `ketqua`
--

CREATE TABLE `ketqua` (
  `MaDe` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ketqua`
--

INSERT INTO `ketqua` (`MaDe`, `diem`, `username`) VALUES
(71683, 1, 'sinhvien1');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notiId` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `content` text NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `classId` int(11) NOT NULL,
  `userId` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notiId`, `title`, `content`, `file`, `classId`, `userId`) VALUES
(1, 'Đồ án cuối kỳ', 'Thông báo nội dung đồ án cuối kỳ', 'DoAnCuoiKi-v3.pdf', 11763, 'giaovien1'),
(2, 'Học online', 'Tuần tới theo quy định của Nhà trường lớp ta tiếp tục học online', '', 31195, 'giaovien2'),
(3, 'Học bù', 'Chúng ta sẽ học bù vào thứ hai tuần sau nhé. Mấy em nhớ có mặt đầy đủ', '', 36540, 'giaovien2'),
(4, 'Slide bài học', 'thầy gửi các em slide bài học', '00_Course Description.pptx', 31195, 'giaovien2'),
(5, 'Làm bài kiểm tra', 'Tuần này chúng ta sẽ làm bài trắc nghiệm nhỏ lấy điểm 10% các em nhé', '', 11763, 'giaovien1');

-- --------------------------------------------------------

--
-- Table structure for table `permission_reset`
--

CREATE TABLE `permission_reset` (
  `email` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_reset`
--

INSERT INTO `permission_reset` (`email`, `token`) VALUES
('davidhao3520@gmail.com', '-1'),
('iwom3520@gmail.com', '-1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(200) NOT NULL,
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name` text NOT NULL,
  `birth` date NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `permission` varchar(8) NOT NULL DEFAULT 'SV'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `name`, `birth`, `email`, `phone`, `permission`) VALUES
('admin', '$2y$10$sl1xLFhrb1FG.YYR1I3mcO6bAOVUH.xNN5AgW5GoFGVts1LJCihHS', 'Admin Hệ Thống', '2020-12-02', 'iwom3520@gmail.com', '0123456789', 'AD'),
('giaovien1', '$2y$10$sQzb0TyEaiqH3nqNIQe7DeFdAMksT/Idl.cg861xuDY0Cwl3ZWQyu', 'Giáo Viên 1', '2020-12-19', 'giaovien1@gmail.com', '0123456789', 'GV'),
('giaovien2', '$2y$10$rNBGeqgDi./GhIGYalpQcOxPNMU3inJ0fN.34G6lOBAYFKkoGxXjG', 'Giáo Viên 2', '2020-12-24', 'giaovien2@gmail.com', '0123456789', 'GV'),
('minhhao3520', '$2y$10$4FnO3v4WZ34kiE5w7.DEvuvqqXBoaiem8S9RmP45rFmr4fW2rpGDO', 'Tạ Minh Hào', '2000-05-03', 'davidhao3520@gmail.com', '0974898020', 'AD'),
('sinhvien1', '$2y$10$46B61hzoApb8s5t.oEM.rOFjUq6suA1rrXlYbMsJVXQicF3r6F55.', 'Sinh Viên 1', '2020-11-04', 'sinhvien1@gmail.com', '0123456789', 'SV'),
('sinhvien2', '$2y$10$G0Rzzw46mGu7f.LutpFpZO3dKDulCXTzlqg3QMIHSibq0lkDST4XG', 'Sinh Viên 2', '2020-12-01', 'sinhvien2@gmail.com', '0123456789', 'SV');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bailam`
--
ALTER TABLE `bailam`
  ADD PRIMARY KEY (`MaCauChon`);

--
-- Indexes for table `cau_chon`
--
ALTER TABLE `cau_chon`
  ADD PRIMARY KEY (`MaCauChon`);

--
-- Indexes for table `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`MaCauHoi`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classId`);

--
-- Indexes for table `class_user`
--
ALTER TABLE `class_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `classId` (`classId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`cmtId`),
  ADD KEY `notiID` (`notiID`);

--
-- Indexes for table `de_thi`
--
ALTER TABLE `de_thi`
  ADD PRIMARY KEY (`MaDe`);

--
-- Indexes for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`MaDe`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notiId`);

--
-- Indexes for table `permission_reset`
--
ALTER TABLE `permission_reset`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99057;

--
-- AUTO_INCREMENT for table `class_user`
--
ALTER TABLE `class_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `cmtId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notiId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class_user`
--
ALTER TABLE `class_user`
  ADD CONSTRAINT `class_user_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `class` (`classId`),
  ADD CONSTRAINT `class_user_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `user` (`username`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`notiID`) REFERENCES `notification` (`notiId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
