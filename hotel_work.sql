-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-30 02:19:09
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 8.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `sotuken`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `hotel_work`
--

DROP TABLE IF EXISTS `hotel_work`;
CREATE TABLE `hotel_work` (
  `hotel_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `hotel_work_image1` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションの写真1',
  `hotel_work_image2` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションの写真2',
  `hotel_work_image3` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションの写真3',
  `hotel_work_title1` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションのタイトル1',
  `hotel_work_title2` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのタイトル2',
  `hotel_work_text1` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのテキスト1',
  `hotel_work_text2` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのテキスト2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hotel_work`
--

INSERT INTO `hotel_work` (`hotel_id`, `name`, `hotel_work_image1`, `hotel_work_image2`, `hotel_work_image3`, `hotel_work_title1`, `hotel_work_title2`, `hotel_work_text1`, `hotel_work_text2`) VALUES
(1, '南紀白浜マリオットホテル', '', '', '', '', '', '', ''),
(2, 'ウェスティンホテル大阪', '', '', '', '', '', '', ''),
(3, 'ロイヤルホテル土佐', 'https://drive.google.com/uc?id=1tXP9UnJ-ccOixkIrOm0ofEiHQ2-qL2Oy', 'https://drive.google.com/uc?id=1SXBJfYk7oXE_Z7OntDwv49hntZTMB9nS', 'https://drive.google.com/uc?id=1Pn557sFi0H5P0pE6B0uqREEYwLsicnGf', '◆よさこい温泉◆', '◆HOTEL INFO◆\r\n', '【営業時間】14時00分-23時00分、6時00分-9時00分<br>\r\n高知県の観光名所「桂浜」「室戸岬」をイメージした露天風呂に<br>\r\n湯量たっぷりの内湯やサウナ、壺湯などを楽しむことが出来るホテル自慢の温泉大浴場です。', '・無料駐車場完備！ホテル屋外駐車場は平面の駐車場で乗用車約240台駐車可能です。<br>\r\n・全館Wi-Fi接続サービスによるインターネット無料接続が可能。<br>\r\n・電車（夜須駅）で来館なら無料シャトルバスをご利用くださいませ<br>\r\n　【夜須駅→ホテル：14時30分・16時30分　ホテル→夜須駅：9時10分・10時10分】<br>\r\n・Wi-Fi完備、充電コンセント完備、お仕事にご利用いただける1階フリースペースCafe ROYAL Blustar有り'),
(4, 'グランドプリンスホテル広島', '', '', '', '', '', '', ''),
(5, 'マリンタラソ出雲', '', '', '', '', '', '', ''),
(6, 'ホテルリマーニ', '', '', '', '', '', '', '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hotel_work`
--
ALTER TABLE `hotel_work`
  ADD PRIMARY KEY (`hotel_id`,`name`);

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `hotel_work`
--
ALTER TABLE `hotel_work`
  ADD CONSTRAINT `sotuken_hotel` FOREIGN KEY (`hotel_id`,`name`) REFERENCES `hotel` (`hotel_id`, `name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
