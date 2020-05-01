-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2020 at 01:49 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `btweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpID` varchar(15) NOT NULL,
  `E_NAME` varchar(50) NOT NULL,
  `DID` int(1) NOT NULL,
  `SAL` double(10,2) NOT NULL,
  `E_MOB` varchar(14) NOT NULL,
  `E_MAIL` varchar(50) NOT NULL,
  `JOIN_DATE` datetime NOT NULL DEFAULT current_timestamp(),
  `ADDED_BY` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpID`, `E_NAME`, `DID`, `SAL`, `E_MOB`, `E_MAIL`, `JOIN_DATE`, `ADDED_BY`) VALUES
('BT-01AD', 'TANVIR TANJUM SHOURAV', 1, 200000.00, '01515217821', 'tanjumtanvir@gmail.com', '2020-04-14 22:58:19', 'superuser'),
('BT-01MG', 'RAHATUL MAKSUD', 2, 100000.00, '01735493564', 'ratulmaksud@gmail.com', '2020-04-14 23:01:42', 'BT-01AD'),
('BT-01SM', 'ANIKA TAHSIN TINA', 3, 50000.00, '01815247877', 'tinatahsin3@gmail.com', '2020-04-15 01:38:21', 'BT-01AD'),
('BT-02AD', 'ZISHAD HOSSAIN LIMON', 1, 170000.00, '01521203725', 'zishadhossainlimon@gmail.com', '2020-04-15 01:47:51', 'BT-01AD'),
('BT-02MG', 'MEDUL HOSSAIN MASUM', 2, 75500.00, '01515478520', 'medul@gmail.com', '2020-05-01 02:52:00', 'BT-01AD'),
('BT-02SM', 'SHARABAN TAHURA', 3, 55000.00, '01720014532', 'sh.tahura@gmail.com', '2020-04-16 20:37:32', 'BT-01AD'),
('BT-03AD', 'DEWAN AMOR CHOWDHURY', 1, 170000.00, '01515247821', 'amorchy@gmail.com', '2020-04-15 01:57:16', 'BT-02AD'),
('BT-03MG', 'SHAHRIAR OMI', 2, 65500.00, '01515478502', 'omi@gmail.com', '2020-05-01 02:53:40', 'BT-01AD'),
('BT-03SM', 'ROUFUL RAJ', 3, 45000.00, '01933082811', 'roufulraj11@gmail.com', '2020-05-01 16:51:11', 'BT-01AD'),
('BT-04MG', 'IFTEKHAR LIUM', 2, 65500.00, '01515478512', 'lium@gmail.com', '2020-05-01 02:54:43', 'BT-01AD'),
('BT-04SM', 'AYMAN SADIK', 3, 47000.00, '01700981100', 'ay.man.sadik@gmail.com', '2020-05-01 16:55:38', 'BT-01AD'),
('BT-05MG', 'SAKIB SADAT', 2, 65500.00, '01515478500', 'sakib@gmail.com', '2020-05-01 02:57:54', 'BT-01AD'),
('BT-05SM', 'OMME MARIA', 3, 45000.00, '01829991100', 'maria.omme@gmail.com', '2020-05-01 16:56:55', 'BT-01AD'),
('BT-06MG', 'ABDULLAH', 2, 55000.00, '01745815819', 'abdullah@gmail.com', '2020-05-01 16:52:23', 'BT-01AD'),
('BT-06SM', 'MOHIBULLAH KARIM', 3, 45000.00, '0189922111', 'karim.0990@gmail.com', '2020-05-01 17:02:04', 'BT-01AD'),
('BT-07MG', 'IB NAT', 2, 50000.00, '01788111188', 'ib.nat@gmail.com', '2020-05-01 16:53:46', 'BT-01AD'),
('BT-07SM', 'MOWMITA', 3, 48000.00, '01788219011', 'mow.mita@gmail.com', '2020-05-01 17:02:57', 'BT-01AD'),
('BT-08MG', 'ASHFAK AFZAL CHOWDHURY', 2, 60000.00, '01739110011', 'asfakchowdhury@gmail.com', '2020-05-01 16:59:00', 'BT-01AD'),
('BT-08SM', 'FAHIM ISHTIAK', 3, 45000.00, '01999901122', 'ishtiak@gmail.com', '2020-05-01 17:04:06', 'BT-01AD'),
('BT-09MG', 'IFTEKHAR RAFSHAN', 2, 60000.00, '01517221199', 'rafshan.ifti@gmail.com', '2020-05-01 17:00:08', 'BT-01AD'),
('superuser', 'SUPER USER', 1, 0.00, '00000000000', 'super@super.super', '2020-03-27 01:25:08', 'superuser');

-- --------------------------------------------------------

--
-- Table structure for table `emp_image`
--

CREATE TABLE `emp_image` (
  `IEmpID` varchar(15) DEFAULT NULL,
  `EmpIMG` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `LID` varchar(15) NOT NULL,
  `SID` int(1) NOT NULL,
  `PASS` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`LID`, `SID`, `PASS`) VALUES
('BT-01AD', 1, '7ba0691b7777b6581397456412a41390'),
('BT-01MG', 2, '9a415b754803aa4a3af9355a8b8be7e8'),
('BT-01SM', 3, '94027a80eed73ea5643a283d5973d442'),
('BT-02AD', 1, '01a5480f5021b4d8f231de3489e61c42'),
('BT-02MG', 2, '76e9a17937b75b73a8a430acf210feaf'),
('BT-02SM', 3, '8073bd4ed0fe0c330290c58056a2cd5e'),
('BT-03AD', 1, '5da2297bad6924526e48e00dbfc3c27a'),
('BT-03MG', 2, 'ca3a856a28df7d77d948949206ff9fdf'),
('BT-03SM', 3, '820e694038fadbf9b60b834215b46fdb'),
('BT-04MG', 2, 'c1285fcadc52c0d3dc8813fc2c2e2b2a'),
('BT-04SM', 3, 'dd03de08bfdff4d8ab01117276564cc7'),
('BT-05MG', 2, '8df7c2e3c3c3be098ef7b382bd2c37ba'),
('BT-05SM', 3, 'bcb7c13ff9746a60fa8c3e748acd054d'),
('BT-06MG', 2, '02b5b45ce743bc3f285ec4d39b5968c3'),
('BT-06SM', 3, 'cc598895a76714dff4c34b2361569b37'),
('BT-07MG', 2, 'a82d922b133be19c1171534e6594f754'),
('BT-07SM', 3, 'b7ae8fecf15b8b6c3c69eceae636d203'),
('BT-08MG', 2, '691dcb1d65f31967a874d18383b9da75'),
('BT-08SM', 3, '01b6397888c09d84f3dc89d807aa1004'),
('BT-09MG', 2, '713fd63d76c8a57b16fc433fb4ae718a'),
('superuser', 1, '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `NoteID` int(255) NOT NULL,
  `NoteName` varchar(50) NOT NULL,
  `OwnerID` varchar(10) NOT NULL,
  `Text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`NoteID`, `NoteName`, `OwnerID`, `Text`) VALUES
