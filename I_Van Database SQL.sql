-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2022 at 11:17 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+07:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ivan`
--
-- CREATE DATABASE IF NOT EXISTS `adminivan_ivan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `adminivan_ivan`;

-- --------------------------------------------------------

--
-- Table structure for table `bank_list`
--

CREATE TABLE `bank_list` (
  `bank_ID` int(11) NOT NULL,
  `bank_abbreviation` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_logo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_list`
--

INSERT INTO `bank_list` (`bank_ID`, `bank_abbreviation`, `bank_name_th`, `bank_name_en`, `bank_number`, `bank_logo`) VALUES
(1, 'SCB', 'ไทยพาณิชย์', 'Siam Commercial', '123-4-56789-0', 'scb.jpg'),
(2, 'KTB', 'กรุงไทย', 'Krungthai', '123-4-56789-0', 'ktb.jpg'),
(3, 'KBANK', 'กสิกรไทย', 'Kasikorn', '123-4-56789-0', 'kbank.png'),
(4, 'TTB', 'ทหารไทยธนชาต', 'Thanachart', '123-4-56789-0', 'ttb.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `Com_ID` int(11) NOT NULL,
  `Com_Type_ID` int(11) NOT NULL,
  `Com_Topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Com_Content` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`Com_ID`, `Com_Type_ID`, `Com_Topic`, `Com_Content`) VALUES
(1, 1, 'คนขับรถโดยสารป้ายทะเบียน กข6525 ขับรถห่วยแตกมากค่ะ', 'เรื่องเกิดเมื่อวานก่อน คนขับ จอดรถทะเลาะกับเมีย ทำเอาทุกคนที่อยู่บนรถวันนั้นไม่พอใจอย่างมากค่ะ รบกวนอบรมคนของคุณด้วยนะคะ ขอบคุณค่ะ');

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `Com_Type_ID` int(11) NOT NULL,
  `Com_Type_Name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaint_type`
--

INSERT INTO `complaint_type` (`Com_Type_ID`, `Com_Type_Name`) VALUES
(1, 'เกี่ยวกับคนขับรถตู้โดยสารสาธารณะ'),
(2, 'เกี่ยวกับพนักงานขายตั๋ว'),
(3, 'เกี่ยวกับระบบของเว็บไซต์'),
(4, 'อื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `dock_car`
--

CREATE TABLE `dock_car` (
  `Dock_car_id` int(11) NOT NULL,
  `Around_Num` int(11) NOT NULL,
  `Van_Out` time NOT NULL,
  `Station_ID` int(11) NOT NULL,
  `Van_ID` int(11) NOT NULL,
  `Festival_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dock_car`
--

INSERT INTO `dock_car` (`Dock_car_id`, `Around_Num`, `Van_Out`, `Station_ID`, `Van_ID`, `Festival_Date`) VALUES
(1, 1, '07:10:00', 1, 1, '0000-00-00'),
(2, 1, '07:20:00', 2, 1, '0000-00-00'),
(3, 1, '07:30:00', 3, 1, '0000-00-00'),
(4, 1, '07:50:00', 4, 1, '0000-00-00'),
(5, 1, '08:10:00', 5, 1, '0000-00-00'),
(6, 1, '08:40:00', 6, 1, '0000-00-00'),
(7, 1, '08:50:00', 7, 1, '0000-00-00'),
(8, 1, '09:00:00', 6, 1, '0000-00-00'),
(9, 1, '09:30:00', 5, 1, '0000-00-00'),
(10, 1, '10:00:00', 4, 1, '0000-00-00'),
(11, 1, '10:20:00', 3, 1, '0000-00-00'),
(12, 1, '10:30:00', 2, 1, '0000-00-00'),
(13, 2, '12:10:00', 1, 1, '0000-00-00'),
(14, 2, '12:20:00', 2, 1, '0000-00-00'),
(15, 2, '12:30:00', 3, 1, '0000-00-00'),
(16, 2, '12:50:00', 4, 1, '0000-00-00'),
(17, 2, '13:10:00', 5, 1, '0000-00-00'),
(18, 2, '13:40:00', 6, 1, '0000-00-00'),
(19, 2, '13:50:00', 7, 1, '0000-00-00'),
(20, 2, '14:00:00', 6, 1, '0000-00-00'),
(21, 2, '14:30:00', 5, 1, '0000-00-00'),
(22, 2, '15:00:00', 4, 1, '0000-00-00'),
(23, 2, '15:20:00', 3, 1, '0000-00-00'),
(24, 2, '15:30:00', 2, 1, '0000-00-00'),
(25, 1, '07:40:00', 1, 2, '0000-00-00'),
(26, 1, '07:50:00', 2, 2, '0000-00-00'),
(27, 1, '08:00:00', 3, 2, '0000-00-00'),
(28, 1, '08:20:00', 4, 2, '0000-00-00'),
(29, 1, '08:40:00', 5, 2, '0000-00-00'),
(30, 1, '09:10:00', 6, 2, '0000-00-00'),
(31, 1, '09:20:00', 7, 2, '0000-00-00'),
(32, 1, '09:30:00', 6, 2, '0000-00-00'),
(33, 1, '10:00:00', 5, 2, '0000-00-00'),
(34, 1, '10:30:00', 4, 2, '0000-00-00'),
(35, 1, '10:50:00', 3, 2, '0000-00-00'),
(36, 1, '11:00:00', 2, 2, '0000-00-00'),
(37, 2, '12:40:00', 1, 2, '0000-00-00'),
(38, 2, '12:50:00', 2, 2, '0000-00-00'),
(39, 2, '13:00:00', 3, 2, '0000-00-00'),
(40, 2, '13:20:00', 4, 2, '0000-00-00'),
(41, 2, '13:40:00', 5, 2, '0000-00-00'),
(42, 2, '14:10:00', 6, 2, '0000-00-00'),
(43, 2, '14:20:00', 7, 2, '0000-00-00'),
(44, 2, '14:30:00', 6, 2, '0000-00-00'),
(45, 2, '15:00:00', 5, 2, '0000-00-00'),
(46, 2, '15:30:00', 4, 2, '0000-00-00'),
(47, 2, '15:50:00', 3, 2, '0000-00-00'),
(48, 2, '16:00:00', 2, 2, '0000-00-00'),
(49, 1, '08:10:00', 1, 3, '0000-00-00'),
(50, 1, '08:20:00', 2, 3, '0000-00-00'),
(51, 1, '08:30:00', 3, 3, '0000-00-00'),
(52, 1, '08:50:00', 4, 3, '0000-00-00'),
(53, 1, '09:10:00', 5, 3, '0000-00-00'),
(54, 1, '09:40:00', 6, 3, '0000-00-00'),
(55, 1, '09:50:00', 7, 3, '0000-00-00'),
(56, 1, '10:00:00', 6, 3, '0000-00-00'),
(57, 1, '10:30:00', 5, 3, '0000-00-00'),
(58, 1, '11:00:00', 4, 3, '0000-00-00'),
(59, 1, '11:20:00', 3, 3, '0000-00-00'),
(60, 1, '11:30:00', 2, 3, '0000-00-00'),
(61, 2, '13:10:00', 1, 3, '0000-00-00'),
(62, 2, '13:20:00', 2, 3, '0000-00-00'),
(63, 2, '13:30:00', 3, 3, '0000-00-00'),
(64, 2, '13:50:00', 4, 3, '0000-00-00'),
(65, 2, '14:10:00', 5, 3, '0000-00-00'),
(66, 2, '14:40:00', 6, 3, '0000-00-00'),
(67, 2, '14:50:00', 7, 3, '0000-00-00'),
(68, 2, '15:00:00', 6, 3, '0000-00-00'),
(69, 2, '15:30:00', 5, 3, '0000-00-00'),
(70, 2, '16:00:00', 4, 3, '0000-00-00'),
(71, 2, '16:20:00', 3, 3, '0000-00-00'),
(72, 2, '16:30:00', 2, 3, '0000-00-00'),
(73, 2, '15:30:00', 1, 4, '0000-00-00'),
(74, 2, '15:40:00', 2, 4, '0000-00-00'),
(75, 2, '15:50:00', 3, 4, '0000-00-00'),
(76, 2, '16:10:00', 4, 4, '0000-00-00'),
(77, 2, '16:30:00', 5, 4, '0000-00-00'),
(78, 2, '07:00:00', 6, 4, '0000-00-00'),
(79, 1, '08:40:00', 7, 4, '0000-00-00'),
(80, 1, '08:50:00', 6, 4, '0000-00-00'),
(81, 1, '09:20:00', 5, 4, '0000-00-00'),
(82, 1, '09:50:00', 4, 4, '0000-00-00'),
(83, 1, '10:10:00', 3, 4, '0000-00-00'),
(84, 1, '10:20:00', 2, 4, '0000-00-00'),
(85, 1, '10:30:00', 1, 4, '0000-00-00'),
(86, 1, '10:40:00', 2, 4, '0000-00-00'),
(87, 1, '10:50:00', 3, 4, '0000-00-00'),
(88, 1, '11:10:00', 4, 4, '0000-00-00'),
(89, 1, '11:30:00', 5, 4, '0000-00-00'),
(90, 1, '12:00:00', 6, 4, '0000-00-00'),
(91, 2, '13:40:00', 7, 4, '0000-00-00'),
(92, 2, '13:50:00', 6, 4, '0000-00-00'),
(93, 2, '14:20:00', 5, 4, '0000-00-00'),
(94, 2, '14:50:00', 4, 4, '0000-00-00'),
(95, 2, '15:10:00', 3, 4, '0000-00-00'),
(96, 2, '15:20:00', 2, 4, '0000-00-00'),
(97, 2, '16:00:00', 1, 5, '0000-00-00'),
(98, 2, '16:10:00', 2, 5, '0000-00-00'),
(99, 2, '16:20:00', 3, 5, '0000-00-00'),
(100, 2, '16:40:00', 4, 5, '0000-00-00'),
(101, 2, '07:00:00', 5, 5, '0000-00-00'),
(102, 2, '07:30:00', 6, 5, '0000-00-00'),
(103, 1, '09:10:00', 7, 5, '0000-00-00'),
(104, 1, '09:20:00', 6, 5, '0000-00-00'),
(105, 1, '09:50:00', 5, 5, '0000-00-00'),
(106, 1, '10:20:00', 4, 5, '0000-00-00'),
(107, 1, '10:40:00', 3, 5, '0000-00-00'),
(108, 1, '10:50:00', 2, 5, '0000-00-00'),
(109, 1, '11:00:00', 1, 5, '0000-00-00'),
(110, 1, '11:10:00', 2, 5, '0000-00-00'),
(111, 1, '11:20:00', 3, 5, '0000-00-00'),
(112, 1, '11:40:00', 4, 5, '0000-00-00'),
(113, 1, '12:00:00', 5, 5, '0000-00-00'),
(114, 1, '12:30:00', 6, 5, '0000-00-00'),
(115, 2, '14:10:00', 7, 5, '0000-00-00'),
(116, 2, '14:20:00', 6, 5, '0000-00-00'),
(117, 2, '14:50:00', 5, 5, '0000-00-00'),
(118, 2, '15:20:00', 4, 5, '0000-00-00'),
(119, 2, '15:40:00', 3, 5, '0000-00-00'),
(120, 2, '15:50:00', 2, 5, '0000-00-00'),
(121, 2, '16:30:00', 1, 6, '0000-00-00'),
(122, 2, '16:40:00', 2, 6, '0000-00-00'),
(123, 2, '16:50:00', 3, 6, '0000-00-00'),
(124, 2, '07:10:00', 4, 6, '0000-00-00'),
(125, 2, '07:30:00', 5, 6, '0000-00-00'),
(126, 2, '18:00:00', 6, 6, '0000-00-00'),
(127, 1, '09:40:00', 7, 6, '0000-00-00'),
(128, 1, '09:50:00', 6, 6, '0000-00-00'),
(129, 1, '10:20:00', 5, 6, '0000-00-00'),
(130, 1, '10:50:00', 4, 6, '0000-00-00'),
(131, 1, '11:10:00', 3, 6, '0000-00-00'),
(132, 1, '11:20:00', 2, 6, '0000-00-00'),
(133, 1, '11:30:00', 1, 6, '0000-00-00'),
(134, 1, '11:40:00', 2, 6, '0000-00-00'),
(135, 1, '11:50:00', 3, 6, '0000-00-00'),
(136, 1, '12:10:00', 4, 6, '0000-00-00'),
(137, 1, '12:30:00', 5, 6, '0000-00-00'),
(138, 1, '13:00:00', 6, 6, '0000-00-00'),
(139, 2, '14:40:00', 7, 6, '0000-00-00'),
(140, 2, '14:50:00', 6, 6, '0000-00-00'),
(141, 2, '15:20:00', 5, 6, '0000-00-00'),
(142, 2, '15:50:00', 4, 6, '0000-00-00'),
(143, 2, '16:10:00', 3, 6, '0000-00-00'),
(144, 3, '23:00:00', 2, 6, '2022-12-30'),
(145, 2, '16:20:00', 2, 6, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `N_ID` int(11) NOT NULL,
  `N_AddDT` datetime NOT NULL,
  `N_Message` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `N_Read` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `N_ToUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`N_ID`, `N_AddDT`, `N_Message`, `N_Read`, `N_ToUser`) VALUES
