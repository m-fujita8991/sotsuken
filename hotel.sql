-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-12 06:06:03
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
-- テーブルの構造 `hotel`
--

CREATE TABLE `hotel` (
  `hotel_id` int(255) NOT NULL COMMENT 'ホテル固有のID',
  `name` varchar(255) NOT NULL COMMENT 'ホテルの名前',
  `building` varchar(255) NOT NULL COMMENT '所在地',
  `price` varchar(255) NOT NULL COMMENT '金額',
  `image` varchar(255) NOT NULL COMMENT '画像のパス',
  `locate_id` varchar(255) NOT NULL COMMENT '地域コード',
  `prefecture_id` varchar(255) NOT NULL COMMENT '都道府県コード'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `name`, `building`, `price`, `image`, `locate_id`, `prefecture_id`) VALUES
(1, '南紀白浜マリネットホテル', '和歌山県西牟婁郡白浜町2428', '34,000~38,000', 'https://drive.google.com/uc?id=1OW_Ze3XV37L9lubqT_ZwgI596HdciD1q', '3', '30'),
(2, 'ウェスティンホテル大阪', '大阪府大阪市北区大淀中1丁目1-20 新梅田シティ内', '35,000~45,000', 'https://drive.google.com/uc?id=1-H80hR6kj444AKfYokYvHhOsFrs0Bu5V', '3', '27'),
(3, 'ロイヤルホテル土佐', '高知県安芸郡芸西村西分甲2995', '33,000~36,000', 'https://drive.google.com/uc?id=1_MrinUZ0xqS_tqa9OOVscZfp3UShc3uU', '4', '39'),
(4, 'グランドプリンスホテル広島', '広島県広島市南区元宇品町23-1', '27,000~30,000', 'https://drive.google.com/uc?id=1Kx8YZNqtW2B0vSih7FSPyHaU4lvkatM7', '4', '34'),
(5, 'マリンタラソ出雲', '島根県出雲市多伎町多岐859-1', '11,000~12,000', 'https://drive.google.com/uc?id=1YHSDMdZpSe9FYUoroafjv9Sm0fi88TpA', '4', '32');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ホテル固有のID', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