(1, 'Contact', 'BT-01AD', 'Abbu: 01552321780\r\nAmmu: 01720017312\r\nVaiya: 01521308969'),
(2, 'Task', 'BT-01AD', 'Complete javascript validation. (DONE)\r\nAjax. (DONE)\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `PID` varchar(15) NOT NULL,
  `P_NAME` varchar(50) NOT NULL,
  `TYPE` varchar(20) NOT NULL,
  `AVAILABILITY` varchar(20) NOT NULL DEFAULT 'AVAILABLE',
  `QUANTITY` int(15) NOT NULL,
  `BUY_PRICE` double(10,2) NOT NULL,
  `SELL_PRICE` double(10,2) NOT NULL,
  `MOD_BY` varchar(15) NOT NULL,
  `Add_PDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`PID`, `P_NAME`, `TYPE`, `AVAILABILITY`, `QUANTITY`, `BUY_PRICE`, `SELL_PRICE`, `MOD_BY`, `Add_PDate`) VALUES
('K-04', 'CORSAIR STRAFE', 'KEYBOARD', 'AVAILABLE', 19, 14000.00, 15400.00, 'BT-01MG', '2020-05-01 17:29:14'),
('K-1', 'A4TECH BLOODY B125', 'KEYBOARD', 'AVAILABLE', 18, 2400.00, 2500.00, 'BT-01MG', '2020-04-18 21:31:27'),
('K-2', 'GAMDIAS HERMES M5 WHITE MECHANICAL GAMING KEYBOARD', 'KEYBOARD', 'AVAILABLE', 12, 3850.00, 4000.00, 'BT-01MG', '2020-04-18 21:32:57'),
('K-3', 'CORSAIR K95 RGB PLATINUM', 'KEYBOARD', 'AVAILABLE', 6, 16700.00, 17900.00, 'BT-01MG', '2020-04-18 21:33:50'),
('L-01', 'HP ENVY X360M', 'LAPTOP', 'AVAILABLE', 50, 125000.00, 130000.00, 'BT-01AD', '2020-04-18 20:29:12'),
('L-02', 'ASUS TUF FX505DD', 'LAPTOP', 'AVAILABLE', 20, 67000.00, 68500.00, 'BT-01MG', '2020-04-18 20:56:18'),
('L-03', 'ASUS ROG STRIX G531GT', 'LAPTOP', 'AVAILABLE', 11, 110000.00, 112000.00, 'BT-01MG', '2020-04-18 20:57:28'),
('L-04', 'AVITA ADMIROR', 'LAPTOP', 'AVAILABLE', 8, 110000.00, 114950.00, 'BT-01MG', '2020-05-01 17:18:49'),
('L-05', 'LENOVO IP720S', 'LAPTOP', 'AVAILABLE', 15, 108000.00, 120000.00, 'BT-01MG', '2020-05-01 17:20:05'),
('L-06', 'RAZER BLADE 15', 'LAPTOP', 'AVAILABLE', 5, 255000.00, 269500.00, 'BT-01MG', '2020-05-01 17:23:21'),
('M-01', 'RAZER DEATHADDER ELITE-ERGONOMIC', 'MOUSE', 'AVAILABLE', 23, 4000.00, 4400.00, 'BT-01MG', '2020-04-18 21:04:31'),
('M-02', 'A4TECH BLOODY V3MA', 'MOUSE', 'AVAILABLE', 45, 1500.00, 1800.00, 'BT-01MG', '2020-04-18 21:05:16'),
('M-03', 'BENQ ZOWIE EC1-A', 'MOUSE', 'AVAILABLE', 17, 8500.00, 8700.00, 'BT-01MG', '2020-04-18 21:07:17'),
('M-04', 'BENQ ZOWIE EC2-A GAMING MOUSE', 'MOUSE', 'AVAILABLE', 9, 7500.00, 7800.00, 'BT-01MG', '2020-05-01 17:08:56'),
('M-05', ' LENOVO YOGA WIRELESS MOUSE', 'MOUSE', 'AVAILABLE', 20, 5000.00, 5500.00, 'BT-01MG', '2020-05-01 17:28:03'),
('M0-04', 'MSI OPTIX G241VC 24-INCH', 'MONITOR', 'AVAILABLE', 14, 16500.00, 17500.00, 'BT-01MG', '2020-05-01 17:14:00'),
('MO-01', 'ASUS ROG STRIX XG49VQ', 'MONITOR', 'AVAILABLE', 8, 135000.00, 145390.00, 'BT-01MG', '2020-04-18 20:59:44'),
('MO-02', 'LG 22MK600M', 'MONITOR', 'AVAILABLE', 30, 10400.00, 11000.00, 'BT-01MG', '2020-04-18 21:00:57'),
('MO-03', 'ASUS VG258Q', 'MONITOR', 'AVAILABLE', 15, 26500.00, 28210.00, 'BT-01MG', '2020-04-18 21:01:37'),
('P-1', 'INTEL CORE I9-9900K 9TH GEN.', 'PROCCESOR', 'AVAILABLE', 47, 50000.00, 50200.00, 'BT-01MG', '2020-04-18 21:26:28'),
('P-2', 'AMD RYZEN 9 3900X', 'PROCCESOR', 'AVAILABLE', 26, 45800.00, 48000.00, 'BT-01MG', '2020-04-18 21:27:05'),
('P-3', 'AMD RYZEN 3 2200G', 'PROCCESOR', 'AVAILABLE', 30, 8200.00, 9000.00, 'BT-01MG', '2020-04-18 21:27:41'),
('P-4', 'INTEL 7TH GENERATION CORE I5-7400 PROCESSOR', 'PROCCESOR', 'AVAILABLE', 35, 15800.00, 17360.00, 'BT-01MG', '2020-05-01 17:16:32'),
('PHS-1', 'TRANSCEND J25M3 1TB USB 3.0', 'PORTABLE HDD/SSD', 'AVAILABLE', 27, 5200.00, 5500.00, 'BT-01MG', '2020-04-18 21:28:49'),
('PHS-2', 'WESTERN DIGITAL ELEMENTS 1TB', 'PORTABLE HDD/SSD', 'AVAILABLE', 40, 4350.00, 4670.00, 'BT-01MG', '2020-04-18 21:29:33'),
('PHS-3', 'TRANSCEND ESD350C 240GB PORTABLE', 'PORTABLE HDD/SSD', 'AVAILABLE', 27, 7900.00, 8140.00, 'BT-01MG', '2020-04-18 21:30:31'),
('PRI-04', 'CANON PIXMA G4010 ', 'PRINTER', 'AVAILABLE', 20, 21000.00, 21500.00, 'BT-01MG', '2020-05-01 17:24:53'),
('PRI-1', 'CANON IMAGECLASS MF244DW', 'PRINTER', 'AVAILABLE', 30, 21000.00, 21500.00, 'BT-01MG', '2020-04-18 21:35:43'),
('PRI-2', 'CANON I-SENSYS LBP352X', 'PRINTER', 'AVAILABLE', 8, 65000.00, 65500.00, 'BT-01MG', '2020-04-18 21:36:37'),
('PRI-3', 'BROTHER HL-L2320D LASER PRINTER', 'PRINTER', 'AVAILABLE', 37, 7900.00, 8100.00, 'BT-01MG', '2020-04-18 21:37:04'),
('RAM-1', 'CORSAIR VENGEANCE LPX 4GB', 'RAM', 'AVAILABLE', 250, 2600.00, 2700.00, 'BT-01MG', '2020-04-18 21:14:26'),
('RAM-2', 'ADATA XPG GAMMIX D10 8GB', 'RAM', 'AVAILABLE', 200, 4100.00, 4340.00, 'BT-01MG', '2020-04-18 21:15:38'),
('RAM-3', 'TEAM XTREEM 16GB (8GB X 2)', 'RAM', 'AVAILABLE', 150, 13100.00, 13400.00, 'BT-01MG', '2020-04-18 21:18:09'),
('ROM-04', 'GALAX GAMER SSD L 480GB SATA III', 'ROM', 'AVAILABLE', 30, 6800.00, 7000.00, 'BT-01MG', '2020-05-01 17:26:26'),
('ROM-1', 'WESTERN DIGITAL 1TB BLUE DESKTOP HDD', 'ROM', 'AVAILABLE', 45, 3700.00, 3910.00, 'BT-01MG', '2020-04-18 21:20:51'),
('ROM-2', 'TRANSCEND J25A3K 1TB USB 3.0 BLACK EXTERNAL HDD', 'ROM', 'AVAILABLE', 31, 5000.00, 5200.00, 'BT-01MG', '2020-04-18 21:21:54'),
('ROM-3', 'SEAGATE STHH1000300 BACKUP PLUS ULTRA TOUCH 1TB PO', 'ROM', 'AVAILABLE', 53, 5700.00, 6080.00, 'BT-01MG', '2020-04-18 21:22:44'),
('SOFT-04', 'ESET INTERNET SECURITY ANTIVIRUS', 'SOFTWARE', 'AVAILABLE', 40, 1350.00, 1499.00, 'BT-01MG', '2020-05-01 17:22:07'),
('SOFT-1', 'MICROSOFT OFFICE 2019 HOME', 'SOFTWARE', 'AVAILABLE', 34, 20000.00, 21146.00, 'BT-01MG', '2020-04-18 21:49:50'),
('SOFT-2', 'CREATIVE SUITE® 6', 'SOFTWARE', 'AVAILABLE', 11, 80000.00, 84501.00, 'BT-01MG', '2020-04-18 21:51:42'),
('SOFT-3', 'KASPERSKY TOTAL SECURITY', 'SOFTWARE', 'AVAILABLE', 33, 8200.00, 8374.00, 'BT-01MG', '2020-04-18 21:54:53'),
('SPR-1', 'GOLDEN FIELD 302C BT', 'SPEAKER', 'AVAILABLE', 11, 4600.00, 5000.00, 'BT-01MG', '2020-04-18 21:09:36'),
('SPR-2', 'GOOGLE HOME SMART ASSISTANT & SMART SPEAKER', 'SPEAKER', 'AVAILABLE', 13, 10800.00, 11200.00, 'BT-01MG', '2020-04-18 21:10:46'),
('SPR-3', 'GOLDEN FIELD U-20F', 'SPEAKER', 'AVAILABLE', 17, 9000.00, 9500.00, 'BT-01MG', '2020-04-18 21:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `SLID` int(254) NOT NULL,
  `PID` varchar(15) NOT NULL,
  `QUANT` int(15) NOT NULL,
  `OB_AMMOUNT` double(10,2) NOT NULL,
  `PROFIT` double(10,2) NOT NULL,
  `C_NAME` varchar(25) NOT NULL,
  `C_MOB` varchar(14) NOT NULL,
  `SOLD_BY` varchar(15) NOT NULL,
  `Sell_SDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`SLID`, `PID`, `QUANT`, `OB_AMMOUNT`, `PROFIT`, `C_NAME`, `C_MOB`, `SOLD_BY`, `Sell_SDate`) VALUES
