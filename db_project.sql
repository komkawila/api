-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2020 at 12:05 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `am_id` int(10) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `am_user` varchar(20) NOT NULL COMMENT 'ชื่อ Login เข้าระบบ',
  `am_pass` varchar(15) NOT NULL COMMENT 'รหัสผ่าน',
  `am_name` varchar(40) NOT NULL COMMENT 'ชื่อ - นามสกุล',
  `am_tel` varchar(10) NOT NULL COMMENT 'เบอร์โทร',
  `am_email` varchar(150) NOT NULL COMMENT 'อีเมล์',
  `am_status` varchar(20) NOT NULL COMMENT 'สถานะ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางผู้ดูแลระบบ';

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`am_id`, `am_user`, `am_pass`, `am_name`, `am_tel`, `am_email`, `am_status`) VALUES
(13, 'admin', '1234', 'สุริยา จันทะนาลา', '0877711545', 'aom.j@hotmail.com', 'ผู้ดูแลระบบ');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `bill_rent_id` int(11) NOT NULL COMMENT 'รหัสใบจอง(fk)',
  `bill_mb_id` int(11) NOT NULL COMMENT 'รหัสผู้เช่า(fk)',
  `bill_name` varchar(150) NOT NULL COMMENT 'ชื่อผู้เช่า',
  `bill_total` float NOT NULL COMMENT 'ราคารวม',
  `bill_date` datetime NOT NULL COMMENT 'วันที่ออกใบเสร็จ',
  `bill_status` varchar(20) NOT NULL COMMENT 'สถานะ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตาราง บิลใบเสร็จ';

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_rent_id`, `bill_mb_id`, `bill_name`, `bill_total`, `bill_date`, `bill_status`) VALUES
(1, 3, 3, 'สุริยา จันทะนาลา', 1000, '2020-02-07 06:47:24', '1'),
(2, 3, 3, 'สุริยา จันทะนาลา', 1044, '2020-02-07 06:54:05', '1'),
(3, 3, 3, 'สุริยา จันทะนาลา', 1060, '2020-02-07 06:58:51', '1'),
(4, 5, 5, 'ชื่อ - นามสกุล', 800, '2020-03-14 20:16:54', '1'),
(5, 6, 6, 'ชื่อ - นามสกุล', 1000, '2020-10-17 12:48:25', '1'),
(6, 6, 6, 'ชื่อ - นามสกุล', 1000, '2020-10-25 17:23:09', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bl_bill_id` int(11) NOT NULL COMMENT 'รหัสบิล',
  `bl_utility_id` int(11) NOT NULL COMMENT 'รหัสสาธารณูปโภค ',
  `bl_utility_name` varchar(150) NOT NULL COMMENT 'ชื่อสาธารณูปโภค',
  `bl_num` int(11) NOT NULL COMMENT 'จำนวนหน่วนที่ใช้',
  `bl_price` float NOT NULL COMMENT 'ราคา'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bill_detail`
--

INSERT INTO `bill_detail` (`bl_bill_id`, `bl_utility_id`, `bl_utility_name`, `bl_num`, `bl_price`) VALUES
(0, 1, 'ค่าไฟ', 3, 8),
(0, 2, 'ค่าน้ำ', 1, 20),
(3, 1, 'ค่าไฟ', 5, 8),
(3, 2, 'ค่าน้ำ', 1, 20),
(4, 0, '', 2, 0),
(4, 0, '', 2, 0),
(5, 0, '', 10, 0),
(5, 0, '', 10, 0),
(6, 0, '', 5, 0),
(6, 0, '', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `contact_name` varchar(150) NOT NULL COMMENT 'ชื่อผู้ติดต่อ',
  `contact_tel` varchar(10) NOT NULL COMMENT 'เบอร์โทร',
  `contact_email` varchar(150) NOT NULL COMMENT 'อีเมล์',
  `contact_title` varchar(150) NOT NULL COMMENT 'เรื่องติดต่อ',
  `contact_detail` text NOT NULL COMMENT 'รายละเอียด',
  `contact_date` datetime NOT NULL COMMENT 'วันที่',
  `contact_status` varchar(1) NOT NULL COMMENT 'สถานะ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_tel`, `contact_email`, `contact_title`, `contact_detail`, `contact_date`, `contact_status`) VALUES
