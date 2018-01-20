-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 20, 2018 at 10:27 PM
-- Server version: 5.6.38
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `joime_c2e`
--

-- --------------------------------------------------------

--
-- Table structure for table `checkin`
--

CREATE TABLE `checkin` (
  `id` int(10) NOT NULL,
  `event_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `checkin`
--

INSERT INTO `checkin` (`id`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '192', '10', '2017-10-08 02:50:43', '2017-10-08 02:50:43'),
(2, '192', '10', '2017-10-08 02:52:01', '2017-10-08 02:52:01'),
(3, '192', '10', '2017-10-08 02:52:03', '2017-10-08 02:52:03'),
(4, '192', '10', '2017-10-08 02:52:04', '2017-10-08 02:52:04'),
(5, '192', '10', '2017-10-08 02:52:24', '2017-10-08 02:52:24'),
(6, '192', '10', '2017-10-08 02:52:25', '2017-10-08 02:52:25'),
(7, '187', '25', '2017-10-11 01:25:32', '2017-10-11 01:25:32'),
(8, '187', '25', '2017-10-11 01:25:51', '2017-10-11 01:25:51'),
(9, '156', '25', '2017-10-26 00:32:40', '2017-10-26 00:32:40'),
(10, '156', '25', '2017-10-26 00:34:12', '2017-10-26 00:34:12'),
(11, '156', '25', '2017-10-26 00:36:42', '2017-10-26 00:36:42'),
(12, '156', '25', '2017-10-26 00:49:30', '2017-10-26 00:49:30'),
(13, '156', '25', '2017-10-26 00:51:11', '2017-10-26 00:51:11'),
(14, '156', '25', '2017-10-26 00:53:18', '2017-10-26 00:53:18'),
(15, '156', '25', '2017-10-26 00:53:31', '2017-10-26 00:53:31'),
(16, '156', '25', '2017-10-26 10:35:09', '2017-10-26 10:35:09');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `startDate` varchar(100) NOT NULL,
  `endDate` varchar(100) NOT NULL,
  `time` varchar(200) NOT NULL,
  `avenueName` varchar(200) NOT NULL,
  `avanueAddress` varchar(200) NOT NULL,
  `latitude` varchar(200) NOT NULL,
  `longitude` varchar(200) NOT NULL,
  `coverImage` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `line` varchar(200) NOT NULL,
  `website` varchar(200) NOT NULL,
  `host` varchar(200) NOT NULL,
  `categoryId` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `private` int(5) NOT NULL,
  `share` int(5) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `startTime` varchar(10) NOT NULL,
  `endTime` varchar(10) NOT NULL,
  `avanueDirection` text NOT NULL,
  `favoriteCount` int(10) NOT NULL,
  `viewCount` int(10) NOT NULL,
  `checkInCount` int(10) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `startDate`, `endDate`, `time`, `avenueName`, `avanueAddress`, `latitude`, `longitude`, `coverImage`, `facebook`, `twitter`, `instagram`, `line`, `website`, `host`, `categoryId`, `status`, `private`, `share`, `userId`, `startTime`, `endTime`, `avanueDirection`, `favoriteCount`, `viewCount`, `checkInCount`, `updated_at`, `created_at`) VALUES
(1, 'Event 1', 'Detail Event 1', '2016-11-10', '2018-11-17', '10:00-18:00', '', '', '', '', '', '', '', '', '', '', '', 1, 1, 0, 0, '1', '', '0', '', 0, 3, 0, '2017-11-20 10:21:53', '2016-11-10 14:10:11'),
(2, 'Ex Event 01', 'Test description...', '2016-11-18', '2016-12-03', '', '', '999/9 Rama I Rd, Khwaeng Pathum Wan, Khet Pathum Wan, Krung Thep Maha Nakhon 10330, Thailand', '13.7468753', '100.5390286', '', '', '', '', '', '', '', 0, 0, 1, 1, '1', '', '0', '', 0, 0, 0, '2016-11-13 01:28:49', '2016-11-13 01:28:49'),
(3, '1st event adding', 'First event', '2016-11-14', '2016-11-14', '', '', 'Chiang Mai, Mueang Chiang Mai District, Chiang Mai, Thailand', '18.7060641', '98.9817163', '', '', '', '', '', '', '', 0, 0, 1, 1, '1', '', '0', '', 0, 0, 0, '2016-11-13 20:03:01', '2016-11-13 20:03:01'),
(4, '222', '', '2016-11-13', '2016-11-13', '', '', '???????? ??????? ???????? 12130, Thailand', '13.992229', '100.676493', '', '', '', '', '', '', '', 0, 0, 1, 1, '1', '', '0', '', 0, 0, 0, '2016-11-13 20:04:54', '2016-11-13 20:04:54'),
(7, 'Test upcoming event...', '', '2017-02-08', '2017-09-12', '', 'Starbucks Coffee', 'Maha Sawat, Bang Kruai District, Nonthaburi 11130, Thailand', '13.8099925', '100.4490169', '/tmp/phpS6YT1c', '', '', '', '', '', '', 2, 0, 0, 0, '9', '01:39', '04:30', '', 0, 4, 0, '2017-10-26 02:13:20', '2016-11-27 14:20:48'),
(8, 'TEst', '', '2017-02-06', '2017-02-10', '', '', 'South Atlantic Ocean', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 0, 0, 1, 1, '9', '', '0', '', 0, 1, 0, '2017-10-15 22:33:05', '2016-11-27 14:25:43'),
(9, 'Test Event 24/12', 'Test description', '2017-02-05', '2017-02-07', '', '', 'St. Veiter Ring 20, 9020 Klagenfurt am Wörthersee, Austria', '0.000343', '0.00132', '', '', '', '', '', '', '', 0, 0, 1, 1, '9', '', '0', '', 0, 0, 0, '2016-12-24 14:41:47', '2016-12-24 14:41:47'),
(11, 'ทดสอบ', 'ทดสอบ', '2017-02-14', '2017-02-18', '17.00-18.00', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 0, '1', '', '0', '', 0, 0, 0, '2017-02-05 06:31:42', '2017-02-05 06:31:42'),
(12, 'ทดสอบ', 'ทดสอบ', '2017-02-14', '2017-02-15', '17.00-18.00', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 0, 0, '1', '07:00', '18:00', 'fdsfsfsdfs', 0, 0, 0, '2017-02-05 06:38:45', '2017-02-05 06:38:45'),
(15, 'ทดสอบ', 'ทดสอบ', '2017-03-03', '2017-03-03', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '16.00', '19.00', '', 0, 0, 0, '2017-03-03 17:20:28', '2017-03-03 17:20:28'),
(16, 'Test', 'Event description ...', '2017-03-20', '2017-03-21', '', '', '607 Phet Kasem Rd, Khwaeng Bang Wa, Khet Phasi Charoen, Krung Thep Maha Nakhon 10160, Thailand', '13.7118601', '100.4341479', '/tmp/php956BTc', '', '', '', '', '', '', 0, 0, 0, 1, '9', '09:00', '12:00', 'test direction detail', 0, 0, 0, '2017-03-10 01:06:32', '2017-03-10 01:06:32'),
(17, 'Test Sunday event', 'Description......', '2017-03-12', '2017-03-12', '', 'VILLA DE BEAR', '5 ถนนราชพฤกษ์ ตำบลบางระมาด อำเภอตลิ่งชัน Krung Thep Maha Nakhon 10170, Thailand', '13.7584732', '100.4446781', '', '', '', '', '', '', '', 0, 0, 0, 1, '9', '10:50', '14:00', 'test', 0, 0, 0, '2017-03-10 10:51:31', '2017-03-10 10:51:31'),
(18, 'Test', 'Description', '2017-03-10', '2017-03-11', '', 'Tesco Lotus', 'Tesco Lotus, Khwaeng Phra Khanong, Khet Khlong Toei, Krung Thep Maha Nakhon 10110, Thailand', '13.7050387', '100.6004784', '', '', '', '', '', '', '', 0, 0, 0, 1, '9', '10:00', '15:30', 'test', 0, 2, 0, '2017-10-21 22:42:13', '2017-03-10 15:07:11'),
(19, 'Meetup!', 'Design ', '2017-03-12', '2017-03-12', '', '(13.8400381, 100.4577730)', '', '13.8400381', '100.457773', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '21:00', '22:00', 'Walk', 0, 0, 0, '2017-03-12 20:42:50', '2017-03-12 20:42:50'),
(20, 'Meetup tmr ', 'Next', '2017-03-13', '2017-03-13', '', '(13.8400098, 100.4577985)', '', '13.8400098', '100.4577985', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '11:41', '13:44', 'walk walk walk', 0, 2, 0, '2017-11-20 10:22:01', '2017-03-12 20:44:34'),
(21, 'Save Draft', '', '2018-01-06', '2018-01-30', '', 'CB2', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 1, 1, 1, 0, '24', '06:00', '08:00', '', 0, 3, 0, '2018-01-05 21:23:37', '2017-03-20 22:07:44'),
(22, 'Test Venue', '', '2017-04-03', '2017-04-04', '', 'Here', '', '37.7853586', '-122.4066059', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '02:51', '03:51', '', 0, 0, 0, '2017-03-27 01:52:21', '2017-03-27 01:52:21'),
(23, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 03:48:40', '2017-04-02 03:48:40'),
(24, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 03:49:47', '2017-04-02 03:49:47'),
(25, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 03:52:28', '2017-04-02 03:52:28'),
(26, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 03:53:44', '2017-04-02 03:53:44'),
(27, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 03:55:05', '2017-04-02 03:55:05'),
(28, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 04:01:28', '2017-04-02 04:01:28'),
(29, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 04:05:48', '2017-04-02 04:05:48'),
(30, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 04:07:36', '2017-04-02 04:07:36'),
(31, 'test image', '', '2017-01-01', '2017-01-01', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 04:08:59', '2017-04-02 04:08:59'),
(32, 'test image', '', '2017-04-03', '2017-04-05', '', '', '', '', '', 'img-02.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '', '', '', '', 0, 0, 0, '2017-04-02 04:09:45', '2017-04-02 04:09:45'),
(33, 'Test create event 170406', 'Test description of event.', '2017-04-09', '2017-04-09', '', 'Sala Daeng BTS Station', '191 Si Lom, Khwaeng Silom, Khet Bang Rak, Krung Thep Maha Nakhon 10500, Thailand', '13.7285103', '100.5343615', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '9', '15:00', '17:30', 'Test direction...', 0, 0, 0, '2017-04-06 15:22:08', '2017-04-06 15:22:08'),
(34, 'Event today', 'Event for today', '2017-04-06', '2017-04-06', '', 'CB2', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '21:30', '22:32', '', 0, 0, 0, '2017-04-06 21:33:04', '2017-04-06 21:33:04'),
(35, 'Event next hour', 'Event next hour of today', '2017-04-06', '2017-04-06', '', 'CB2', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '22:40', '23:38', '', 0, 0, 0, '2017-04-06 21:38:48', '2017-04-06 21:38:48'),
(36, 'Event for tomorrow', '', '2017-04-10', '2017-04-10', '', 'CB2', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '06:06', '23:06', '', 0, 0, 0, '2017-04-09 23:07:02', '2017-04-09 23:07:02'),
(37, 'KFC Shake!', 'KFC Sauces and Shakes ', '2017-11-07', '2017-11-17', '', 'Thailand Cultural Centre', 'Huai Khwang, Bangkok 10310, Thailand', '13.7672564', '100.5713874', '1509904098.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '0', '08:30', '22:00', '', 1, 0, 0, '2017-11-06 01:24:35', '2017-04-11 17:32:31'),
(38, 'Today meeting', '', '2017-07-07', '2017-07-07', '', 'Here', '', '13.8394996', '100.4569295', '', '', '', '', '', '', '', 0, 0, 0, 0, '24', '10:00', '11:00', '', 0, 0, 0, '2017-07-06 01:38:59', '2017-04-17 18:23:05'),
(39, 'WordPress Bangkok Meetup of July 2017: How to use WP-CLI', 'Meetup เหมาะสำหรับ ผู้พัฒนา และผู้ที่อยากเริ่มพัฒนา WordPress \n\nMeetup ครั้งนี้จะพูดถึง Tool อีกตัวของ WordPress ที่เป็น Command Line ที่มีความสามารถหลายๆ อย่าง เช่น การติดตั้ง WordPress, การติดตั้ง Plugins, การอัพเดท Core Plugins Themes และอีกมากมาย เพียงแค่ผ่านการพิมพ์คำสั่งแค่บรรทัดเดียว \n\n\nหัวข้อสำหรับ Meetup ครั้งนี้\n\n- WP-CLI คืออะไร ? \n- วิธีการติดตั้ง WP-CLI \n- WP-CLI ใช้ทำอะไรได้บ้าง ? \n  - ติดตั้ง WordPress \n  - ติดตั้ง Plugins \n  - Backup Database \n  - Deployed Database ขึ้น Production เซิฟเวอร์ \n  - อัพเดท Core & Plugins & Themes \n  - Regenerate Thumbnail \n- ประยุกต์ Shell Script กับคำสั่งที่ใช้งานบ่อยๆ\n\nขอขอบคุณ  \nThanks for our amazing sponsored\n- Hangar Co-Working Space ( สถานที่ )  \n- All in one Migration ( อาหารและน้ำ )', '2017-11-06', '2017-11-06', '', 'HANGAR Coworking Space by dtac Accelerate', '', '13.732447', '100.530881', '1509906583.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '0', '01:00', '21:30', 'เปิดประตู', 0, 0, 0, '2017-11-06 01:29:43', '2017-04-18 23:07:51'),
(40, 'Cone lover!', 'Fancy soft serve ', '2017-10-06', '2017-10-26', '', 'The Platinum Fashion Mall', 'Ratchathewi, Bangkok, จังหวัด กรุงเทพมหานคร 10400, Thailand', '13.7500212', '100.5396793', '1504365381.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '0', '10:00', '20:00', 'Take bus no.5', 0, 0, 0, '2017-09-02 22:16:21', '2017-04-19 00:37:14'),
(41, 'Meeting today', '', '2017-07-06', '2017-07-06', '', 'CB2', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 0, 0, 1, 0, '24', '13:00', '14:00', '', 0, 0, 0, '2017-07-06 01:41:24', '2017-04-25 20:35:37'),
(42, 'Tomorrow event (Apr 26)', '', '2017-04-26', '2017-04-26', '', 'ข้อมูลสถานที่', '34 Ellis St, San Francisco, CA 94102, USA', '37.7858956', '-122.4067728', '', '', '', '', '', '', '', 0, 0, 0, 0, '24', '04:38', '06:37', '', 0, 0, 0, '2017-04-25 20:38:18', '2017-04-25 20:38:18'),
(44, 'Chocolate festival ', 'Test description.... งานชอคโกแลต', '2017-11-04', '2017-11-21', '', 'สนามบินเล็ก สนามหลวง2', '', '13.7411282', '100.3480538', '1509904192.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '0', '11:00', '20:00', '', 0, 0, 0, '2017-11-06 00:49:52', '2017-04-30 15:54:32'),
(46, 'ทดสอบ By Nok', '', '2017-05-01', '2017-05-01', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '22:15', '22:30', '', 0, 0, 0, '2017-05-01 22:14:12', '2017-05-01 22:14:12'),
(47, 'How remote work works', 'This is a detail :)', '2017-07-07', '2017-07-07', '', 'Atlantic Ocean', '', '-14.5994134', '-28.6731465', '1499280108.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '15:00', '16:00', '', 0, 0, 0, '2017-07-06 01:41:48', '2017-05-18 01:15:08'),
(48, 'Weekend Market', 'ตลาดนัดวันหยุด\n', '2017-05-21', '2017-05-21', '', 'The Column Ratchaphruk', '', '13.8394455', '100.4490732', '', '', '', '', '', '', '', 0, 0, 0, 0, '24', '11:00', '21:00', '', 0, 0, 0, '2017-05-18 01:22:30', '2017-05-18 01:22:30'),
(49, 'Paper craft workshop', 'ชวนคุณมาสนุกกับการสร้างสรรค์โมบายกระดาษในรูปทรงศิลปะสไตล์ Memphis มาลงมือพับ ตัด แปะ รูปทรง 3 มิติ และร้อยเรียงเป็นโมบายสุดน่ารักไว้ตกแต่งในมุมโปรด โดยครู ‘ปั้น นภัสชล’ จากเพจ ‘Papeterie’ เจ้าของผลงาน Papercraft 3D ที่กุ๊กกิ๊กเกินห้ามใจ \n\nสิ่งที่ผู้เข้าร่วมเวิร์คช็อปจะได้รับ...\n\nเทคนิคการสร้างงานศิลปะจากกระดาษทำมือพื้นฐาน\nโมบายที่มีเอกลักษณ์ของตัวเอง', '2017-05-18', '2017-05-18', '', 'Aree garden', '', '13.7806578', '100.5353512', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '14:00', '16:00', '', 0, 0, 0, '2017-05-18 10:28:19', '2017-05-18 10:28:19'),
(50, 'ionic2 Bootcamp', 'มาเรียนรู้ทำ App ด้วยเว็บกันเถอะ!!(หลักสูตร 2 วัน 12 ชั่วโมง)\n\nรู้ HTML CSS Javascript  แล้วอยากทำ App?\n\nถ้าคุณรู้ 3 อย่างนี้คุณก็พร้อมแล้วที่จะทำ Mobile Application แล้วด้วย ionic 2  framework  จะทำให้คุณใช้ความรู้ทำเว็บของคุณมาทำ Application ได้ไม่ยากเลย\nตัวอย่าง App ที่ทำได้ด้วย ionic?\n\nApp Check In สำหรับ Event http://bigbangswing.com', '2017-05-27', '2017-05-28', '', 'Maleenont Tower', '', '13.7176099', '100.5721783', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '09:00', '17:00', '', 0, 0, 0, '2017-05-18 10:33:38', '2017-05-18 10:33:38'),
(51, 'Real estate talk', 'พลิกประวัติศาสตร์อสังหาฯ\nNew Trend Generation กับ \"Real Estate Talk\"\n \nเจาะทำเลอสังหาฯ เงินล้าน ที่เป็นหัวใจสำคัญของอสังหาฯ ทุกชนิดคือ ทำเล ทำเล และ ทำเล\nที่จะฉีกกฏแนวคิดเดิมๆ\nกับเคล็ดลับ..\nนักวิเคราะห์ทำเลมืออาชีพ\nดูที่ให้เป็น ดูให้ขาด ดูอย่างไร\nจาก “ทำเลธรรมดา” ให้เป็น “ทำเลฝังเพชร” อย่างไร\nโดย โค้ชเต้ ปิยพงศ์\nนักวิเคราะห์การขยายสาขา และนักเขียน model ทำเลที่ดิน\n(Property Acquisition)\n \nพร้อมด้วย..คุณเอฟ วาณุภัทร\nนักรีโนเวทมือทองแห่งบริษัท DAB Studio\nผู้สร้างมูลค่าเพิ่มให้ธุรกิจร้านอาหาร ร้านค้า และบริษัทมากมาย ด้วย concept\n\"จากศูนย์.. สู่ร้าน\"\n \nและคุณเพียว เคียงเกียรติ สถาปนิกสุด Hot เจ้าของแบรนด์ Pure Architect\nที่อยู่เบื้องหลังโครงการดังๆหลายแห่ง\nมาตอบโจทย์ การออกแบบขาย design ในยุคนี้ สไตล์ Perfect blend สร้างภาพลักษณ์ใหม่ให้กับทรัพย์\n\"จะขายอะไร... ต้องขายไอเดียก่อน\"\n \nคุณจะได้เรียนรู้ :\n- สูตรการวิเคราะห์ทำเล ก่อนที่จะซื้อ หรือลงทุน\n- ทำเลไม่ดี มีวิธีแก้อย่างไร\n- ดูที่ให้เป็นอย่างง่าย แต่มีหลักการด้วยตัวเลข\n- มีทรัพย์ แต่ไม่รู้จะเริ่มอะไรดี\n- Trend ของ การ Renovate\n- เทคนิค การ design เพิ่มมูลค่า\nด้วยงบน้อย...แต่ดูแพง\n- วิธีการเลือก ดีไซเนอร์ รับเหมา\n- ขั้นตอนการเลือกผู้รับเหมา ให้ตรงใจ งบไม่บานปลาย (cost control)\n- สัญญาว่าจ้างที่คุณควรรู้\n \nเหมาะสำหรับ :\n- ผู้ที่สนใจอสังหาทุกประเภท\n- นายหน้าอสังหา\n- คนที่ต้องการ renovate ทรัพย์\n- คนที่จะซื้อที่ดิน หรือมีที่ดินอยู่แล้ว\n- คนที่ชอบหลักการและไอเดียใหม่ในยุค 4.0\n \nวันอาทิตย์ ที่ 21 พฤษภาคม 2560\nเวลา 09.00-17.00 น.\nที่  P.R.A. Academy สถาบันการลงทุนอสังหาริมทรัพย์ครบวงจร', '2017-05-21', '2017-05-21', '', 'Ramkhamhaeng Road', '', '13.776968', '100.673275', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '08:00', '17:00', '', 0, 0, 0, '2017-05-18 10:37:06', '2017-05-18 10:37:06'),
(52, 'Big Data and Mobile Technologies for Smart Cities ', 'Cities are recently reshaping to achieve a wide variety of new demands for low carbon economy and high quality of life. To build smart sustainable cities, comprehensive urban informatics and mobile technologies integrated with Internet of Things and social computing are integral components.\n\n\n\nLOCATION\n\nThe Auditorium Room\nThe Auditorium Room 117, Faculty of Engineering, Chulalongkorn University, Phayathai Rd., Wangmai, Pathumwan, Bangkok, 10330\n\n', '2017-07-10', '2017-07-11', '', 'Faculty of Engineering, Chulalongkorn University', '', '13.7368083', '100.5331321', '1510568299.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '15:00', '19:00', '', 0, 1, 0, '2017-11-13 17:18:19', '2017-05-18 10:43:14'),
(53, 'Around the World in 7 Days | Bangkok', 'Around the World in 7 Days is a week of events organised for former Goldsmiths students in collaboration with Goldsmiths Alumni Ambassadors and it returns in 2017 with events taking place across the globe. See the full list of events on our website.\nFor a pub style party like those you enjoyed in your Goldsmiths days, join your Alumni Ambassador Krit Suttirat over drinks, snacks and music. Ekamai Beer House prides itself on its large international beer selection, delicious Thai and Western food, and free jukebox for playing music to remind you of your student days in New Cross. First drink is on Goldsmiths, so come along early!\n\nFAQs\n\nHow can I contact the organiser with any questions?\nContact the Development the Alumni Office.\nContact your Alumni Ambassador.\n\nDo I have to bring my printed ticket to the event?\nNo, your name will be added to the guestlist.\n\nAccessibility\nIf you are attending an event and need help with any mobility requirements you may have, please contact the Development and Alumni Office in advance to ensure we can accommodate your needs.\n\nPhotography disclaimer\nBy attending this recorded event, you are consenting to being photographed and the material being used in the University\'s marketing publications.', '2017-05-19', '2017-05-19', '', 'Ekamai Beer House', '', '13.7234039', '100.5847324', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '18:00', '22:00', '', 0, 0, 0, '2017-05-18 10:49:54', '2017-05-18 10:49:54'),
(54, 'Opening Doors Across Cultures', 'Culture is to people what water is to fish; we notice it when we\'re out of it! You are living in Thailand, perhaps you have lived in multiple countries other than your own before. You probably have many more or less funny stories about what has happened so far.\n\nBut, did you know there are simple models and tips you can use to avoid a lot of misunderstandings? If you would like to learn more and find out your own cultural profile, join us for this workshop! Welcome!\n\nInstructors Catherine Miller and Martine Dinh are both professional certified leadership and transition coaches and both are intensely curious about understanding people from other cultures. Between us we have lived in multiple countries and continents and have experienced a range of cultures.\n\nAll proceeds will be donated to the AWC Scholarship fund which provides scholarships to Thai girls to complete their high school level education.\n\nSuggested Donation: 1700 baht\n\n\nLOCATION\n\nInstructor\'s Home\nWalking distance from Asok station\nAddress to be sent after registration\nBangkok, Bangkok 10110', '2017-05-19', '2017-05-18', '', 'BTS ASOKE STATION', '', '13.7367125', '100.5608218', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '09:30', '13:00', '', 0, 0, 0, '2017-05-18 10:53:48', '2017-05-18 10:53:48'),
(55, 'OPPA Openhouse Event', 'We are delighted to announce new advertising products developed by OPPA: Online Premium Publishers Association (Thailand) in this event.\n\nWho is OPPA?\nOPPA is publishers alliance founded by thai top 15 websites including BEC TERO, BECTERO Radio, Dek-D, Kapook, Major Chineplex, Manager, MThai, Nation TV, OK Nation, OTV, Pantip, Post Today, Sanook, Siam Sport, Thairath.\nWith ​these premium websites, OPPA enables Thai digital marketers to reach ​targeted audience based on their demographic & interests from big audience pool of 100M unique browser.\n\nOPPA project Adviser & Technology partners\nD.A.Consortium Group\nInnity\n\nWhat You\'ll Learn and Get from the Event?\n- OPPA will introduce new ad products developed by Thai top 15 premium websites.\n- Free advertising value of THB10,000 each (limit 400 coupons, 1st come-1st served basis)\n- Be the first group of advertisers to access the OPPA​\'s new ad products and get the chance to pre-book the inventories.\n- Thai top website and industry leading players such as, D.A.Consortium, Innity, IPONWEB, AOL, BrightCove, Taboola will share their insights about Global/Thai Digital Marketing Trend.\n\nEvent Schedule [updated on 9th May 2017]\n13.00 - 13.30 : Register + Photo Opportunity\n13.30 - 13.45 : Welcome Keynote by President\n13.45 - 14.05 : Keynote: Introducing OPPA\n14.05 - 14.15 : Keynote by DAC: Why OPPA? - Global digital marketing trend and how OPPA evolve Thai market -\n14.15 - 14.30 : Keynote by Innity: The technologies and services of OPPA\n14.30 - 14.40 : Keynote by IPONWEB : Global trend of programmatic\n14.40 - 15.00 : Break and Networking Session\n15.00 - 15.20 : Keynote by AOL: Advantages of advertising with publisher\n15.20 - 15.40 : Keynote by Taboola: Future of Native AD\n15.40 - 16.00 : Keynote by Brightcove: Video Empowers\n16.00 - 16.20 : Panel Discussion: “How will the industry grow in 2017?”\n16:20 - 16:30 : Questions & Answers\n16.30 : End of Session\n\nEvent Sponsors\nAOL\nBrightcove\nIPONWEB\nTaboola\n\n\nIf you are in Digital Marketing Industry, you must not miss this!!', '2017-05-18', '2017-05-18', '', 'SHOW DC', '', '13.750381', '100.572532', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '13:00', '17:00', '', 0, 0, 0, '2017-05-18 10:58:12', '2017-05-18 10:58:12'),
(56, 'EdSPACE EP.3: Edเป็ด ', 'EdSPACE EP.3: Edเป็ด มาแล้วววววว!\nพบกันวันเสาร์ที่ 20 พฤษภาคม เวลา 13.00-17.30 น.\nที่ ห้องอเนกประสงค์ ชั้น 1 หอศิลปกรุงเทพฯ (BACC)\n.\nงานนี้ฟรี! สนใจพลิกโฉมเป็ดไทย ลงทะเบียนได้เลยที่\nhttps://tinyurl.com/edspaceep3\n(ด่วน! ที่นั่งมีจำนวนจำกัด)\n\nถ้าคุณ ...\n> เบื่อที่จะบ่นปัญหาด้านการศึกษาอยู่คนเดียว\n> เห็นใจเด็กๆ ที่ไปโรงเรียนและกลับมาบ้านแบบงงๆ ไม่รู้ว่าจะเรียนไปทำไม หรือเรียนไปเพื่ออะไร\n> สงสารเด็กไทยส่วนใหญ่ที่ไม่ได้รับโอกาสทางการศึกษาอย่างเท่าเทียม\n\nเราขอชวนคุณมาเจอกันในอีเว้นท์ทางการศึกษารูปแบบใหม่ ที่จะมาเขย่าวงการการศึกษาไทย เปลี่ยนแปลงทุกความจำเจในระบบการศึกษาที่มีมากว่า 100 ปีของสยามประเทศ อีเว้นท์การศึกษาที่จะช่วยสร้างแรงบันดาลใจ และแสดงให้เห็นถึงการลงมือทำจริงของกลุ่มคนรุ่นใหม่ ที่ไม่ยอมแพ้ต่อปัญหาต่างๆ ในระบบการศึกษาไทย ช่วยจุดประกาย กระตุ้นต่อมความคิด และชวนทุกคนในทุกภาคส่วน โดยเฉพาะคนที่อินด้านการศึกษา มา …\n> คิดและระดมสมองเกี่ยวกับความท้าทายต่างๆ ที่อยากให้เกิดขึ้นจริงในระบบการศึกษาไทย\n> ค้นหาวิธีการที่สามารถทำให้เป็นจริงได้อย่างมีประสิทธิภาพและยั่งยืน\n> คัดเลือกวิธีการเหล่านั้น เพื่อนำไปต่อยอดสู่ธุรกิจเพื่อสังคมต่อไปในอนาคต\n\nยัง! ยังไม่หมด ทุกคนยังจะได้ …\n> เห็นตัวอย่างวิธีการเด็ดๆ ในการพัฒนาการศึกษาจากหลากหลายประเทศ\n> รู้จัก EdWINGS ให้มากขึ้น กับแนวคิดการพัฒนาการศึกษาผ่านการสร้างเครือข่ายธุรกิจเพื่อสังคม\n> ถกประเด็นถึงความเป็นไปได้ในการพัฒนาการศึกษาไทยด้วยไอเดียต่างๆ ภายใต้รูปแบบธุรกิจเพื่อสังคม โดยแขกรับเชิญพิเศษจากหลากหลายสาขา \n\nอาบน้ำ แต่งตัว ออกจากบ้าน\nแล้วมางาน EdSPACE EP.3: Edเป็ด\nวันเสาร์ที่ 20 พฤษภาคม เวลา 13.00 น. เป็นต้นไป\nที่หอศิลปกรุงเทพฯ (BACC)', '2017-05-20', '2017-05-20', '', 'Bangkok Art and Culture Centre', '', '13.74664', '100.5303319', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '13:00', '17:30', '', 0, 0, 0, '2017-05-18 11:02:24', '2017-05-18 11:02:24'),
(58, ' Digi.travel Thailand International Conference & Expo 2017', 'The 2nd \"Digi.travel Thailand International Conference & Expo 2017\" will give answers to five major questions in the digital tourism economy. \"Digi.travel Thailand International Conference & Expo\" is part of the \"Digi.travel World Events\", is the top annual meeting-point for experts from the eTourism, mTourism, travel technology, digital travel marketing and distribution channels with decision makers, entrepreneurs, professionals from the travel & hospitality industry of Thailand, the ASEAN Countries as well as the rest of the world, where they can exchange knowledge and experiences, to learn and do business.', '2017-06-28', '2017-06-28', '', 'The Landmark Bangkok', '', '13.7412418', '100.5538514', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '08:00', '18:00', '', 0, 0, 0, '2017-05-21 21:57:03', '2017-05-21 21:57:03'),
(59, 'LINE@ Business Class หลักสูตร LINE@ ที่นักการตลาดยุค 4.0 ต้องรู้!', 'คุณเป็นหนึ่งคนรึเปล่าที่ใช้ LINE@ แค่ไว้คุยกับลูกค้า และส่งโปรโมชั่นกับข้อความไปให้\nรู้มั้ยว่า LINE@ มีสามารถช่วยให้คุณเข้าถึงลูกค้าและเข้าใจความต้องการได้มากกว่านั้น!\n\nมาร่วมไขทุกข้อสงสัยในการใช้งาน LINE@ กับ LINE@ Business Class ครั้งที่ 4\nที่จะช่วยให้คุณได้รู้จักทุกฟีเจอร์การใช้งานที่คุณอาจยังไม่เคยรู้ พร้อม Workshop ลงมือทำจริงไปพร้อมๆกันทุกขั้นตอน ! แม้ไม่มีพื้นฐาน LINE@ มาก่อนก็สามารถเรียนได้\n\nเพราะเราเชื่อว่าการเรียนที่มีประสิทธิภาพที่ดีที่สุด เกิดขึ้นจากการลงมือทำจริง\nพร้อมตัวอย่าง Success Case ที่ประสบความสำเร็จจากการใช้งาน LINE@ และแชร์ประสบการณ์จาก LINE@ Specialist เจ้าของธุรกิจจริง ', '2017-06-06', '2017-06-07', '', 'BHIRAJ TOWER at EmQuartier', '', '13.731457', '100.569413', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '10:00', '16:30', '', 0, 0, 0, '2017-05-21 21:59:35', '2017-05-21 21:59:35'),
(60, 'Around the World ', 'Testing ', '2017-05-22', '2017-05-22', '', 'CP Tower', '', '13.727493', '100.532637', 'cover.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '10:00', '13:00', '', 0, 0, 0, '2017-05-21 22:53:40', '2017-05-21 22:53:40'),
(61, 'Big Data and Mobile', 'ทดสอบ ภาษาไทย', '2017-07-19', '2017-07-19', '', 'จุฬาลงกรณ์มหาวิทยาลัย', '', '13.7406402', '100.5300834', '1499279835.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '09:00', '18:00', '', 0, 0, 0, '2017-07-06 01:37:15', '2017-05-21 22:55:40'),
(62, 'Diji Travel Thailand International ', 'Testing', '2017-08-03', '2017-08-04', '', 'Queen Sirikit National Convention Centre', '', '13.7237824', '100.5600605', '1501771540.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '10:00', '21:00', '', 0, 0, 0, '2017-08-03 21:45:40', '2017-05-25 14:55:45'),
(63, 'Around the world in 7 days', 'Testing', '2017-07-07', '2017-07-10', '', 'HUBBA Bangkok', '', '13.72519', '100.587628', '1503928899.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '08:00', '18:00', '', 0, 0, 0, '2017-08-28 21:01:39', '2017-05-25 14:57:06'),
(64, 'Craft Workshop', 'Craft Workshops', '2017-08-04', '2017-08-17', '', 'HUBBA-TO', '', '13.712961', '100.600846', '1501771623.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '13:00', '20:00', '', 0, 0, 0, '2017-08-03 21:47:03', '2017-05-25 15:13:04'),
(65, 'ionic 2 ', 'Testing an event', '2017-08-04', '2017-08-04', '', 'Co\'Work\'s', '', '13.750218', '100.5396052', '1501771446.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '19:00', '22:00', '', 0, 0, 0, '2017-08-03 21:44:06', '2017-05-25 15:14:28'),
(66, 'ED เป็ด!', 'Testing ว่างๆ\nของที่', '2018-01-08', '2018-01-11', '', 'Chulalongkorn', '', '13.7383777', '100.5320528', '1515500232.jpg', '', '', '', '', '', '', 2, 1, 0, 0, '24', '20:15', '20:00', '', 0, 1, 0, '2018-01-09 19:17:12', '2017-05-25 15:17:06'),
(67, 'LINE Business', 'Testing', '2017-08-04', '2017-08-04', '', 'Kasikorn Asset Management Co., Ltd.', '', '13.78178', '100.545755', '1501771403.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '13:00', '18:00', '', 0, 0, 0, '2017-08-03 21:43:23', '2017-05-25 15:30:25'),
(72, 'Real Estate Talk', 'Testing', '2018-03-06', '2018-04-17', '', 'Victory Monument BTS Station', '', '13.7627583', '100.5370845', '1516379442.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '24', '18:00', '22:00', '', 0, 0, 0, '2018-01-19 23:30:42', '2017-05-25 19:08:46'),
(73, 'Around the world in 7 days ', 'Testing', '2017-08-03', '2017-08-20', '', 'HUBBA Thailand', '', '13.72519', '100.587628', '1501771373.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '11:00', '20:00', '', 0, 0, 0, '2017-08-03 21:42:53', '2017-05-26 15:29:44'),
(74, 'Around the world in 7 days', 'Testing ', '2017-05-27', '2017-05-27', '', 'HUBBA Thailand', '', '13.72519', '100.587628', '1495787413.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '15:00', '18:00', '', 0, 0, 0, '2017-05-26 15:30:13', '2017-05-26 15:30:13'),
(75, 'Around the world in 7 days', 'Testing OK', '2017-05-27', '2017-05-27', '', 'HUBBA Thailand', '', '13.72519', '100.587628', '1495787430.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '15:00', '18:00', '', 0, 0, 0, '2017-05-26 15:30:30', '2017-05-26 15:30:30'),
(113, 'test emoji2 ', '', '2017-07-10', '2017-08-10', '', 'Muse Salon Cupertino', '', '37.3315469', '-122.0330361', '', '', '', '', '', '', '', 0, 1, 0, 1, '9', '02:15', '05:15', '', 0, 2, 0, '2017-10-26 11:38:23', '2017-07-10 02:16:05'),
(82, 'Sushi Workshop ', 'มาทำซูชิกันเถอะ!', '2017-08-03', '2017-08-05', '', 'Hotel Muse Bangkok Langsuan - MGallery Collection', '', '13.740354', '100.5435533', '1501771825.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '11:00', '18:00', '', 0, 0, 0, '2017-08-03 21:50:25', '2017-05-27 00:26:30'),
(112, 'test emoji ', '', '2017-07-10', '2017-08-10', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 0, 1, 0, 1, '9', '02:00', '02:15', '', 0, 0, 0, '2017-07-10 02:13:43', '2017-07-10 02:13:43'),
(88, 'Around the world in 7 days', 'Testing', '2017-08-04', '2017-08-05', '', 'HUBBA Thailand', '', '13.72519', '100.587628', '1501771340.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '09:00', '18:00', '', 0, 0, 0, '2017-08-03 21:42:20', '2017-06-25 03:02:25'),
(89, 'Local Market', 'ตลาดนัด ของพื้นที่', '2017-07-06', '2017-07-07', '', 'CB2', '', '37.7858956', '-122.4067728', '1499359819.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '14:00', '22:00', '', 0, 0, 0, '2017-07-06 23:50:19', '2017-07-02 14:21:56'),
(90, 'New District in Bangkok', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-08-03', '2017-08-04', '', 'Charoen Krung Road', '', '13.7163801', '100.514161', '', '', '', '', '', '', '', 1, 0, 0, 0, '24', '09:00', '18:00', '', 0, 1, 0, '2017-11-20 10:23:25', '2017-07-02 14:28:12'),
(91, 'People, Money, Ghosts', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-01', '2017-07-07', '', 'Charoen Krung Road', '', '13.7163801', '100.514161', '1498980847.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '09:00', '22:00', '', 0, 8, 0, '2017-11-20 10:30:35', '2017-07-02 14:34:07'),
(92, 'Calligraphy Workshop', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-02', '2017-07-07', '', 'Charoen Krung Road', '', '13.7163801', '100.514161', '1498981127.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '14:00', '20:30', '', 0, 0, 0, '2017-07-02 14:38:47', '2017-07-02 14:38:47'),
(93, 'HM Conference 2017', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-01', '2017-07-09', '', 'Impact Muang Thong Thani', '', '13.9128782', '100.5464468', '1498981265.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '14:00', '19:00', '', 0, 0, 0, '2017-07-02 14:41:05', '2017-07-02 14:41:05'),
(94, 'Practical UX with Carl', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-02', '2017-07-03', '', 'Web Courses Bangkok', '', '13.724525', '100.546545', '1498981347.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '09:00', '18:00', '', 0, 0, 0, '2017-07-02 14:42:28', '2017-07-02 14:42:28'),
(95, 'HM Conference 2017', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-02', '2017-07-09', '', 'Impact Muang Thong Thani', '', '13.9128782', '100.5464468', '1498989406.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '14:00', '19:00', '', 0, 0, 0, '2017-07-02 16:56:46', '2017-07-02 16:56:46'),
(96, 'HM Conference 2017', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-02', '2017-07-09', '', 'Impact Muang Thong Thani', '', '13.9128782', '100.5464468', '1498989423.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '24', '14:00', '19:00', '', 0, 0, 0, '2017-07-02 16:57:03', '2017-07-02 16:57:03'),
(97, 'RUN & MOVE Marathon ครั้งที่ 8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-03', '2017-07-03', '', 'Si Lom', '', '13.7257861', '100.5267976', '', '', '', '', '', '', '', 0, 0, 0, 1, '24', '04:00', '09:00', '', 0, 0, 0, '2017-07-02 17:05:09', '2017-07-02 17:05:09'),
(98, 'Workshop Painting', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-10-07', '2017-10-07', '', 'อารีย์', '', '13.8226795', '100.5519993', '1501771254.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '11:00', '18:00', '', 0, 0, 0, '2017-08-03 21:40:54', '2017-07-02 17:06:25'),
(99, 'Money Expo 2017', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Sed do eiusmod tempor incididunt ut labore. Lorem ipsum dolor sit amet, consectetur. Lorem ipsum dolor sit amet, consectetur', '2017-07-03', '2017-07-03', '', 'Tentacles Art Space, Art School, Workshop & Cafe', '', '13.704137', '100.537293', '1498990111.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '24', '10:00', '18:00', '', 0, 0, 0, '2017-07-02 17:08:31', '2017-07-02 17:08:31'),
(100, 'Hello event', 'The fact is I have a problem I don\'t like to see it on twitter and I\'m just saying that it doesn\'t even have to do so on twitter or Facebook lol I can\'t even tell me that I\'m going out on twitter but I\'m still waiting on you for you guys \n', '2017-07-03', '2017-07-10', '', 'Apple City', '', '37.3322109', '-122.0307778', '1499071705.jpg', '', '', '', '', '', '', 0, 0, 0, 1, '9', '15:00', '19:00', '', 0, 0, 0, '2017-07-03 15:48:25', '2017-07-03 15:48:25'),
(101, 'Chocolate Factory', 'The Chocolate Factory ร้านอาหารบนถนนธนรัชต์ กิโลเมตรที่ 11.8 มีปล่องไฟเป็นสัญลักษณ์คุ้นตา ตกแต่งร้านในรูปแบบกึ่งโรงงาน แต่อบอุ่นแบบ cozy modern ให้ความรู้สึกสบายๆ เป็นกันเอง ตัวอาคารเป็นกระจกเปิดโล่งพร้อมให้คุณมองเห็นวิวรอบด้าน เหมาะสำหรับพาครอบครัวหรือคนรู้ใจมานั่งรับประทานอาหารในบรรยากาศดีๆ พร้อมดื่มด่ำกับธรรมชาติและทิวทัศน์สวยๆ ของเขาใหญ่\n\nChocolate Workshop เปิดให้ผู้สนใจเข้าร่วมกิจกรรมได้ ตามวันและเวลาที่ทางร้านกำหนด โดยกิจกรรมนั้นจัดขึ้นเพื่อให้ลูกค้าได้สัมผัสประสบการณ์ การทำช็อกโกแลต ซึ่งกิจกรรมนี้สามารถปรับให้เหมาะสม สำหรับเป็นกิจกรรมครอบครัว หรือกิจกรรมบูรณาการสำหรับองค์กร\n', '2017-10-11', '2017-10-12', '', 'The Chocolate Factory (Thailand)', '', '14.562161', '101.40624', '1499787938.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '09:00', '16:00', '', 0, 1, 0, '2017-10-10 04:58:43', '2017-07-04 23:54:26'),
(102, 'Techsauce Global Summit 2017', 'ASIA’S MOST “DANGEROUS” GLOBAL CONFERENCE\n In the city that inspired the Hangover “documentary,” Techsauce Global Summit brings together the dangerous minds of the global tech scene to Bangkok to experience an explosive array of experiences never felt before anywhere in the world.\n\n\nHeralded by many as the “freshest and edgiest” tech conference in Southeast Asia, the event has scaled to 6,000 attendees and satellite events in 10 cities in less than a year. Over 1,000 startups, 200 venture capitalists, and 200 journalists from all over the world will be coming to Techsauce Global Summit this July to crack the code for explosive growth, and to experience what makes Thailand’s consistently one of the world’s best cities.\n\n  \n\nKey Highlights include:\nFirst event in the region to dives deep into the best practices for keeping up with global trends and Southeast Asia’s tech scene\nAsia’s hottest startup battle where winners from 6+ countries around Asia come to the final pitching competition\nThe event will let you experience cutting-edge technologies like biometrics, blockchain, machine learning, etc.\nGood for international companies who want to enter to SEA market\nGood for local companies who seek for an opportunity to scale out\nThe event will be attended by all the top enterprises from various industries such as Banking, Telco, Retails, Manufacturing, Real estate, Food and Agriculture as well as Thailand’s SMB founders\nThe top investor dating event where you get to meet up to 200 VCs and investors\nAll-day-long schedule of in-depth discussions on the Trending Vertical Stages : Manufacturing, FinTech, UrbanTech, Startup Accelerate, Venture Capital.\nIn one conference, the content is extensive for startups, SMBs, investors, tech enthusiasts and enterprises.\nFor enterprises: a sharing of business models to achieve the best success for digital transformation, corporate innovations and the cases for working with startups\nA healthy roster of 200 world-class speakers\n“Sexy and dangerous” is the theme of the event where you will find unique experience you won’t get from a conference elsewhere\nMost Epic After Party\n\n\nThe summit will be happening on July 28 - 29th (Friday - Saturday) at the 5-star Centara Grand Convention Hall in the heart of the Bangkok Downtown.\n\nLeave behind your expectations of the usual tech conferences. Go to https://summit.techsauce.coand grab your ticket now. \n', '2017-10-08', '2017-10-08', '', 'Centara Grand at CentralWorld', '', '13.747717', '100.538747', '1505495469.jpg', '', '', '', '', '', '', 1, 0, 0, 0, '24', '09:00', '18:00', '', 0, 0, 0, '2017-09-16 00:11:09', '2017-07-04 23:58:30'),
(103, 'Hello event', 'The fact is I have a problem I don\'t like to see it on twitter and I\'m just saying that it doesn\'t even have to do so on twitter or Facebook lol I can\'t even tell me that I\'m going out on twitter but I\'m still waiting on you for you guys \n', '2017-07-03', '2017-07-10', '', 'Apple City', '', '37.3322109', '-122.0307778', '1499190067.jpg', '', '', '', '', '', '', 0, 0, 0, 0, '9', '15:00', '19:00', '', 0, 0, 0, '2017-07-05 00:41:07', '2017-07-05 00:41:07'),
(104, 'Test Long name event....1234567890123456789012345678901234567890L', 'Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..Long long long description..', '2017-08-22', '2017-11-22', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '1508990437.jpg', '', '', '', '', 'www.web.com', '', 5, 1, 0, 0, '9', '00:30', '10:30', '', 0, 3, 0, '2017-10-26 11:00:37', '2017-07-05 01:00:20'),
(114, 'emoji3 ', '', '2017-07-10', '2017-08-10', '', 'Apple Infinite Loop', '', '37.3316756', '-122.030189', '', '', '', '', '', '', '', 0, 1, 0, 1, '9', '01:30', '02:00', '', 0, 0, 0, '2017-07-10 02:43:25', '2017-07-10 02:43:25'),
(115, 'WordCamp Europe 2018', 'WordCamp Europe  ปี 2018 จัดที่เซอร์เบีย', '2018-01-01', '2018-06-16', '', 'Serbia', '', '44.016521', '21.005859', '1515165511.jpg', '', '', '', '', '', '', 1, 1, 1, 0, '25', '08:00', '22:00', '', 1, 6, 0, '2018-01-05 22:18:31', '2017-07-17 22:52:02'),
(124, '', 'Trsetstteteddffffff. \nYyygg', '2017-08-24', '2017-08-28', '', 'The Crystal SB Ratchaphruek', '', '13.8095246', '100.4483527', '', '', '', '', '', '', '', 1, 0, 0, 0, '25', '22:45', '23:45', '', 0, 0, 0, '2017-09-17 02:13:44', '2017-08-26 22:48:12'),
(156, 'Test event', '', '2560-09-11', '2560-10-11', '', 'Chao Phraya River', '', '14.6190977', '100.3278107', '1506772223.jpg', 'https://www.facebook.com/event', '', '', '', 'https://www.google.com', '', 1, 1, 0, 0, '25', '14:30', '15:45', '', -2, 29, 8, '2018-01-14 01:15:10', '2017-09-11 14:34:13'),
(159, 'Event 11/09', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2017-11-08', '2017-11-15', '', 'Siam Center', '', '13.7458517', '100.5336821', '1509904244.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '0', '09:00', '22:00', '', 0, 0, 0, '2017-11-06 00:50:44', '2017-09-11 20:17:30'),
(161, 'Event 1109 ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-11-03', '2017-11-15', '', 'Siam Center', '', '13.7458517', '100.5336821', '1509904268.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '0', '12:00', '23:00', '', 0, 0, 0, '2017-11-06 00:51:08', '2017-09-11 20:32:52'),
(162, 'Event + {1109}', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. \n\nUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. \n\nDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', '2017-10-28', '2017-10-30', '', 'The Crystal SB Ratchaphruek', '', '13.8095246', '100.4483527', '1509010403.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '24', '16:30', '16:30', '', 0, 3, 0, '2017-10-26 17:23:30', '2017-09-11 20:51:03'),
(163, 'test date time', '', '2017-09-13', '2017-12-13', '', 'Apple Infinite Loop', '', '37.3322109', '-122.0307778', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '21:00', '23:00', '', 1, 0, 0, '2017-10-26 16:03:02', '2017-09-13 21:11:05'),
(288, '06/01/2018 #1', '', '2018-01-06', '2018-01-10', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515248567.jpg', '', '', '', '', '', '', 1, 0, 0, 1, '86', '08:00', '11:00', '', 0, 0, 0, '2018-01-06 21:22:47', '2018-01-06 21:22:47'),
(289, '06/01/2018 #2', '', '2018-01-06', '2018-01-07', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515249249.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '22:00', '18:00', '', 0, 0, 0, '2018-01-06 21:34:09', '2018-01-06 21:34:09'),
(290, '08/01/2018 #1', '', '2018-01-08', '2018-01-09', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515372097.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '05:30', '20:30', '', 0, 0, 0, '2018-01-08 07:41:37', '2018-01-08 07:40:09'),
(291, '09/01/2018 #', '', '2018-01-09', '2018-01-09', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515464543.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '18:00', '20:00', '', 0, 0, 0, '2018-01-09 09:22:23', '2018-01-09 09:22:23'),
(292, '14/01/2018 #1', '', '2018-01-14', '2018-02-28', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515932598.jpg', 'FBjoime', '@joime', '', 'frame', 'www.joime', '', 1, 1, 0, 0, '86', '21:00', '13:00', '', 0, 0, 0, '2018-01-14 19:23:18', '2018-01-14 19:19:36'),
(293, '14/01/2018 #2', '', '2018-01-15', '2018-01-16', '', 'Victory Monument BTS Station', '', '13.7627583', '100.5370845', '1515953799.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '08:00', '17:00', '', 0, 0, 0, '2018-01-15 01:16:39', '2018-01-15 01:16:39'),
(240, 'Test', 'Test', '2017-10-22', '2017-10-23', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 1, 1, 0, 0, '25', '08:00', '12:00', '', 0, 2, 0, '2017-10-21 22:56:54', '2017-10-21 22:15:02'),
(241, 'นนนนน', '', '2017-10-22', '2017-10-23', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 1, 0, 0, 0, '25', '08:15', '12:15', '', 0, 1, 0, '2017-10-26 10:51:57', '2017-10-21 22:18:33'),
(195, 'Test', '', '2017-09-24', '2017-09-24', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 1, 0, 0, 0, '25', '02:15', '02:45', '', 0, 2, 0, '2017-10-26 10:51:26', '2017-09-24 02:19:39'),
(260, 'Test', '', '2560-11-18', '2560-11-19', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '08:00', '00:00', '', 0, 0, 0, '2017-11-18 16:06:24', '2017-11-18 16:06:24'),
(247, 'Barbecue Party', 'BBQ Party ', '2018-01-08', '2018-01-08', '', 'The Crystal SB Ratchaphruek', '', '13.8095246', '100.4483527', '1515166444.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '24', '11:00', '20:00', '', 0, 7, 0, '2018-01-05 22:34:04', '2017-10-26 11:09:41'),
(284, '05/01/2018 #3', '', '2018-01-07', '2018-01-14', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515239639.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '08:30', '18:30', '', 0, 0, 0, '2018-01-06 18:53:59', '2018-01-05 17:34:00'),
(285, '05/01/2018 #4', '', '2018-01-06', '2018-01-06', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515248373.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '02:45', '06:00', '', 0, 0, 0, '2018-01-06 21:19:33', '2018-01-06 03:51:54'),
(271, 'test 2', 'P', '2560-11-19', '2560-11-19', '', 'Romaneenart Park', '', '13.7488815', '100.5026025', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '13:15', '13:45', '', 1, 0, 0, '2017-11-25 01:47:17', '2017-11-19 13:18:38'),
(269, 'trt', '', '2014-11-19', '2014-11-19', '', 'เจริญพุงโภชนา', '', '13.726273', '100.4996835', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '05:15', '08:15', '', 0, 0, 0, '2017-11-19 05:16:22', '2017-11-19 05:16:22'),
(252, '01/12/2017 #9', 'ฟหกด asdf 1234 ', '2018-01-28', '2018-03-28', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515312326.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '01:00', '22:30', '', 2, 0, 0, '2018-01-07 15:05:26', '2017-10-27 03:37:53'),
(261, 'ReTest Time', 'Test', '2560-11-18', '2560-11-19', '', 'South Atlantic Ocean', '', '-33.72434', '-15.996094', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '08:00', '00:00', '', 0, 0, 0, '2017-11-18 16:07:32', '2017-11-18 16:07:32'),
(283, '05/10/2018 #2', '', '2018-01-03', '2018-01-09', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515146612.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '16:00', '22:00', '', 0, 0, 0, '2018-01-05 17:03:32', '2018-01-05 17:03:32'),
(256, '20171112 #1', 'ฟหกด asdf ', '2017-11-13', '2017-11-13', '', 'Victory Monument', '', '13.7627583', '100.5370845', '', '', '', '', '', '', '', 1, 0, 0, 1, '86', '08:00', '19:00', '', 0, 0, 0, '2017-11-13 01:10:52', '2017-11-13 01:10:52'),
(259, 'Test', '', '2018-11-18', '2018-11-19', '', '0°00\'00.0000\"N 0°00\'00.0000\"E', '', '0', '0', '', '', '', '', '', '', '', 1, 1, 0, 1, '25', '08:00', '12:00', '', 0, 0, 0, '2017-11-18 16:01:44', '2017-11-18 16:01:44'),
(258, '01/12/2017 #6', 'ฟหกด 1234 asdf  ', '2018-01-03', '2018-01-13', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1512100897.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '02:00', '23:00', '', 5, 0, 0, '2017-12-01 11:01:37', '2017-11-18 03:14:43'),
(287, 'Contributor day', 'วัน Contributor day for WordPress ', '2018-01-06', '2018-01-06', '', 'Siam University', '', '13.71828', '100.453148', '1515209654.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '24', '11:00', '17:00', '', 0, 0, 0, '2018-01-06 10:34:14', '2018-01-06 10:34:14'),
(282, '05/01/2018 #1', '', '2018-01-05', '2018-01-10', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515146346.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '08:00', '18:00', '', 9, 0, 0, '2018-01-05 17:10:11', '2018-01-05 16:59:06'),
(281, '03/01/2018 #2', '', '2018-01-04', '2018-01-25', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1515146453.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '05:30', '12:30', '', 0, 0, 0, '2018-01-05 17:00:53', '2018-01-03 13:32:33'),
(278, '02/02/2017 #2', 'ฟกกด 1234 xcvb', '2018-01-04', '2018-01-10', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1514912972.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '08:00', '18:00', '', 0, 0, 0, '2018-01-03 00:09:32', '2017-12-26 04:14:39'),
(279, '02/02/2018 #1', '', '2018-01-02', '2018-01-10', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1514852720.jpg', '', '', '', '', '', '', 1, 1, 0, 0, '86', '08:00', '17:15', '', 0, 0, 0, '2018-01-02 07:25:20', '2017-12-26 04:16:46'),
(280, '03/01/2018 #1', '', '2018-01-04', '2018-01-06', '', 'Victory Monument', '', '13.7627583', '100.5370845', '1514961077.jpg', '', '', '', '', '', '', 1, 1, 0, 1, '86', '07:30', '15:30', '', 0, 0, 0, '2018-01-03 13:31:17', '2018-01-03 13:31:17'),
(219, 'Teast', 'Testing ', '2017-10-05', '2017-10-08', '', 'กลุ่มชมรมอาสมัครสาธารณสุข หมู่ที่ 5', '', '13.8399345', '100.4571284', '', '', '', '', '', '', '', 1, 0, 0, 0, '24', '23:00', '20:00', '', 0, 0, 0, '2017-11-13 17:18:51', '2017-10-05 21:07:22');

-- --------------------------------------------------------

--
-- Table structure for table `event_block`
--

CREATE TABLE `event_block` (
  `id` int(10) NOT NULL,
  `event_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_block`
--

INSERT INTO `event_block` (`id`, `event_id`, `user_id`, `updated_at`, `created_at`) VALUES
(2, '185', '25', '2017-09-20 20:40:31', '2017-09-20 20:40:31'),
(3, '115', '25', '2017-09-20 21:07:01', '2017-09-20 21:07:01');

-- --------------------------------------------------------

--
-- Table structure for table `event_participant`
--

CREATE TABLE `event_participant` (
  `id` int(10) NOT NULL,
  `event_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_participant`
--

INSERT INTO `event_participant` (`id`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '11', '22', '2017-10-09 23:38:19', '2017-10-09 23:38:19'),
(2, '11', '23', '2017-10-09 23:38:23', '2017-10-09 23:38:23'),
(3, '11', '24', '2017-10-09 23:38:26', '2017-10-09 23:38:26'),
(4, '15', '1', '2017-10-09 23:38:45', '2017-10-09 23:38:45'),
(5, '15', '2', '2017-10-09 23:38:47', '2017-10-09 23:38:47'),
(6, '247', '25', '2017-10-26 00:00:00', '2017-10-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `event_view`
--

CREATE TABLE `event_view` (
  `id` int(10) NOT NULL,
  `event_id` varchar(10) NOT NULL,
  `ipaddress` varchar(10) NOT NULL,
  `viewDate` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(10) NOT NULL,
  `event_id` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `event_id`, `user_id`, `updated_at`, `created_at`) VALUES
(1, '', '', '2017-09-19 14:35:18', '2017-09-19 14:35:18'),
(2, '', '', '2017-09-20 20:13:44', '2017-09-20 20:13:44'),
(3, '', '', '2017-09-20 20:22:34', '2017-09-20 20:22:34'),
(4, '', '', '2017-09-20 20:34:31', '2017-09-20 20:34:31'),
(5, '', '', '2017-09-20 20:36:28', '2017-09-20 20:36:28'),
(6, '', '', '2017-09-20 20:36:52', '2017-09-20 20:36:52'),
(31, '258', '86', '2017-11-20 07:09:57', '2017-11-20 07:09:57'),
(8, '192', '24', '2017-10-04 13:20:33', '2017-10-04 13:20:33'),
(29, '163', '25', '2017-10-26 16:03:02', '2017-10-26 16:03:02'),
(10, '192', '25', '2017-10-07 03:26:54', '2017-10-07 03:26:54'),
(11, '1', '1', '2017-10-08 01:53:37', '2017-10-08 01:53:37'),
(12, '1', '1', '2017-10-08 01:54:25', '2017-10-08 01:54:25'),
(13, '1', '1', '2017-10-08 01:55:07', '2017-10-08 01:55:07'),
(14, '1', '1', '2017-10-08 01:56:58', '2017-10-08 01:56:58'),
(15, '192', '1', '2017-10-08 01:57:52', '2017-10-08 01:57:52'),
(16, '192', '1', '2017-10-08 01:57:56', '2017-10-08 01:57:56'),
(17, '192', '1', '2017-10-08 02:01:01', '2017-10-08 02:01:01'),
(30, '37', '0', '2017-11-06 01:24:35', '2017-11-06 01:24:35'),
(19, '235', '86', '2017-10-18 17:03:48', '2017-10-18 17:03:48'),
(20, '239', '86', '2017-10-18 22:30:21', '2017-10-18 22:30:21'),
(21, '233', '86', '2017-10-22 14:57:38', '2017-10-22 14:57:38'),
(22, '237', '86', '2017-10-23 10:40:57', '2017-10-23 10:40:57'),
(23, '245', '25', '2017-10-25 23:55:54', '2017-10-25 23:55:54'),
(33, '258', '86', '2017-11-20 07:09:58', '2017-11-20 07:09:58'),
(32, '258', '86', '2017-11-20 07:09:58', '2017-11-20 07:09:58'),
(26, '115', '25', '2017-10-26 11:12:51', '2017-10-26 11:12:51'),
(34, '258', '86', '2017-11-20 07:09:58', '2017-11-20 07:09:58'),
(35, '258', '86', '2017-11-20 07:09:58', '2017-11-20 07:09:58'),
(36, '271', '25', '2017-11-25 01:47:17', '2017-11-25 01:47:17'),
(37, '282', '86', '2018-01-05 17:10:02', '2018-01-05 17:10:02'),
(38, '282', '86', '2018-01-05 17:10:03', '2018-01-05 17:10:03'),
(39, '282', '86', '2018-01-05 17:10:04', '2018-01-05 17:10:04'),
(40, '282', '86', '2018-01-05 17:10:04', '2018-01-05 17:10:04'),
(41, '282', '86', '2018-01-05 17:10:08', '2018-01-05 17:10:08'),
(42, '282', '86', '2018-01-05 17:10:08', '2018-01-05 17:10:08'),
(43, '282', '86', '2018-01-05 17:10:08', '2018-01-05 17:10:08'),
(44, '282', '86', '2018-01-05 17:10:10', '2018-01-05 17:10:10'),
(45, '282', '86', '2018-01-05 17:10:11', '2018-01-05 17:10:11'),
(49, '156', '25', '2018-01-14 01:15:10', '2018-01-14 01:15:10'),
(48, '252', '86', '2018-01-07 15:02:54', '2018-01-07 15:02:54');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(250) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ip_address` text NOT NULL,
  `user_agent` text NOT NULL,
  `payload` text NOT NULL,
  `last_activity` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('9b36daac62e656906655bc788e3e3e4eae604b66', 0, '', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWWdsME90YjJ0OXFuTk04QkJldmlva0RHdTU0M0NoZlpBRFF3MkdVdyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTUxNjQzMjg5NDtzOjE6ImMiO2k6MTUxNjQyNzEyMDtzOjE6ImwiO3M6MToiMCI7fX0=', '1516432894'),
('0ae3a287ee232fcc6a07e120dd46359825dbec2d', 0, '', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnFWYmltUm9pNkVhU2xqYk53MXg3eVdaelpwTTNkWVJmNEc5UDFVaiI7czo5OiJfc2YyX21ldGEiO2E6Mzp7czoxOiJ1IjtpOjE1MTY0MzIwNjg7czoxOiJjIjtpOjE1MTY0MzIwNjg7czoxOiJsIjtzOjE6IjAiO31zOjU6ImZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', '1516432068'),
('5e89c36d85f95b9c5c3f96431a9a846624d1cc3c', 0, '', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0VrODJhdVdydE5HSUR3aFdRUmpVR2poOTFneW1LOW05SkRpZ0VwMyI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTUxNjQzMjY5MDtzOjE6ImMiO2k6MTUxNjQzMjQ5NDtzOjE6ImwiO3M6MToiMCI7fX0=', '1516432690'),
('eff164e46a4c01a453ac525f6048fe371ab9d612', 0, '', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOUJjZHZaMkIwRmdRT1RvSjA0MHRvMkZhTHVvclA4eTdnQzRMNDQxeiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTUxNjQzNjQ2MztzOjE6ImMiO2k6MTUxNjQzNjQzMjtzOjE6ImwiO3M6MToiMCI7fX0=', '1516436463'),
('09a0a393c0c1ac513d4fe5914d1ae17200ddbb42', 0, '', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmFsVEx3Y2IyQnFVT3U5RTBkZGJBdDh5dDU5Q2U5MzA4WWFqc1ExRiI7czo1OiJmbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjk6Il9zZjJfbWV0YSI7YTozOntzOjE6InUiO2k6MTUxNjQ0NjY3MztzOjE6ImMiO2k6MTUxNjQ0NjUwODtzOjE6ImwiO3M6MToiMCI7fX0=', '1516446673');

-- --------------------------------------------------------

--
-- Table structure for table `subscri`
--

CREATE TABLE `subscri` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `token` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscri`
--

INSERT INTO `subscri` (`id`, `email`, `token`, `created_at`, `updated_at`) VALUES
(3, 'contact@pantip.ws', '53907378478', '2017-06-15 04:07:21', '2017-06-15 04:07:21'),
(2, 'contact@pantip.ws', '24885920817', '2017-06-15 04:06:49', '2017-06-15 04:06:49'),
(4, 'hoynoy@hotmail.com', '96791729582', '2017-06-15 04:23:13', '2017-06-15 04:23:13'),
(5, 'freezise@hotmail.com', '32995991241', '2017-08-25 23:24:47', '2017-08-25 23:24:47'),
(6, 'freezise@hotmail.com', '91397386942', '2017-08-25 23:50:23', '2017-08-25 23:50:23'),
(7, 'freezise@hotmail.com', '70810661241', '2017-08-25 23:57:54', '2017-08-25 23:57:54'),
(9, 'TEE_IDEA@hotmail.com', '28140821689', '2017-08-27 22:30:48', '2017-08-27 22:30:48'),
(10, 'hoynoy@hotmail.com', '21638784855', '2017-08-27 22:32:26', '2017-08-27 22:32:26'),
(11, 'hoynoy@hotmail.com', '57929430021', '2017-09-12 23:56:11', '2017-09-12 23:56:11'),
(12, 'hoynoy@hotmail.com', '43509301287', '2017-09-13 16:12:30', '2017-09-13 16:12:30'),
(13, 'freezise@hotmail.com', '79983235583', '2017-09-13 22:47:34', '2017-09-13 22:47:34'),
(14, 'hoynoy@hotmail.com', '59248076183', '2017-09-13 22:48:02', '2017-09-13 22:48:02'),
(15, 'teerapol@gmail.com', '55886227674', '2017-09-14 15:56:18', '2017-09-14 15:56:18'),
(16, 'teerapol.saw@ascendcorp.com', '63929738830', '2017-09-14 16:01:17', '2017-09-14 16:01:17'),
(17, 'teerapol.saw@ascendcorp.com', '27535960297', '2017-09-14 16:36:53', '2017-09-14 16:36:53'),
(18, 'Freezise@hotmail.com', '37482144320', '2017-09-14 16:44:12', '2017-09-14 16:44:12'),
(19, 'Hoynoy@hotmail.com', '14003920187', '2017-09-14 17:17:31', '2017-09-14 17:17:31'),
(20, 'freezise@hotmail.com', '13398238457', '2017-09-14 23:43:13', '2017-09-14 23:43:13'),
(21, 'freezise@hotmail.com', '63566744085', '2017-09-14 23:48:37', '2017-09-14 23:48:37'),
(22, 'freezise@hotmail.com', '13223287016', '2017-09-14 23:51:01', '2017-09-14 23:51:01'),
(23, 'freezise@hotmail.com', '70961773083', '2017-09-14 23:54:27', '2017-09-14 23:54:27'),
(24, 'freezise@hotmail.com', '10735906539', '2017-09-14 23:56:10', '2017-09-14 23:56:10'),
(25, 'freezise@hotmail.com', '63671801560', '2017-09-14 23:58:14', '2017-09-14 23:58:14'),
(26, 'hoynoy@hotmail.com', '42582612363', '2017-09-16 03:34:45', '2017-09-16 03:34:45'),
(27, 'freezise@hotmail.com', '97519193156', '2017-09-16 17:27:48', '2017-09-16 17:27:48'),
(28, 'freezise@hotmail.com', '63511470840', '2017-09-16 17:28:56', '2017-09-16 17:28:56'),
(29, 'freezise@hotmail.com', '23975923238', '2017-09-16 17:49:13', '2017-09-16 17:49:13'),
(30, 'hoynoy@hotmail.com', '29946510028', '2017-09-16 17:52:57', '2017-09-16 17:52:57');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(10) NOT NULL,
  `event_id` varchar(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `detail` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `checkin`
--
ALTER TABLE `checkin`
  ADD KEY `id` (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_block`
--
ALTER TABLE `event_block`
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `event_participant`
--
ALTER TABLE `event_participant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD KEY `id` (`id`);

--
-- Indexes for table `subscri`
--
ALTER TABLE `subscri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `checkin`
--
ALTER TABLE `checkin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `event_block`
--
ALTER TABLE `event_block`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_participant`
--
ALTER TABLE `event_participant`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `subscri`
--
ALTER TABLE `subscri`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `suggestions`
--
ALTER TABLE `suggestions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