(1, 'K-1', 2, 4900.00, 100.00, 'TANVIR AHMED', '01515247854', 'BT-01AD', '2020-04-30 20:51:49'),
(2, 'K-1', 2, 4940.00, 140.00, 'BILLI ILISH', '01892201221', 'BT-01SM', '2020-05-01 17:33:20'),
(3, 'K-04', 1, 15000.00, 1000.00, 'SHAMA', '01788123311', 'BT-01SM', '2020-05-01 17:34:23'),
(4, 'L-04', 2, 226000.00, 6000.00, 'MAISHA', '01977118911', 'BT-01SM', '2020-05-01 17:36:21'),
(5, 'M0-04', 1, 17100.00, 600.00, 'KRITANJALI DHAR', '01722819911', 'BT-01SM', '2020-05-01 17:38:29'),
(6, 'M-04', 3, 22980.00, 480.00, 'KRITANJALI DHAR', '01722819911', 'BT-01SM', '2020-05-01 17:38:56'),
(7, 'SPR-2', 2, 22000.00, 400.00, 'KRITANJALI DHAR', '01722819911', 'BT-01SM', '2020-05-01 17:40:14'),
(8, 'PHS-1', 5, 27250.00, 1250.00, 'UMME FAIZA', '01911082212', 'BT-01SM', '2020-05-01 17:41:44'),
(9, 'L-03', 1, 111500.00, 1500.00, 'MOWMITA CHOWDHURY', '01966787858', 'BT-01SM', '2020-05-01 17:44:09'),
(10, 'M-04', 3, 23100.00, 600.00, 'RATUL', '01861990911', 'BT-01SM', '2020-05-01 17:45:02'),
(11, 'K-3', 1, 17000.00, 300.00, 'MOHIN HAIDAR', '01999122212', 'BT-01SM', '2020-05-01 17:46:01');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `SID` int(1) NOT NULL,
  `DESIGNATION` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`SID`, `DESIGNATION`) VALUES
