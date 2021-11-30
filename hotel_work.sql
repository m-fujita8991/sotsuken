-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-30 04:58:50
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
  `hotel_work_title1` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションのタイトル1',
  `hotel_work_title2` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのタイトル2',
  `hotel_work_text1` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのテキスト1',
  `hotel_work_text2` varchar(255) NOT NULL COMMENT 'ホテルのワーケーションプランのテキスト2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hotel_work`
--

INSERT INTO `hotel_work` (`hotel_id`, `name`, `hotel_work_title1`, `hotel_work_title2`, `hotel_work_text1`, `hotel_work_text2`) VALUES
(1, '南紀白浜マリオットホテル', '', '', '', ''),
(2, 'ウェスティンホテル大阪', '◆特典◆', '◆ルームサービスランチ◆', '・駐車料金1台無料（駐車場300台完備　24時間営業・予約不要）<br>\r\n・館内Wi-Fi無料<br>\r\n・ランチご提供時にプチデザート、ワンドリンクをサービス\r\n', '【ご利用可能時間：11:30～19:00】<br>\r\nご利用可能時間は予告なく変更になる可能性がございます。<br>\r\nランチメニューはページ下部「※13種類から選べるルームサービスセットメニュー」をご覧下さい。\r\n'),
(3, 'ロイヤルホテル土佐', '◆よさこい温泉◆', '◆HOTEL INFO◆\r\n', '【営業時間】14時00分-23時00分、6時00分-9時00分<br>\r\n高知県の観光名所「桂浜」「室戸岬」をイメージした露天風呂に<br>\r\n湯量たっぷりの内湯やサウナ、壺湯などを楽しむことが出来るホテル自慢の温泉大浴場です。', '・無料駐車場完備！ホテル屋外駐車場は平面の駐車場で乗用車約240台駐車可能です。<br>\r\n・全館Wi-Fi接続サービスによるインターネット無料接続が可能。<br>\r\n・電車（夜須駅）で来館なら無料シャトルバスをご利用くださいませ<br>\r\n　【夜須駅→ホテル：14時30分・16時30分　ホテル→夜須駅：9時10分・10時10分】<br>\r\n・Wi-Fi完備、充電コンセント完備、お仕事にご利用いただける1階フリースペースCafe ROYAL Blustar有り'),
(4, 'グランドプリンスホテル広島', '', '', '', ''),
(5, 'マリンタラソ出雲', '◆ワーケーションに最適なプランの新登場◆', '◆元気海プールについて◆', 'チェックイン 15：00 ／ チェックアウト 11：00<br>\r\n※本プランは大人のご利用のみとなっております。<br>\r\n全室Wi-Fi完備。<br>\r\nオーシャンビューの開放的な空間はワーキングにもバケーションにもオススメ！<br>\r\nそして、ワーキングで疲れた心と身体を「元気海プール」でリフレッシュ。<br>\r\nさらに「多伎いちじく温泉」の無料入浴券もプレゼント！<br>\r\n※休館の場合もございます。', 'ご利用時間<br>\r\n10：00〜20：30（最終受付20：00）<br>\r\nご利用時間内なら何時でも何度でも！お好きな時にプール使い放題！<br>\r\n水着レンタル無料！手ぶらでOK！'),
(6, 'ホテルリマーニ', '◆特典◆', '◆ルーム◆', '3名様の場合はソファーベッド対応。<br>\r\nバス・トイレはセパレートタイプ。<br>\r\n※全室禁煙・Wi-Fi無料接続。\r\n', '2020年3月リニューアルしたお部屋。<br>\r\n広々40平米　全室オーシャンビュー・テラス付。<br>\r\nホテルのイメージカラー「青と白」をデザインテーマとして爽やかな内装に仕上げたお部屋。<br>\r\nベッドは最上の眠りを追求するシモンズ社製セミダブルベッド2台を設置。\r\n');

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