(6, 'ฟกหฟกฟ', '5464565654', 'ddd@hotmail.com', 'dsfdsfds', 'fdsfdsf', '2020-03-01 11:02:02', '2'),
(7, 'ฟกหฟกฟ', '5464565654', 'ddd@hotmail.com', 'dsfdsfds', 'กหฟกฟหก', '2020-03-01 11:19:55', '2'),
(8, '7787', '4545', 'glo_you_love@hotmail.co.th', '36565', '14454', '2020-10-23 13:07:33', '2'),
(9, 'sdfs', '026506', 'asdadasd', 'asdada', 'dasdas', '2020-10-28 06:12:33', '2');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `mb_id` int(10) NOT NULL COMMENT 'รหัสสมาชิก(pk)',
  `mb_user` varchar(20) NOT NULL COMMENT 'ชื่อ Login เข้าระบบ',
  `mb_pass` varchar(15) NOT NULL COMMENT 'รหัสผ่าน',
  `mb_name` varchar(150) NOT NULL COMMENT 'ชื่อ - นามสกุล',
  `mb_card_id` varchar(17) NOT NULL COMMENT 'เลขที่บัตรประชาชน',
  `mb_address` text NOT NULL COMMENT 'ที่อยู่',
  `mb_district` varchar(50) NOT NULL COMMENT 'อำเภอ',
  `mb_province` varchar(50) NOT NULL COMMENT 'จังหวัด',
  `mb_zipcode` varchar(5) NOT NULL COMMENT 'รหัสไปรษณีย์',
  `mb_tel` varchar(10) NOT NULL COMMENT 'เบอร์โทร',
  `mb_email` varchar(150) NOT NULL COMMENT 'อีเมล์'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางสมาชิก';

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`mb_id`, `mb_user`, `mb_pass`, `mb_name`, `mb_card_id`, `mb_address`, `mb_district`, `mb_province`, `mb_zipcode`, `mb_tel`, `mb_email`) VALUES
(2, 'user', '1234', 'สุริยา จันทะนาลา', '1450100100451', '988 ม 5 ต ปอภาร', 'เมือง', 'กระบี่', '45000', '0801813658', 'aom.j@hotmail.com'),
(3, '1450100100452', '1234', 'สุริยา จันทะนาลา', '1450100100452', '988 ม 5 ต ปอภาร', 'เมือง', 'เชียงใหม่', '45677', '0801813658', 'aom.j@hotmail.com'),
(4, '1111111111111', '1234', 'ชื่อ - นามสกุล', '1111111111111', 'กกกกกกกห', 'หหหห', 'ตราด', '78444', '0212548798', 'sss@hotmail.com'),
(5, '2222222222222', '1234', 'ชื่อ - นามสกุล', '2222222222222', 'กกกกกกกห', 'หหหห', 'เชียงราย', '78444', '0212548798', 'sss@hotmail.com'),
(6, '3333333333333', '1234', 'ชื่อ - นามสกุล', '3333333333333', 'กกกกกกกห', 'หหหห', 'ตราด', '78444', '0212548798', 'sss@hotmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `meter`
--

CREATE TABLE `meter` (
  `meter_id` int(11) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `meter_utility_id` int(11) NOT NULL COMMENT 'รหัสค่าค่าสาธารณูปโภค(fk)',
  `meter_room_id` int(11) NOT NULL COMMENT 'รหัสห้องพัก(fk)',
  `meter_unit` int(11) NOT NULL COMMENT 'หน่วย',
  `meter_update` date NOT NULL COMMENT 'วันที่อัพเดท'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตาราง มิเตอร์';

--
-- Dumping data for table `meter`
--

INSERT INTO `meter` (`meter_id`, `meter_utility_id`, `meter_room_id`, `meter_unit`, `meter_update`) VALUES
(1, 1, 3, 10, '2020-02-07'),
(2, 2, 3, 3, '2020-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `province_id` int(2) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `province_name` varchar(50) NOT NULL COMMENT 'ชื่อจังหวัด'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตารางข้อมูลจังหวัดในประเทศไทย';

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`province_id`, `province_name`) VALUES
(1, 'กระบี่'),
(2, 'กรุงเทพมหานคร'),
(3, 'กาญจนบุรี'),
(4, 'กาฬสินธุ์'),
(5, 'กำแพงเพชร'),
(6, 'ขอนแก่น'),
(7, 'จันทบุรี'),
(8, 'ฉะเชิงเทรา'),
(9, 'ชลบุรี'),
(10, 'ชัยนาท'),
(11, 'ชัยภูมิ'),
(12, 'ชุมพร'),
(13, 'เชียงราย'),
(14, 'เชียงใหม่'),
(15, 'ตรัง'),
(16, 'ตราด'),
(17, 'ตาก'),
(18, 'นครนายก'),
(19, 'นครปฐม'),
(20, 'นครพนม'),
(21, 'นครราชสีมา'),
(22, 'นครศรีธรรมราช'),
(23, 'นครสวรรค์'),
(24, 'นนทบุรี'),
(25, 'นราธิวาส'),
(26, 'น่าน'),
(27, 'บุรีรัมย์'),
(28, 'ปทุมธานี'),
(29, 'ประจวบคีรีขันธ์'),
(30, 'ปราจีนบุรี'),
(31, 'ปัตตานี'),
(32, 'พระนครศรีอยุธยา'),
(33, 'พะเยา'),
(34, 'พังงา'),
(35, 'พัทลุง'),
(36, 'พิจิตร'),
(37, 'พิษณุโลก'),
(38, 'เพชรบุรี'),
(39, ' เพชรบูรณ์'),
(40, 'แพร่'),
(41, 'ภูเก็ต'),
(42, 'มหาสารคาม'),
(43, 'มุกดาหาร'),
(44, 'แม่ฮ่องสอน'),
(45, 'ยโสธร'),
(46, 'ยะลา'),
(47, 'ร้อยเอ็ด'),
(48, 'ระนอง'),
(49, 'ระยอง'),
(50, 'ราชบุรี'),
(51, 'ลพบุรี'),
(52, 'ลำปาง'),
(53, 'ลำพูน'),
(54, 'เลย'),
(55, 'ศรีสะเกษ'),
(56, 'สกลนคร'),
(57, 'สงขลา'),
(58, 'สตูล'),
(59, 'สมุทรปราการ'),
(60, 'สมุทรสงคราม'),
(61, 'สมุทรสาคร'),
(62, 'สระแก้ว'),
(63, 'สระบุรี'),
(64, 'สิงห์บุรี'),
(65, 'สุโขทัย'),
(66, 'สุพรรณบุรี'),
(67, 'สุราษฎร์ธานี'),
(68, 'สุรินทร์'),
(69, 'หนองคาย'),
(70, 'หนองบัวลำภู'),
(71, 'อ่างทอง'),
(72, 'อำนาจเจริญ'),
(73, 'อุดรธานี'),
(74, 'อุตรดิตถ์'),
(75, 'อุทัยธานี'),
(76, 'อุบลราชธานี'),
(77, 'จังหวัดบึงกาฬ');

-- --------------------------------------------------------

--
-- Table structure for table `rent`
--

CREATE TABLE `rent` (
  `rent_id` int(11) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `rent_mb_id` int(11) NOT NULL COMMENT 'รหัสผู้เช่า(fk)',
  `rent_room_id` int(11) NOT NULL COMMENT 'รหัสห้องเช่า(fk)',
  `rent_deposits` int(11) NOT NULL COMMENT 'ค่ามัดจำ',
  `rent_check_in` date NOT NULL COMMENT 'วันที่เข้าพัก',
  `rent_status` varchar(20) NOT NULL COMMENT 'สถานะ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตาราง ข้อมูลการเช่า';

--
-- Dumping data for table `rent`
--

INSERT INTO `rent` (`rent_id`, `rent_mb_id`, `rent_room_id`, `rent_deposits`, `rent_check_in`, `rent_status`) VALUES
(2, 2, 3, 500, '2013-11-20', 'เลิกใช้บริการ'),
(3, 3, 3, 500, '2013-11-26', 'ใช้บริการ'),
(4, 0, 6, 500, '2020-02-15', 'เลิกใช้บริการ'),
(5, 5, 6, 500, '2020-02-20', 'ใช้บริการ'),
(6, 6, 4, 500, '2020-02-08', 'ใช้บริการ');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(10) NOT NULL COMMENT 'รหัสห้องพัก',
  `room_type_id` int(5) NOT NULL COMMENT 'ประเภทห้อง',
  `room_name` varchar(150) NOT NULL COMMENT 'ชื่อห้อง',
  `room_status` varchar(20) NOT NULL COMMENT 'สถานะ'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตาราง ห้องพัก';

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type_id`, `room_name`, `room_status`) VALUES
(4, 1, '1/2', 'ห้องเช่าแล้ว'),
(3, 1, '1/1', 'ห้องเช่าแล้ว'),
(5, 1, '1/3', 'ห้องว่าง'),
(6, 2, '1/4', 'ห้องเช่าแล้ว'),
(7, 2, '1/5', 'ห้องว่าง'),
(8, 2, '1/6', 'ห้องว่าง');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(150) NOT NULL,
  `type_detail` text NOT NULL COMMENT 'รายละเอียด',
  `type_price` int(7) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`type_id`, `type_name`, `type_detail`, `type_price`) VALUES
(1, 'ห้องเช่าแบบปูกระเบื้อง', 'ภายในห้องมีห้องน้ำ1ห้องและมีมุ้งลวด', 1000),
(2, 'ห้องเช่าแบบไม่ปูกระเบื้อง', 'ภายในห้องมีห้องน้ำ1ห้องและไม่มีมุ้งลวด', 800),
(4, '123', '1111', 3500);

-- --------------------------------------------------------

--
-- Table structure for table `utility`
--

CREATE TABLE `utility` (
  `utility_id` int(5) NOT NULL COMMENT 'รหัสตาราง(pk)',
  `utility_name` varchar(150) NOT NULL COMMENT 'ชื่อสาธารณูปโภค',
  `utility_unit_price` int(5) NOT NULL COMMENT 'ราคาต่อหน่วย'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ตาราง ค่าสาธารณูปโภค ค่าน้ำ ค่าไฟล์ อื่นๆ';

--
-- Dumping data for table `utility`
--

INSERT INTO `utility` (`utility_id`, `utility_name`, `utility_unit_price`) VALUES
(1, 'ค่าไฟ', 7),
(2, 'ค่าน้ำ', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`am_id`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`mb_id`);

--
-- Indexes for table `meter`
--
ALTER TABLE `meter`
  ADD PRIMARY KEY (`meter_id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `rent`
--
ALTER TABLE `rent`
  ADD PRIMARY KEY (`rent_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`utility_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `am_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `mb_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสสมาชิก(pk)', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `meter`
--
ALTER TABLE `meter`
  MODIFY `meter_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `province_id` int(2) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `rent`
--
ALTER TABLE `rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'รหัสห้องพัก', AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `utility`
--
ALTER TABLE `utility`
  MODIFY `utility_id` int(5) NOT NULL AUTO_INCREMENT COMMENT 'รหัสตาราง(pk)', AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