(1, 'ADMIN'),
(2, 'MANAGER'),
(3, 'SALESMAN'),
(4, 'UNASSIGNED');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpID`),
  ADD UNIQUE KEY `E_MOB` (`E_MOB`),
  ADD UNIQUE KEY `E_MAIL` (`E_MAIL`),
  ADD KEY `D_ID` (`DID`),
  ADD KEY `ADDED_BY` (`ADDED_BY`);

--
-- Indexes for table `emp_image`
--
ALTER TABLE `emp_image`
  ADD KEY `IEmpID` (`IEmpID`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`LID`),
  ADD KEY `SID` (`SID`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`NoteID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`PID`),
  ADD KEY `MOD_BY` (`MOD_BY`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`SLID`),
  ADD KEY `PID` (`PID`),
  ADD KEY `SOLD_BY` (`SOLD_BY`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`SID`),
  ADD UNIQUE KEY `DESIGNATION` (`DESIGNATION`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `NoteID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `SLID` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`DID`) REFERENCES `status` (`SID`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`ADDED_BY`) REFERENCES `log_in` (`LID`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`EmpID`) REFERENCES `log_in` (`LID`);

--
-- Constraints for table `emp_image`
--
ALTER TABLE `emp_image`
  ADD CONSTRAINT `emp_image_ibfk_1` FOREIGN KEY (`IEmpID`) REFERENCES `employee` (`EmpID`);

--
-- Constraints for table `log_in`
--
ALTER TABLE `log_in`
  ADD CONSTRAINT `log_in_ibfk_1` FOREIGN KEY (`SID`) REFERENCES `status` (`SID`);

--
-- Constraints for table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`OwnerID`) REFERENCES `log_in` (`LID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`MOD_BY`) REFERENCES `log_in` (`LID`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `product` (`PID`),
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`SOLD_BY`) REFERENCES `log_in` (`LID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
