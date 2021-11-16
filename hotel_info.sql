-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-16 02:31:31
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
-- テーブルの構造 `hotel_info`
--

CREATE TABLE `hotel_info` (
  `hotel_id` int(255) NOT NULL COMMENT 'ホテル固有のID',
  `name` varchar(255) NOT NULL COMMENT 'ホテルの名前',
  `top_image` varchar(255) NOT NULL COMMENT 'ホテルの写真',
  `hotel_text` varchar(255) NOT NULL COMMENT 'ホテルの紹介文章',
  `hotel_institution_image1` varchar(255) NOT NULL COMMENT 'ホテルの施設の写真1',
  `hotel_institution_image2` varchar(255) NOT NULL COMMENT 'ホテルの施設の写真2',
  `hotel_institution_image3` varchar(255) NOT NULL COMMENT 'ホテルの施設の写真3',
  `hotel_institution_text1` varchar(255) NOT NULL COMMENT 'ホテルの施設の文章1',
  `hotel_institution_text2` varchar(255) NOT NULL COMMENT 'ホテルの施設の文章2',
  `hotel_institution_text3` varchar(255) NOT NULL COMMENT 'ホテルの施設の文章3',
  `hotel_lunch_image1` varchar(255) NOT NULL COMMENT 'ランチの写真1',
  `hotel_lunch_image2` varchar(255) NOT NULL COMMENT 'ランチの写真2',
  `hotel_lunch_text1` varchar(255) NOT NULL COMMENT 'ランチの文章1',
  `hotel_lunch_text2` varchar(255) NOT NULL COMMENT 'ランチの文章2',
  `hotel_lunch_name1` varchar(255) NOT NULL COMMENT 'ランチの店名1',
  `hotel_lunch_name2` varchar(255) NOT NULL COMMENT 'ランチの店名2',
  `hotel_dinner_image1` varchar(255) NOT NULL COMMENT 'ディナーの写真1',
  `hotel_dinner_image2` varchar(255) NOT NULL COMMENT 'ディナーの写真2',
  `hotel_dinner_text1` varchar(255) NOT NULL COMMENT 'ディナーの文章1',
  `hotel_dinner_text2` varchar(255) NOT NULL COMMENT 'ディナーの文章2',
  `hotel_dinner_name1` varchar(255) NOT NULL COMMENT 'ディナーの店名1',
  `hotel_dinner_name2` varchar(255) NOT NULL COMMENT 'ディナーの店名2',
  `hotel_map_url` varchar(255) NOT NULL COMMENT 'ホテルのマップのURL',
  `hotel_reserve_url` varchar(255) NOT NULL COMMENT 'ホテルの予約のURL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hotel_info`
--

INSERT INTO `hotel_info` (`hotel_id`, `name`, `top_image`, `hotel_text`, `hotel_institution_image1`, `hotel_institution_image2`, `hotel_institution_image3`, `hotel_institution_text1`, `hotel_institution_text2`, `hotel_institution_text3`, `hotel_lunch_image1`, `hotel_lunch_image2`, `hotel_lunch_text1`, `hotel_lunch_text2`, `hotel_lunch_name1`, `hotel_lunch_name2`, `hotel_dinner_image1`, `hotel_dinner_image2`, `hotel_dinner_text1`, `hotel_dinner_text2`, `hotel_dinner_name1`, `hotel_dinner_name2`, `hotel_map_url`, `hotel_reserve_url`) VALUES
(1, '南紀白浜マリオットホテル', 'https://drive.google.com/uc?id=1yXvNHypJSv5Leav_IQb6X_LnT2v7PSK6', '', 'https://drive.google.com/uc?id=1qXOAqrhVDCvJmK3Ukqfi_rG-rg4ZWcZ1', 'https://drive.google.com/uc?id=1cw0GPZoC11nI6ZcXvrmHoCXzC2LiBMNU', 'https://drive.google.com/uc?id=139NYTTwjmSNmWYVsQAlEuXqB185slLdR', '', '', '', 'https://drive.google.com/uc?id=1DGHPw8y-Ox14Cv3aDNreTdRlnnZGUCEE', 'https://drive.google.com/uc?id=1UZRI0aRC4yCkWed75yaOmKT7vJshkaRg', '', '', '', '', 'https://drive.google.com/uc?id=1WLBEsin0KIH8xRG9myCKIAk4kELxJH9L', 'https://drive.google.com/uc?id=1VEPP3WQOzFCfWj6BU9DtjJG-ohmoOA3c', '日本三大居酒屋のひとつ！カウンター席のある小さな店で、新鮮な南紀白浜の魚介の網焼きなど海鮮料理を日本酒やビールと一緒に楽しめる大衆居酒屋。', '天然本くえにこだわり養殖くえは絶対に使わない。\r\n１年を通して天然本くえを味わえるくえ料理専門店。', '大衆酒場 長久酒場', '活魚・鍋料理 風車', '', ''),
(2, 'ウェスティンホテル大阪', 'https://drive.google.com/uc?id=1gFXDd5_KrrYnoKshgyb5Mwcy3ciFWwCZ', 'ウェスティンホテル大阪の客室は全室が 41平方メートル 以上の広さを持ち、窓からは大阪の夜景を一望いただけます。 ベッドはウェスティンホテル＆リゾーツオリジナル、「雲の上の寝心地」と称されるヘブンリーベッドを設置し、快適なホテルステイをご提供。また京都や神戸方面にもアクセス便利な最寄り駅、JR大阪駅へは徒歩約7分、 大阪市内観光に便利な地下鉄梅田駅へは徒歩約9分と、大阪の中心でありながら、周囲を緑豊かな環境に恵まれています。', 'https://drive.google.com/uc?id=1ZXyzbGmGYHTvmH6zJCzUCCvu-lIv_cNg', 'https://drive.google.com/uc?id=1Y0djCBDs_WG2q6NKYjoWEhbx0fmt0h1L', 'https://drive.google.com/uc?id=1MJnXXOqQU-d_QAW0b9FvSp8hn9gdo_J6', 'すべての客室が41㎡以上ある、ウェスティンホテル大阪は、ターミナル駅であるJR大阪駅へ徒歩約7分、神戸や京都などへもアクセス便利な好ロケーション。 ベッドはウェスティンホテル＆リゾートオリジナル、「雲の上の寝心地」と称される”ヘブンリーベッド”を設置し、快適なホテルステイをご提供いたします。', '常に適温を保つ幅7M × 長さ20Mのプール。陽の光が燦々と差し込むため、室内は明るく解放的。快適性にこだわった屋内型プールです。また、ジャグジーとも呼ばれる円形状のプールもあり、水面下より気泡を含んだ水流が勢いよく体全体を刺激します。疲れた筋肉をほぐし、心身ともに快適にします。', '癒しと健康、そして美容にも効果があると好評の鍼灸。ウェスティンホテル大阪 鍼灸サロンでは、お体に優しい低刺激で安全な施術を行っておりますので、 鍼灸をお受けになるのが初めてのお客様にも安心してご利用いただいております。', 'https://drive.google.com/uc?id=1UzdKuP1TZth8L08A5aaRditDKw_yEck0', 'https://drive.google.com/uc?id=1qkAMVPZ8IvsnjV7TqXRaZuR1nqon5Zpn', 'ヨーロッパの本格的食事パンや焼き菓子が並ぶ店\r\n多種多様な粉を使用し、欧州の本格的食事パンや色とりどりのデニッシュなど、発酵方法や製造方法にこだわったパンを提供しております。\r\nランチはクロックムッシュやキッシュ等、日替わりメニューをご用意しております。\r\n', 'スープは２４時間かけてじっくりと作り込み、化学調味料の使わない安心・安全の濃厚とんこつスープ。麺は自家製スープのコンディションに合わせ、毎日、小麦粉の配合、加水率を微調整して製麺しております。メニューに合わせ三種の麺があります。また、店主は大のラーメン好きで述べ５千食ほど食べてきた店主は、東京と大阪の有名店で計８年修業を重ね、腕を磨いてきました。『店主が作るこだわりのラーメンをぜひご堪能下さい！！\r\n', 'ブーランジェリー ブルディガラ 大阪店 ', 'らーめん 伊藝 （ラーメン イゲイ)', 'https://drive.google.com/uc?id=1tTx4PTJ8nydjavhim8FjlenHGKipgDS0', 'https://drive.google.com/uc?id=1sxzUruq6OEQFaKbaajL2EVDN7Z_CzC6V', 'スカイビル近く、3駅利用可の好立地で深夜3時まで愉しめる寛ぎの隠れ家ビストロ。「鹿児島黒牛のカルパッチョ」をはじめ厳選した素材そのものの味を引き立てて作られる料理を、国内外から取り揃えたワインやビールなど90種以上のドリンクとともにご堪能ください◎歓送迎会はもちろん、女子会や誕生日会など特別な夜には人気のソファー席がおすすめです♪大切な方との素敵な夜にぜひご利用ください。\r\n', '「医食同源」の哲学と、8日間かけて料理する高級スープ“佛跳墻”\r\n「あまりの美味しそうな香りに、修行僧ですら壁を飛び越えてくる」 ―\r\n歴代の中国皇帝に愛され、通称「ぶっとびスープ」とも呼ばれる逸話を持つ伝統料理が、料理長・王憲生のスペシャリテ。 王の料理哲学である「医食同源」に基づいた、オリジナルの佛跳墻を「故宮」でお召しあがりいただけます。', 'ビストロ テソロン ウナ ベッコ', '故宮 （コキュウ） ', '', 'https://www.marriott.co.jp/hotels/travel/osawi-the-westin-osaka/'),
(3, 'ロイヤルホテル土佐', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, 'グランドプリンスホテル広島', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, 'マリンタラソ出雲', 'https://drive.google.com/uc?id==1fHCPbO0naceZerbzIwnIFsEsnJ35OCck', '', 'https://drive.google.com/uc?id=1qI8dc5UjYEpMeFNcUOpvnwy9sEzBGRyZ', 'https://drive.google.com/uc?id=1t7Mcq-T3KPybW1V-4aHlcgHiEHxp-E6P', 'https://drive.google.com/uc?id=1s7JxOf8Y5hKw4zKYdRlUfB-N_VYLLCRy', '1階フィットネスルームにて、ランニングマシン・ダンベル・エアロバイクなどが利用可能です。', '海水を使用していて、人が一番リラックスできる不感温度(33～36℃)に設定されています。14種類のジェットも設備されているので、身体全身をマッサージしてみてください。', '窓越しに広がる日本海の風景に心も身体もリラックスできます。そして、野生のイルカが登場しすることがあります。', 'https://drive.google.com/uc?id=14h2AqiabijaQASGBMQoyGcJ701ggwL16', 'https://drive.google.com/uc?id=1zP35c20HWG8F-JFEoq61sI2qFh2eKxK1', '定番メニューはこく深いスープに、超極太もちもち麺の「キララブラック」です。あっさりしたラーメンからこってりしたラーメンまでそろっています。サイドメニューには餃子や海鮮炒飯があります。', 'とてもヘルシーで少しスパイシーな豚丼です。珈琲店なのでデザインやドリンクメニューも豊富で、店内からの海の眺めがとても綺麗です。\r\n', 'らーめん工房 海(かい)', '珈琲店 蒼(あお)', 'https://drive.google.com/uc?id=1Va_cf7GdIRrRF19oeZLefxdoA-bXBedV', 'https://drive.google.com/uc?id=1fCePPosEbnrj5CvN2SVpojuIh3dmiiuq', '身のしまったお刺身などがボリューム満点です。広々とした店内でゆっくり海を見ながら食べることができるので家族連れの方にもオススメです。', '雰囲気は、昭和の喫茶店です。洋食系のメニューも豊富で、海鮮お好み焼きは、巨大で具沢山でとにかく美味しいです。', 'ごゑん GOEN', 'シャロン', '', ''),
(6, 'ホテルリマーニ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD PRIMARY KEY (`hotel_id`,`name`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hotel_info`
--
ALTER TABLE `hotel_info`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ホテル固有のID', AUTO_INCREMENT=9;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`,`name`) REFERENCES `hotel` (`hotel_id`, `name`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