(1, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(2, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(3, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(4, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(5, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(6, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(7, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(8, '2022-02-24 06:06:48', 'การชำระเงินหมายเลข #121 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1),
(10, '2022-06-26 22:07:11', 'การชำระเงินหมายเลข #4 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 3),
(11, '2022-06-26 22:07:12', 'การชำระเงินหมายเลข #3 เสร็จสมบูรณ์ ตอนนี้คุณสามารถรับตั๋วได้ที่หน้ารับตั๋ว ☺', 'false', 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `OTP_ID` int(11) NOT NULL,
  `TimeToSend` int(10) NOT NULL,
  `TimeToOut` int(10) NOT NULL,
  `Refer` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Number` varchar(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OTP_Key` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `End_Key` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ToPhone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User` int(11) NOT NULL,
  `Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`OTP_ID`, `TimeToSend`, `TimeToOut`, `Refer`, `Number`, `OTP_Key`, `End_Key`, `ToPhone`, `User`, `Type`) VALUES
(1, 1653289303, 1653290203, 'dkF2', '992482', 'epsDB2aaR37IMGBI2NvBWTHhMHfNLoCbwluXGwQ7jzoQ8y57Tm4SOa5glnnOoaKKAOGNt8xdArVR3yoHpvcEkm7Xl0VBqQBQLDJkuGdCOZkSm3WLK6I7Pstrff27n9bAqCVGh2wBTpvtdhTBg0iu5X', 'adabf5b424bb7ba827bc6eaf04865077fd88a2d01ad301f3455b67719009f07d83e7bb75888f5f8f14ba5b302bbd2be40b3c56aae48e8a633f980cf0510237f8', '0611230387', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `otp_type`
--

CREATE TABLE `otp_type` (
  `Type_ID` int(11) NOT NULL,
  `Type_Name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp_type`
--

INSERT INTO `otp_type` (`Type_ID`, `Type_Name`) VALUES
(1, 'ลืมรหัสผ่าน'),
(2, 'แก้ไขเบอร์โทรติดต่อ'),
(3, 'เข้าสู่ระบบ');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Pay_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Pay_DateTime` datetime NOT NULL,
  `Bank` int(11) NOT NULL,
  `Slip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Confirm` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `Reserve_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Pay_ID`, `User_ID`, `Pay_DateTime`, `Bank`, `Slip`, `Confirm`, `Note`, `Reserve_ID`) VALUES
(1, 1, '2022-02-23 06:06:48', 2, 'U1R1B4.jpg', 'cancel', 'ไม่พบข้อมูลการทำธุรกรรมทางการเงิน', 1),
(2, 1, '2022-02-23 06:10:32', 2, 'U1R2B4.jpg', 'success', '', 2),
(3, 1, '2022-02-23 06:10:32', 2, 'U1R3B4.jpg', 'success', '', 3),
(4, 3, '2022-02-23 06:10:32', 2, 'U3R4B4.jpg', 'success', '', 4),
(5, 4, '2022-06-16 18:12:11', 2, 'U4R6B2.png', 'success', '', 5),
(6, 4, '2022-06-26 22:11:19', 4, 'U4R7B4.png', 'success', '', 6),
(7, 4, '2022-06-26 22:47:20', 4, 'U4R9B4.png', 'waiting', '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `Reserve_ID` int(11) NOT NULL,
  `Reserve_Code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Re_Seate` int(11) NOT NULL,
  `Re_DateTime` datetime NOT NULL,
  `Re_TimeStamp` int(11) NOT NULL,
  `Go_Date` date NOT NULL,
  `Dock_car_id` int(11) NOT NULL,
  `Tic_Price_ID` int(11) NOT NULL,
  `Station_Start` int(11) NOT NULL,
  `Station_End` int(11) NOT NULL,
  `Total_Price` int(11) NOT NULL,
  `Status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`Reserve_ID`, `Reserve_Code`, `User_ID`, `Re_Seate`, `Re_DateTime`, `Re_TimeStamp`, `Go_Date`, `Dock_car_id`, `Tic_Price_ID`, `Station_Start`, `Station_End`, `Total_Price`, `Status`) VALUES
(1, 'V1230222', 1, 3, '2022-02-23 07:10:00', 1648903634, '2022-02-23', 1, 6, 1, 7, 210, 'waiting'),
(2, 'V1230222', 1, 2, '2022-03-13 07:10:00', 1648903634, '2022-02-23', 1, 6, 1, 5, 140, 'confirm'),
(3, 'V1230222', 1, 5, '2022-03-13 07:10:00', 1648903634, '2022-02-23', 1, 6, 1, 6, 350, 'waiting'),
(4, 'V1240222', 3, 12, '2022-03-14 07:10:00', 1648903634, '2022-02-24', 1, 6, 1, 6, 840, 'waiting'),
(5, 'V13010722', 4, 5, '2022-06-16 18:11:51', 1655377922, '2022-07-01', 13, 4, 1, 5, 275, 'confirm'),
(6, 'V61290622', 4, 3, '2022-06-26 22:11:14', 1656256275, '2022-06-29', 61, 4, 1, 5, 165, 'confirm'),
(7, 'V31270622', 4, 4, '2022-06-26 22:47:15', 1656258436, '2022-06-27', 31, 40, 7, 4, 200, 'confirm');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `Station_ID` int(11) NOT NULL,
  `Station_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Landmark` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Province` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `District` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SubDistrict` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lat` double NOT NULL,
  `Lng` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`Station_ID`, `Station_Name`, `Landmark`, `Province`, `District`, `SubDistrict`, `Lat`, `Lng`) VALUES
(1, 'นครปฐม (มาลัยแมน)', 'มหาวิทยาลัยศิลปากร', 'นครปฐม', 'เมืองนครปฐม', 'พระปฐมเจดีย์', 13.7877949, 99.9942832),
(2, 'บ้านโป่ง', 'ตลาดโต้รุ้ง', 'ราชบุรี', 'บ้านโป่ง', 'บ้านโป่ง', 13.8142498, 99.8738692),
(3, 'ลูกแก', 'ตลาดสดลูกแก', 'กาญจนบุรี', 'ท่ามะกา', 'ดอนขมิ้น', 13.868747, 99.82157),
(4, 'ท่าเรือ', 'ถนนตะคร้ำเอน', 'กาญจนบุรี', 'ท่ามะกา', 'ท่าเรือ', 13.9772007, 99.755129),
(5, 'ท่ามะกา', 'ซอยหนองหญ้าปล้อง', 'กาญจนบุรี', 'ท่ามะกา', 'ท่ามะกา', 13.9767574, 99.7282953),
(6, 'ท่าม่วง', 'ท่าตะคร้อ', 'กาญจนบุรี', 'ท่าล้อ', 'ท่าม่วง', 13.9606993, 99.707846),
(7, 'กาญจนบุรี (บขส.)', 'ข้างโรงแรมริเวอร์แคว', 'กาญจนบุรี', 'เมืองกาญจนบุรี', 'ปากแพรก', 13.8193085, 100.0598209);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Tick_ID` int(11) NOT NULL,
  `Tick_GetDateTime` datetime NOT NULL,
  `Tick_Code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pay_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Tick_ID`, `Tick_GetDateTime`, `Tick_Code`, `Pay_ID`) VALUES
(1, '2022-02-24 06:06:48', 'IV0101230265', 1),
(2, '2022-06-26 22:07:16', 'IV2614062222', 2),
(3, '2022-06-26 22:18:16', 'IV2614063222', 3);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_price`
--

CREATE TABLE `ticket_price` (
  `Tic_Price_ID` int(11) NOT NULL,
  `Station_Start` int(11) NOT NULL,
  `Station_End` int(11) NOT NULL,
  `Tic_Price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_price`
--

INSERT INTO `ticket_price` (`Tic_Price_ID`, `Station_Start`, `Station_End`, `Tic_Price`) VALUES
(1, 1, 2, 40),
(2, 1, 3, 45),
(3, 1, 4, 50),
(4, 1, 5, 55),
(5, 1, 6, 60),
(6, 1, 7, 70),
(7, 2, 3, 40),
(8, 2, 4, 45),
(9, 2, 5, 50),
(10, 2, 6, 55),
(11, 2, 7, 60),
(12, 2, 1, 100),
(13, 3, 4, 40),
(14, 3, 5, 45),
(15, 3, 6, 50),
(16, 3, 7, 55),
(17, 3, 1, 90),
(18, 3, 2, 85),
(19, 4, 5, 40),
(20, 4, 6, 45),
(21, 4, 7, 50),
(22, 4, 1, 85),
(23, 4, 2, 80),
(24, 4, 3, 75),
(25, 5, 6, 40),
(26, 5, 7, 45),
(27, 5, 1, 80),
(28, 5, 2, 75),
(29, 5, 3, 70),
(30, 5, 4, 60),
(31, 6, 7, 40),
(32, 6, 1, 75),
(33, 6, 2, 70),
(34, 6, 3, 60),
(35, 6, 4, 55),
(36, 6, 5, 50),
(37, 7, 1, 70),
(38, 7, 2, 60),
(39, 7, 3, 55),
(40, 7, 4, 50),
(41, 7, 5, 45),
(42, 7, 6, 40);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `F_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `L_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pos_ID` int(11) NOT NULL,
  `Last_Login` int(11) NOT NULL,
  `Reg_Date` int(11) NOT NULL,
  `Last_Update` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `F_Name`, `L_Name`, `Email`, `Pass`, `Phone`, `Pic`, `Pos_ID`, `Last_Login`, `Reg_Date`, `Last_Update`) VALUES
(1, 'สมจิตร', 'สระแก้ว', 'user@hotmail.com', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0123456789', '1.jpg', 1, 1623839074, 1623839074, NULL),
(2, 'น้ำทัพย์', 'จันทร์ทรา', 'driver@hotmail.com', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0123456789', '2.jpg', 2, 1623839074, 1623839074, NULL),
(3, 'สมัย', 'ใจหล่อ', 'officer@hotmail.com', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0123456789', '3.jpg', 3, 1623839074, 1623839074, NULL),
(4, 'ธรรมรงค์', 'โยกใหญ่', 'admin@hotmail.com', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0123456789', '4.jpg', 4, 1656255725, 1623839074, 1655703729),
(5, 'จักรินทร์', 'คุ้มใหญ่โต', '624259006@webmail.npru.ac.th', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0948123801', '5.jpg', 4, 1623839074, 1623839074, NULL),
(6, 'บุปผาชล', 'สุวรรณวิสุทธิ์', '624259018@webmail.npru.ac.th', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0624074699', '6.jpg', 4, 1623839074, 1623839074, NULL),
(7, 'ศรัณย์', 'เวียงสิมมา', '624259027@webmail.npru.ac.th', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0809190755', '7.jpg', 4, 1623839074, 1623839074, NULL),
(8, 'ศิริชัย', 'บุตรเพ็ง', '624259028@webmail.npru.ac.th', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0952419415', '8.jpg', 4, 1623839074, 1623839074, NULL),
(9, 'สุพัตตา', 'อยู่พิพัฒน์', '624259031@webmail.npru.ac.th', '$2y$10$GvumYll5HRknF1Z4hRIEPeU7MqX6mxn4aYsuo0d2FnJx71dRFn/.6', '0877216351', '9.jpg', 4, 1623839074, 1623839074, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `u_position`
--

CREATE TABLE `u_position` (
  `Pos_ID` int(11) NOT NULL,
  `Pos_Name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Pos_Name_TH` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `u_position`
--

INSERT INTO `u_position` (`Pos_ID`, `Pos_Name`, `Pos_Name_TH`) VALUES
(1, 'Customer', 'ลูกค้า'),
(2, 'Driver', 'พนักงานขับ'),
(3, 'Officer', 'พนักงานขายตั๋ว'),
(4, 'Admin', 'ผู้ดูแล');

-- --------------------------------------------------------

--
-- Table structure for table `van`
--

CREATE TABLE `van` (
  `Van_ID` int(11) NOT NULL,
  `Driver_ID` int(11) NOT NULL,
  `Van_Num` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Plate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Seats_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `van`
--

INSERT INTO `van` (`Van_ID`, `Driver_ID`, `Van_Num`, `Plate`, `Seats_Num`) VALUES
(1, 2, 'ม.1(ด)/77-56', 'กข2552', 12),
(2, 2, 'ม.2(จ)/81-98', 'ตก1551', 12),
(3, 2, 'ม.3(จ)/41-11', 'งง9984', 12),
(4, 2, 'ม.4(พ)/65-15', 'ลบ5411', 12),
(5, 2, 'ม.5(จ)/98-87', 'หด1137', 12),
(6, 2, 'ม.6(จ)/23-46', 'นม6446', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank_list`
--
ALTER TABLE `bank_list`
  ADD PRIMARY KEY (`bank_ID`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`Com_ID`),
  ADD KEY `Com_Type_ID` (`Com_Type_ID`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`Com_Type_ID`);

--
-- Indexes for table `dock_car`
--
ALTER TABLE `dock_car`
  ADD PRIMARY KEY (`Dock_car_id`),
  ADD KEY `Van_ID` (`Van_ID`,`Station_ID`),
  ADD KEY `fk_dock_car_station_id` (`Station_ID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`N_ID`),
  ADD KEY `N_ToUser` (`N_ToUser`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`OTP_ID`),
  ADD KEY `User` (`User`,`Type`),
  ADD KEY `fk_otp_type` (`Type`);

--
-- Indexes for table `otp_type`
--
ALTER TABLE `otp_type`
  ADD PRIMARY KEY (`Type_ID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Pay_ID`),
  ADD KEY `User_ID` (`User_ID`,`Reserve_ID`),
  ADD KEY `fk_payment_bank_id` (`Bank`),
  ADD KEY `fk_payment_reserve_id` (`Reserve_ID`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`Reserve_ID`),
  ADD KEY `User_ID` (`User_ID`,`Dock_car_id`,`Tic_Price_ID`,`Station_Start`,`Station_End`),
  ADD KEY `fk_reserva_duck_car_id` (`Dock_car_id`),
  ADD KEY `fk_reserva_tic_price_id` (`Tic_Price_ID`),
  ADD KEY `fk_reserva_station_start` (`Station_Start`),
  ADD KEY `fk_reserva_station_end` (`Station_End`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`Station_ID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Tick_ID`),
  ADD KEY `Pay_ID` (`Pay_ID`);

--
-- Indexes for table `ticket_price`
--
ALTER TABLE `ticket_price`
  ADD PRIMARY KEY (`Tic_Price_ID`),
  ADD KEY `Station_Start` (`Station_Start`,`Station_End`),
  ADD KEY `fk_station_end` (`Station_End`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`),
  ADD KEY `Pos_ID` (`Pos_ID`);

--
-- Indexes for table `u_position`
--
ALTER TABLE `u_position`
  ADD PRIMARY KEY (`Pos_ID`);

--
-- Indexes for table `van`
--
ALTER TABLE `van`
  ADD PRIMARY KEY (`Van_ID`),
  ADD KEY `Driver_ID` (`Driver_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_list`
--
ALTER TABLE `bank_list`
  MODIFY `bank_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `Com_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `Com_Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dock_car`
--
ALTER TABLE `dock_car`
  MODIFY `Dock_car_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `N_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `OTP_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp_type`
--
ALTER TABLE `otp_type`
  MODIFY `Type_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Pay_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `Reserve_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `Station_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `Tick_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_price`
--
ALTER TABLE `ticket_price`
  MODIFY `Tic_Price_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `van`
--
ALTER TABLE `van`
  MODIFY `Van_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `fk_complaint_com_type_id` FOREIGN KEY (`Com_Type_ID`) REFERENCES `complaint_type` (`Com_Type_ID`) ON DELETE CASCADE;

--
-- Constraints for table `dock_car`
--
ALTER TABLE `dock_car`
  ADD CONSTRAINT `fk_dock_car_station_id` FOREIGN KEY (`Station_ID`) REFERENCES `station` (`Station_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_dock_car_van_id` FOREIGN KEY (`Van_ID`) REFERENCES `van` (`Van_ID`) ON DELETE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `fk_notification_user_id` FOREIGN KEY (`N_ToUser`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `otp`
--
ALTER TABLE `otp`
  ADD CONSTRAINT `fk_otp_type` FOREIGN KEY (`Type`) REFERENCES `otp_type` (`Type_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_otp_user` FOREIGN KEY (`User`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `fk_payment_bank_id` FOREIGN KEY (`Bank`) REFERENCES `bank_list` (`bank_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_payment_reserve_id` FOREIGN KEY (`Reserve_ID`) REFERENCES `reservation` (`Reserve_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_payment_user_id` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `fk_reserva_duck_car_id` FOREIGN KEY (`Dock_car_id`) REFERENCES `dock_car` (`Dock_car_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserva_station_end` FOREIGN KEY (`Station_End`) REFERENCES `station` (`Station_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserva_station_start` FOREIGN KEY (`Station_Start`) REFERENCES `station` (`Station_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserva_tic_price_id` FOREIGN KEY (`Tic_Price_ID`) REFERENCES `ticket_price` (`Tic_Price_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_reserva_user_id` FOREIGN KEY (`User_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `fk_ticket_pay_id` FOREIGN KEY (`Pay_ID`) REFERENCES `payment` (`Pay_ID`) ON DELETE CASCADE;

--
-- Constraints for table `ticket_price`
--
ALTER TABLE `ticket_price`
  ADD CONSTRAINT `fk_station_end` FOREIGN KEY (`Station_End`) REFERENCES `station` (`Station_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_station_start` FOREIGN KEY (`Station_Start`) REFERENCES `station` (`Station_ID`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_Pos_ID` FOREIGN KEY (`Pos_ID`) REFERENCES `u_position` (`Pos_ID`) ON DELETE CASCADE;

--
-- Constraints for table `van`
--
ALTER TABLE `van`
  ADD CONSTRAINT `fk_van_emp_id` FOREIGN KEY (`Driver_ID`) REFERENCES `users` (`User_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
