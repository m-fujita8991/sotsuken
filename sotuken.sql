-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-12-13 03:12:33
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

DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel` (
  `hotel_id` int(255) NOT NULL COMMENT 'ホテル固有のID',
  `name` varchar(255) NOT NULL COMMENT 'ホテルの名前',
  `building` varchar(255) NOT NULL COMMENT '所在地',
  `price` varchar(255) NOT NULL COMMENT '金額',
  `time` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL COMMENT '画像のパス',
  `locate_id` varchar(255) NOT NULL COMMENT '地域コード',
  `prefecture_id` varchar(255) NOT NULL COMMENT '都道府県コード'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- テーブルのデータのダンプ `hotel`
--

INSERT INTO `hotel` (`hotel_id`, `name`, `building`, `price`, `time`, `image`, `locate_id`, `prefecture_id`) VALUES
(1, '南紀白浜マリオットホテル', '和歌山県西牟婁郡白浜町2428', '34,000~38,000', '白浜駅からタクシーで約15分', 'https://drive.google.com/uc?id=1OW_Ze3XV37L9lubqT_ZwgI596HdciD1q', '3', '30'),
(2, 'ウェスティンホテル大阪', '大阪府大阪市北区大淀中1丁目1-20 新梅田シティ内', '35,000~45,000', '大阪駅から徒歩約7分', 'https://drive.google.com/uc?id=1-H80hR6kj444AKfYokYvHhOsFrs0Bu5V', '3', '27'),
(3, 'ロイヤルホテル土佐', '高知県安芸郡芸西村西分甲2995', '33,000~36,000', '西分駅から徒歩約20分', 'https://drive.google.com/uc?id=1_MrinUZ0xqS_tqa9OOVscZfp3UShc3uU', '4', '39'),
(4, 'グランドプリンスホテル広島', '広島県広島市南区元宇品町23-1', '27,000~30,000', '広島駅からタクシーで約20分', 'https://drive.google.com/uc?id=1Kx8YZNqtW2B0vSih7FSPyHaU4lvkatM7', '4', '34'),
(5, 'マリンタラソ出雲', '島根県出雲市多伎町多岐859-1', '11,000~12,000', '小田駅から徒歩約3分', 'https://drive.google.com/uc?id=1kFfrypsNZm9FA3-NOahKSpfK1BiRTnmb', '4', '32'),
(6, 'ホテルリマーニ', '岡山県瀬戸内市牛窓町牛窓3900', '7,500~42,000', '牛窓行オリーブ園入口下車から徒歩約2分', 'https://drive.google.com/uc?id=1Qu_es3uFXB5RBGEPYkgpcxJRckLNjkdr', '4', '33'),
(7, 'ヒルトン福岡シーホーク', '福岡県福岡市中央区地行浜2丁目2-3', '10,000~30,000', '西新・唐人町駅から徒歩約19分', 'https://drive.google.com/uc?id=1B7XLVNjvQQxCGhEQ3q06QQ8XK45gmJlA', '5', '40'),
(8, '十和田プリンスホテル', '秋田県鹿角郡小坂町 十和田湖西湖畔', '20,000~52,000', '青森空港から車で約1時間20分', 'https://drive.google.com/uc?id=140NHC-Uy4pF0qDsUDrjD5uCfLkRmPCST', '0', '5'),
(9, 'シェラトン・グランデ・トーキョーベイ・ホテル', '千葉県浦安市舞浜1-9', '8,500~47,000', 'ベイサイド・ステーションから徒歩約1分', 'https://drive.google.com/uc?id=1uR1FU2NouGsrkovLj_qy0XtYaxTs1PXL', '1', '12'),
(10, '伊豆今井浜東急ホテル', ' 静岡県賀茂郡河津町見高35-1', '6,900~33,000', '今井浜海岸駅から徒歩約3分', 'https://drive.google.com/uc?id=1RF2Jy6mk6HymDeUKU1VfnS02xp0IzwmX', '2', '22');

-- --------------------------------------------------------

--
-- テーブルの構造 `hotel_info`
--

DROP TABLE IF EXISTS `hotel_info`;
CREATE TABLE `hotel_info` (
  `hotel_id` int(255) NOT NULL COMMENT 'ホテル固有のID',
  `name` varchar(255) NOT NULL COMMENT 'ホテルの名前',
  `top_image` varchar(255) NOT NULL COMMENT 'ホテルの写真',
  `top_text` varchar(255) NOT NULL COMMENT 'ホテルの紹介文章',
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

INSERT INTO `hotel_info` (`hotel_id`, `name`, `top_image`, `top_text`, `hotel_institution_image1`, `hotel_institution_image2`, `hotel_institution_image3`, `hotel_institution_text1`, `hotel_institution_text2`, `hotel_institution_text3`, `hotel_lunch_image1`, `hotel_lunch_image2`, `hotel_lunch_text1`, `hotel_lunch_text2`, `hotel_lunch_name1`, `hotel_lunch_name2`, `hotel_dinner_image1`, `hotel_dinner_image2`, `hotel_dinner_text1`, `hotel_dinner_text2`, `hotel_dinner_name1`, `hotel_dinner_name2`, `hotel_map_url`, `hotel_reserve_url`) VALUES
(1, '南紀白浜マリオットホテル', 'https://drive.google.com/uc?id=1JyGIfl3Iy825tfA2XbtWZdzDR27W1a-q', '南紀白浜マリオットホテルへようこそ<br>\r\n太平洋と白良浜を見渡す南紀白浜マリオットホテル。<br>\r\n白浜の美しい情景を表現した182室の客室や名湯・白浜温泉を引く露天風呂、新鮮な海の幸をご提供するオーシャンダイニングで、特別な休日をお過ごしください。', 'https://drive.google.com/uc?id=1qXOAqrhVDCvJmK3Ukqfi_rG-rg4ZWcZ1', 'https://drive.google.com/uc?id=1cw0GPZoC11nI6ZcXvrmHoCXzC2LiBMNU', 'https://drive.google.com/uc?id=139NYTTwjmSNmWYVsQAlEuXqB185slLdR', '日本三古湯の一つに数えられ、歴史書「日本書紀」にも登場する和歌山県南紀白浜温泉。ホテル最上階の温泉大浴場の露天風呂からは、太平洋の絶景を眺めながら入浴できます。ご家族連れのお客さまにおすすめの貸切温泉もご用意しました。由緒ある古湯の湯浴みを思う存分ご堪能ください。', 'ご宿泊者様ならワーキング目的でもご利用いただける屋外プールです。\r\nリゾートならではの開放感あふれる空間で、仕事と余暇がシームレスにつながる快適なワーケーションステイをご提供いたします。', '温もりを感じさせる木目調のしつらい、白浜の“水天一碧”を表現した上質な内装デザイン、そして全室に確保した40㎡以上のゆとりが、旅のひとときをやさしく包み込みます。オーシャンビューの客室、温泉付きの客室、和の趣を活かした客室など、豊富な客室タイプをラインナップしています。', 'https://drive.google.com/uc?id=1P-otSG1eKdY8XQ40dDpIevdWEGn1pSA6', 'https://drive.google.com/uc?id=1UZRI0aRC4yCkWed75yaOmKT7vJshkaRg', '観光地として名高い和歌山県の白浜町にある人気ラーメン店。豚骨醤油味のご当地名物「和歌山ラーメン」と、鯛のダシを使用したあっさり塩味のオリジナルメニュー「元祖白浜ラーメン」はクセになる美味しさで、県外からのリピーターも。また、自慢のサイドメニューは、県産の食材をふんだんに使用するなど、とことんこだわっている。店内は広々としており、団体客や家族連れも気軽に利用できる。海水浴後のランチにもおすすめ。', '潮風を感じながらスイーツが食べられる。パンケーキが美味しい大満足カフェです。\r\nランチプレートを数種類・ボリュームたっぷりのパンケーキを揃えており、珈琲と合わせて食べていただければ、充実したランチタイムを過ごせること間違いなし！！', '和歌山ラーメン 和ん ', 'Cafe Plage', 'https://drive.google.com/uc?id=1WLBEsin0KIH8xRG9myCKIAk4kELxJH9L', 'https://drive.google.com/uc?id=1VEPP3WQOzFCfWj6BU9DtjJG-ohmoOA3c', '日本三大居酒屋のひとつ！カウンター席のある小さな店で、新鮮な南紀白浜の魚介の網焼きなど海鮮料理を日本酒やビールと一緒に楽しめる大衆居酒屋。', '天然本くえにこだわり養殖くえは絶対に使わない。\r\n１年を通して天然本くえを味わえるくえ料理専門店。', '大衆酒場 長久酒場', '活魚・鍋料理 風車', 'https://www.google.com/maps/d/u/0/embed?mid=1IDee6wD6i8w23wA_4Igl8AqHTrey43XS', 'https://www.shirahama-marriott.com/'),
(2, 'ウェスティンホテル大阪', 'https://drive.google.com/uc?id=1fOIP8ZXkL69c0sBnk4U-BNu1tUlexy8g', '客室は全室が 41平方メートル 以上の広さを持ち、窓からは大阪の夜景を一望いただけます。 <br>\r\n「雲の上の寝心地」と称されるヘブンリーベッドを設置し、快適なホテルステイをご提供。<br>\r\n大阪の中心でありながら、周囲を緑豊かな環境に恵まれています。', 'https://drive.google.com/uc?id=1ZXyzbGmGYHTvmH6zJCzUCCvu-lIv_cNg', 'https://drive.google.com/uc?id=1Y0djCBDs_WG2q6NKYjoWEhbx0fmt0h1L', 'https://drive.google.com/uc?id=1MJnXXOqQU-d_QAW0b9FvSp8hn9gdo_J6', 'すべての客室が41㎡以上ある、ウェスティンホテル大阪は、ターミナル駅であるJR大阪駅へ徒歩約7分、神戸や京都などへもアクセス便利な好ロケーション。 ベッドはウェスティンホテル＆リゾートオリジナル、「雲の上の寝心地」と称される”ヘブンリーベッド”を設置し、快適なホテルステイをご提供いたします。', '常に適温を保つ幅7M × 長さ20Mのプール。陽の光が燦々と差し込むため、室内は明るく解放的。快適性にこだわった屋内型プールです。また、ジャグジーとも呼ばれる円形状のプールもあり、水面下より気泡を含んだ水流が勢いよく体全体を刺激します。疲れた筋肉をほぐし、心身ともに快適にします。', '癒しと健康、そして美容にも効果があると好評の鍼灸。ウェスティンホテル大阪 鍼灸サロンでは、お体に優しい低刺激で安全な施術を行っておりますので、 鍼灸をお受けになるのが初めてのお客様にも安心してご利用いただいております。', 'https://drive.google.com/uc?id=1qkAMVPZ8IvsnjV7TqXRaZuR1nqon5Zpn', 'https://drive.google.com/uc?id=1UzdKuP1TZth8L08A5aaRditDKw_yEck0', 'ヨーロッパの本格的食事パンや焼き菓子が並ぶ店\r\n多種多様な粉を使用し、欧州の本格的食事パンや色とりどりのデニッシュなど、発酵方法や製造方法にこだわったパンを提供しております。\r\nランチはクロックムッシュやキッシュ等、日替わりメニューをご用意しております。\r\n', 'スープは２４時間かけてじっくりと作り込み、化学調味料の使わない安心・安全の濃厚とんこつスープ。麺は自家製スープのコンディションに合わせ、毎日、小麦粉の配合、加水率を微調整して製麺しております。メニューに合わせ三種の麺があります。また、店主は大のラーメン好きで述べ５千食ほど食べてきた店主は、東京と大阪の有名店で計８年修業を重ね、腕を磨いてきました。『店主が作るこだわりのラーメンをぜひご堪能下さい！！\r\n', 'ブーランジェリー ブルディガラ 大阪店 ', 'らーめん 伊藝 （ラーメン イゲイ)', 'https://drive.google.com/uc?id=1tTx4PTJ8nydjavhim8FjlenHGKipgDS0', 'https://drive.google.com/uc?id=1sxzUruq6OEQFaKbaajL2EVDN7Z_CzC6V', 'スカイビル近く、3駅利用可の好立地で深夜3時まで愉しめる寛ぎの隠れ家ビストロ。「鹿児島黒牛のカルパッチョ」をはじめ厳選した素材そのものの味を引き立てて作られる料理を、国内外から取り揃えたワインやビールなど90種以上のドリンクとともにご堪能ください◎歓送迎会はもちろん、女子会や誕生日会など特別な夜には人気のソファー席がおすすめです♪大切な方との素敵な夜にぜひご利用ください。\r\n', '「医食同源」の哲学と、8日間かけて料理する高級スープ“佛跳墻”\r\n「あまりの美味しそうな香りに、修行僧ですら壁を飛び越えてくる」 ―\r\n歴代の中国皇帝に愛され、通称「ぶっとびスープ」とも呼ばれる逸話を持つ伝統料理が、料理長・王憲生のスペシャリテ。 王の料理哲学である「医食同源」に基づいた、オリジナルの佛跳墻を「故宮」でお召しあがりいただけます。', 'ビストロ テソロン ウナ ベッコ', '故宮 （コキュウ） ', 'https://www.google.com/maps/d/u/0/embed?mid=1WzXMO4343LlCmXPRzRa9rNftgOKBEgz-', 'https://www.marriott.co.jp/hotels/travel/osawi-the-westin-osaka/'),
(3, 'ロイヤルホテル土佐', 'https://drive.google.com/uc?id=13bqHvr2OK0XHJckRi2fNkyB4rIvUDkKj', 'ロイヤルホテル土佐へようこそ<br>\r\n南国の太陽と雄大な太平洋のスケールを感じ、<br>\r\n「よさこい温泉」露天風呂で体の汗を流してください。', 'https://drive.google.com/uc?id=13rRXJDy6N6vjUlntA7EN0mOV0R4beRIe', 'https://drive.google.com/uc?id=1XP4HzrPI34Hzv8cb0quLBrZzAYVKi4RD', 'https://drive.google.com/uc?id=1iLQN1ApyS-WmDn9HQpXGkWzLZhIDw5PV', '『桂浜の湯』には、桂浜の弓なりに曲がった海岸線と「坂本龍馬像」。\r\n『室戸岬の湯』には、弘法大師が悟りを開いたとされる御厨人窟（みくろど）をイメージした、\r\n小さな洞窟と「中岡慎太郎像」があり温泉だけでなく目でも楽しめる露天風呂です。', 'ホテルガーデンの花々を眺めながらゆったりティータイム、\r\nMarcheでは広々とした店内で高知県の名産品を手に取ってお選びください。', '今ではもうあまり見ない機種も揃っていてゲーム好きの方は立ち寄るべきです。懐かしのゲームに再会できるかもしれません。他にも子供も好きなゲームなども揃っています。', 'https://drive.google.com/uc?id=1xX7k5j0PxwhZNrMf7Y0bENlxBCbc3kL2', 'https://drive.google.com/uc?id=1WOZ5WW-3tRkfEWcX9Rf2NGC9o1SaocUt', 'さっぱりとしたうどんが特徴的です。しかし、色々な種類のうどんが用意されているのでメニューを見れば食べたいうどんが見つかります。', '小麦の香りともっちり食感、カリッと歯応えのあるフランスパンです。バターサンドクッキーのようにクリーミーで濃厚な味わい。コーヒーのお供に最高です。', '柿の木', '暁パン', 'https://drive.google.com/uc?id=1SekyEzGHMXktI-f8b2LKDXomqLlR1lfF', 'https://drive.google.com/uc?id=1val_dGvWUo4XNStKyYFD8eYG5utsj8c3', '新鮮でボリューム満点な海鮮丼。うどんの汁は甘めで、優しい味になっています。昼夜問わず売り切れた際は早めに閉店してしまうので注意です。', '透き通ったスープが特徴的です。麺は細めのストレートでスープもあっさりとしたラーメンでとても食べやすくなっています。', '活魚レストラン 藤', 'らーめん家 正蔵', 'https://www.google.com/maps/d/u/0/embed?mid=1HM2w3OIBm05iC5TiIjNU9SQLLc5KBn9-', 'https://www.marine-hotel.co.jp/stay/'),
(4, 'グランドプリンスホテル広島', 'https://drive.google.com/uc?id=1KOrIPtwgJMhwkIWeIv44Ihhr7DnaNH1V', '広島湾と瀬戸内海国立公園を見下ろす、高層のモダンな高級ホテル。<br>\r\n居心地の良い客室からは、街、公園、海のいずれかの景色が楽しめます。<br>\r\n各国料理や海鮮料理を提供するレストラン 4 軒のほか、カジュアルなレストラン、カフェ、見晴らしの良いバーを併設。\r\n笑顔溢れる上質なホテルステイをお楽しみください。\r\n', 'https://drive.google.com/uc?id=1AkizDLWEdyiiM4Mcm3fiDC8iZS2J3a1-', 'https://drive.google.com/uc?id=1-vgNOGwqV11-6PZL7Sq-fRBkWDSw33IX', 'https://drive.google.com/uc?id=1oHMh1KIH8aA3Pn4MaAG0PNf7zEK3pkmy', '広島湾と瀬戸内海国立公園を見下ろす、高層のモダンな高級ホテル。路面電車の元宇品口駅から徒歩 15 分。居心地の良い客室からは、街、公園、海のいずれかの景色が楽しめる。全室に無料 Wi-Fi、薄型テレビ、ミニ冷蔵庫、お茶セットを完備。スイートにはシッティング エリアあります。', 'アーバンリゾートならではの滞在型ウェディング。純白のドレスに包まれて、誓いのときを待つ。夢見ていた以上の幸せがこみあげる、忘れられない一日を。澄み渡る空の色、胸に迫る波の音、芳しい花々、頬に触れる風、ここにしかない最高のロケーションが、おふたりを祝福します。', '3階には宿泊者専用の展望露天風呂 広島温泉「瀬戸の湯」があります。展望露天風呂からは、瀬戸内海を一望することができます。他にはミストサウナ、ブロアバス、内湯もあり、広くて綺麗で快適な温泉です。ロッカー・パウダールームも常に清潔に保たれており気持ちよく利用することができます。', 'https://drive.google.com/uc?id=1_fGN8iHQaOvmFcvSYgS5xoeuPQbqcYCf', 'https://drive.google.com/uc?id=1PQjoUPclIbBIExa6nitVcx0rhidpRmG5', '全ての席から海が見える、女性に人気の喫茶店。天気のいい日には、外のテラス席で食事をすることができ、瀬戸内海を見渡せる最高のロケーションで贅沢なランチタイムが楽しめます。コーヒーのロースト加減を自分で指定することができ、自分に合ったコーヒーを飲めるのも嬉しい点です。', 'ホテルの中で食べられるお好み焼き店。そばにしっかり火を入れてあり食感がよく、蒸し焼きにされたキャベツの甘さが味わえます。また甘めのソースがとてもよくお好み焼きに合っています。お好み焼きだけでなく焼きそば、たこ焼き等も楽しめるお店。', '24/7 coffee&roaster ujina', 'お好み焼き かっくん', 'https://drive.google.com/uc?id=1uA0bXiJoegm_VD0c_5PcG86DOwbWANPK', 'https://drive.google.com/uc?id=1ljXjLybsxNeuppxi6OGYe-SqvogqHk6P', 'グランドプリンスホテル広島から歩いて10分程。日本屈指の衛星管理システムを導入している福山市の契約牧場があり、安心して新鮮なお肉が味わえる。海鮮メニューやサイドメニューも充実しており、１人でも大人数でも楽しめるお店。', '殻付き牡蠣が1キロ(10〜12個)1,000円、海鮮焼きセット1,350円、一夜干しセット1,000円と非常にリーズナブルにBBQを楽しむことができます。プレハブの建物の中は、炭は側溝を使い焼き網に乗せ、椅子はビールケースに板をのせる、まさにシンプルな牡蠣小屋！雰囲気抜群です！', '炙焼 楽群 LaGoon', 'ミルキー鉄男のかき小屋 宇品店', 'https://www.google.com/maps/d/u/0/embed?mid=1VOJ8KD8S57yJSiroKuVALkVQe7RhkO7J', 'https://www.princehotels.co.jp/hiroshima/plan/all/'),
(5, 'マリンタラソ出雲', 'https://drive.google.com/uc?id=1kFfrypsNZm9FA3-NOahKSpfK1BiRTnmb', 'マリンタラソ出雲へようこそ<br>\r\n四季を通じて、窓越しに広がる日本海の風景に心も身体もリラックスできます。', 'https://drive.google.com/uc?id=1qI8dc5UjYEpMeFNcUOpvnwy9sEzBGRyZ', 'https://drive.google.com/uc?id=1t7Mcq-T3KPybW1V-4aHlcgHiEHxp-E6P', 'https://drive.google.com/uc?id=1s7JxOf8Y5hKw4zKYdRlUfB-N_VYLLCRy', '1階フィットネスルームにて、ランニングマシン・ダンベル・エアロバイクなどが利用可能です。', '海水を使用していて、人が一番リラックスできる不感温度(33～36℃)に設定されています。14種類のジェットも設備されているので、身体全身をマッサージしてみてください。', '窓越しに広がる日本海の風景に心も身体もリラックスできます。そして、野生のイルカが登場しすることがあります。', 'https://drive.google.com/uc?id=14h2AqiabijaQASGBMQoyGcJ701ggwL16', 'https://drive.google.com/uc?id=1zP35c20HWG8F-JFEoq61sI2qFh2eKxK1', '定番メニューはこく深いスープに、超極太もちもち麺の「キララブラック」です。あっさりしたラーメンからこってりしたラーメンまでそろっています。サイドメニューには餃子や海鮮炒飯があります。', 'とてもヘルシーで少しスパイシーな豚丼です。珈琲店なのでデザインやドリンクメニューも豊富で、店内からの海の眺めがとても綺麗です。\r\n', 'らーめん工房 海(かい)', '珈琲店 蒼(あお)', 'https://drive.google.com/uc?id=1Va_cf7GdIRrRF19oeZLefxdoA-bXBedV', 'https://drive.google.com/uc?id=1fCePPosEbnrj5CvN2SVpojuIh3dmiiuq', '身のしまったお刺身などがボリューム満点です。広々とした店内でゆっくり海を見ながら食べることができるので家族連れの方にもオススメです。', '雰囲気は、昭和の喫茶店です。洋食系のメニューも豊富で、海鮮お好み焼きは、巨大で具沢山でとにかく美味しいです。', 'ごゑん GOEN', 'シャロン', 'https://www.google.com/maps/d/u/0/embed?mid=1PLY6EhMsn8-03PYJsf4CbuovB7ZUHKIQ', 'https://www5.489pro.com/asp/489/menu.asp?id=32000009&ty=ser&list=YES&lan=JPN'),
(6, 'ホテルリマーニ', 'https://drive.google.com/uc?id=1IO2WEvkx4ZWEQKeVdnzNUaSit27zPYOM', '瀬戸内海に面した岡山県東南部、牛窓に位置する<br>\r\nギリシャ語で「港」を意味する「Limani（リマーニ）」という名のホテル。<br>\r\n穏やかな気候風土、オリーブの樹が茂る丘陵地、<br>\r\n目の前には大小の島々が浮かぶ海が広がり、ここはさながら地中海のよう。<br>\r\nそんな風景を眺めていれば、自然に心と身体はほぐれていく。<br>\r\nここでの時間は、いつも海とともに・・・。\r\n', 'https://drive.google.com/uc?id=1USU-LNRcdBYdLyCyuFkXDO9DO5Fx7IoL', 'https://drive.google.com/uc?id=14B73z1hZLhQUw6O1t2BsavlbPlmLC31G', 'https://drive.google.com/uc?id=1qI9JFa4P9Kt1ELcdAC23Sf0sWDrjwnaA', '室内の壁紙・カーペット・カーテン等の内装とバスルームを刷新し、「安らげるイメージ」をデザインテーマとしてシックで落ち着いた内装に仕上げたお部屋（ナチュラル）。\r\nベッドは最上の眠りを追求するシモンズ社製を採用。\r\n眺望はもちろん瀬戸内海の多島美を見渡す全室オーシャンビュー。\r\n', 'ホテルのプールでのんびり過ごしませんか？\r\n泳ぐだけではなく、プールサイドで心地よい風に吹かれながら本を読んだり、話をしたり、のんびりとした時間をお楽しみください。\r\n', '開放感にあふれた半円形に切り取られた窓からは、穏やかな瀬戸内海が一望できます。\r\n瀬戸内海に沈む夕日を眺めながら、ごゆっくりご入浴ください。\r\n宿泊されているお客様は無料でご利用いただけます。\r\n', 'https://drive.google.com/uc?id=1U60U_FKfGOO3UIMsXW1UzZ57F_XU26bP', 'https://drive.google.com/uc?id=1VlJv9oZ9HxCXtSNoFiXEKV_b3Lp7i2n9', '新鮮な魚と野菜の和風ランチ、築100年以上の古民家、いやしの空間でギャラリーや雑貨を見ながらゆったりと食事を楽しんでいただけます。日替わりで潮菜定食には、日本酒が欲しくなる濃い目の味から椎茸フライや野菜いっぱいで、女性受けする内容となっております。', '丘の上にある名店で”ざるそば”ランチ\r\n牛窓の閑静な丘の上にある、蕎麦の名店です。メニューは”ざるそば”のみというこだわりの蕎麦屋さんは、県外のファンも多くいるほどです。\r\n', 'うしまど茶屋・潮菜', 'ちょい蕎麦庵 ', 'https://drive.google.com/uc?id=1LV_OyinlVUs4dEwmSOt1ndMpLaQmNGYB', 'https://drive.google.com/uc?id=15PTFhWcKrKKnhPmTgYq2jkIp8QvLxSfn', '瀬戸内海の絶景を望めるイタリアンレストラン\r\n天井までのガラス窓の向こうには、濃い緑と瀬戸内海の青が広がる。「日本のエーゲ海」と呼ばれる瀬戸内市牛窓（うしまど）の海を一望できる「瀬戸内市国際交流ヴィラ」に併設されており、お料理に関しては瀬戸内の魚介類をふんだんに使っており、味付けや仕上がりは全体的に家庭的な印象となっています。', '～日本のエーゲ海を眺めながら美味を満喫～\r\n目の前に広がる瀬戸内海で獲れた海の幸や、地元の食材をふんだんに生かしたフレンチをご用意しました。 レストランから広がるパノラマとともにご堪能下さい。 日常を忘れ、ゆっくりとした時間をホテルイルマーレ牛窓でお過ごし下さいませ。', 'acca ', 'レストラン ラ ヴォルテ', 'https://www.google.com/maps/d/u/0/embed?mid=12CMuMhjCGHEXnz9RyErOXjFlFBzs-X31', 'https://www.limani.jp/'),
(7, 'ヒルトン福岡シーホーク', 'https://drive.google.com/uc?id=1YL819WF6NROc-HT9ERuvCEgUFKgURfEA', '1053室がいずれも博多湾を臨むオーシャンビュー。<br>\r\n「都市景観100選」に選ばれたシーサイドももち地区に位置し、海まで徒歩3分。<br>\r\n都会にいながらリゾートを味わえます。', 'https://drive.google.com/uc?id=1TSdIqoFl2no3daIeUIJ8pIJT2t_SX13P', 'https://drive.google.com/uc?id=1nuFeL38tt0Uy-zjbRgXZxvyjLZEUZgww', 'https://drive.google.com/uc?id=1chG9Lm3YIFIcxNio4Au0ZiLjcb1dN72F', 'レセプションロビーを入ると、そこはもうアフリカへの入り口です。半円を描いたフロアは、洗練されたアフリカンスタイルのインテリアで、訪れる人を迎えます。屋内プールゾーンを中心としたリラックスとリフレッシュの空間には25mプール（水深1.2m・温水）、ジャグジー、冷水プール、夏季限定・オープンエアの屋外プールもございます。心ゆくまで癒しの時間をお過ごしください。\r\n', '情緒あふれる坪庭を眺めながら、ゆったりとお湯に体を浸す至福の時間。\r\n館内7階にある、ご宿泊のお客様専用の岩風呂（大浴場）です。\r\n男性用、女性用ともにサウナもあり、じっくりと１日の疲れを癒すことができます。', '目の前に320度広がるオーシャンビューと美しい福岡の街並みを一望できる、開放感あふれるチャペルは、おふたりの出航の場にぴったり。\r\n自然光が降り注ぐ純白の空間は、足元にゆらめくスモークと舞い降りるフェザーシャワーで、まるで空の上にいるかのよう。\r\nフルートやバイオリンの生演奏とともに天空のチャペルでロマンティックなウエディングを。', 'https://drive.google.com/uc?id=1wosRtsiSl3R6Z5Exm_apr8KoGergqQlg', 'https://drive.google.com/uc?id=1PP6_qpuYrlk35nq38J0vNCuOgehRKl5I', '小籠包は肉小籠包の他にフカヒレ入りや蟹味噌、エビなど楽しめます。れんげに乗せて中のスープから頂きます。お肉がとても肉厚で皮はもっちり！他にも炒飯、肉団子、春巻、揚げ餃子、焼きそば、お粥etc．特に麻婆豆腐は香り良く美味しい！', 'チキンカツ（カツマヨソース）＆ミートコロッケのメインにスープとライスがセルフでお代わり無料！カツやコロッケが熱々で美味しいのは間違いないですが、一度に二種類楽しめるところも魅力です。', '九龍點心', 'ハローRKB', 'https://drive.google.com/uc?id=1fxO0mne8BAaUThZtb3shzIrtaNK-FO3M', 'https://drive.google.com/uc?id=1ZuKQPDzVYe1a-KhkR8EYLtJqP8gg8esM', '味が濃いめになっていて、ご飯にもお酒にも相性バッチリ！！カリカリの仕上がりのチキン南蛮や、サバの味噌煮は臭みも無く丁度イイ味付け。', 'ローストビーフのように赤身の残る肉に甘辛ダレとわさび。肉にわさびを少しのせ、タレの染み込んだごはんと一緒に食べると再呼応に美味しいです！', '家庭料理の店 月とうさぎ', '煉瓦倶楽部', 'https://www.google.com/maps/d/u/0/embed?mid=1yo_7KAxgO72p-4xp5PJ0jLZvFHCRZ0XA', 'https://fukuokaseahawk.hiltonjapan.co.jp/'),
(8, '十和田プリンスホテル', 'https://drive.google.com/uc?id=1srSGEjPSywt7dzDICgkm8LHprnZuWY68', '湖畔のオーベルジュ<br>\r\nおとなのとわだ時間<br>\r\n十和田湖畔にひっそり佇むおとなの隠れ家で十和田時間を・・・・', 'https://drive.google.com/uc?id=1UWqe7inMl8Ar7XOtnT7jZ8vYxgTTtqF5', 'https://drive.google.com/uc?id=1icFUhgSyyFqHroFGQOhcFw3RDsB8hYXt', 'https://drive.google.com/uc?id=1HkOdojDsoTOpWgZgawucMIT-pCvQa3rM', '十和田湖の幻想風景と自然一体となったレイクガーデンウェディング\r\n十和田湖畔の爽やかな風、まばゆい光、青々とした芝生。\r\n他では味わえない自然と一体となったウェディングをご提供。', '十和田湖を眺めながらティータイムでくつろぎのひと時をお楽しみいただけます。\r\nトアルコトラジャ ピーベリーコーヒー・自家製アップルパイ・十和田湖ひめますのフライとタルタルのサンドウィッチなどの軽食や、ランチタイム（11:30A.M.～1:30P.M.）には、カレー・パスタ・ハヤシライスも用意しております。', '十和田湖西湖畔で唯一の源泉100%の露店温泉\r\n開放感たっぷりの露天風呂の目の前には芝生の庭が広がり、樹木の間から十和田湖も見え隠れします。\r\n空の青さと木々の緑が美しいコントラストを見せ、ゆったりとリラックスした時間が過ごせます。\r\n日帰り入浴もできますのでぜひご利用ください。\r\n', 'https://drive.google.com/uc?id=1pwddK9eXoTx-t_ijIP43mg0Y-EIOkRbD', 'https://drive.google.com/uc?id=1jIE8pTQI8ksKmc74qqWioTzgDI5AjuOx', 'ホテル直営のカフェとあって料理長こだわりのメニューがある。ずばり『アップルパイ』。シナモン等を使わず、蜜いっぱいの林檎「ふじ」の旨さを生かした美味しさ。', '道の駅「こさか七滝」エリアの中心施設。日本の滝百選「七滝」を眺めながら食事が楽しめる田舎風の食事処。\r\n小坂産食材を使った「山ぶどうソフトクリーム」や「特製七滝肉ラーメン」、小坂名物「かつらーめん」など、季節に合わせたメニューがおすすめです。', '十和田湖マリン・ブルー', '滝の茶屋孫左衞門', 'https://drive.google.com/uc?id=1_3StyPiXOb75uGZ5izBwPuonzhv5vv8_', 'https://drive.google.com/uc?id=1tW3Af1GN35aoBzaC7N7orYgxzYLejIQ6', '八角形でとんがり屋根が目印の外観、大きな窓で明るい雰囲気が人気です。\r\n十和田湖のヒメマスや小坂の桃豚、鹿角牛や比内地鶏など地元の食材を使用した料理と日本固有の山葡萄系品種にこだわった小坂七滝ワイナリーで造る各種ワインとのハーモニーをお愉しみください。', 'ひめますやワカサギといった十和田湖でとれる魚、そしてタケノコやフキなどの地物の山菜を使ったお土産やお食事を扱っております。\r\n十和田神社、十和田湖、乙女の像まで徒歩で5分以内の場所にあり、奥入瀬渓流も車で15分ですので、十和田湖周辺を観光するのに大変便利な場所にあります。', 'レストラン青銅館', 'もりた', 'https://www.google.com/maps/d/u/1/embed?mid=1xXkZu1974GxPmSoJpOPluujjlkZv2-2o', 'https://rsv.jtb.co.jp/PlanDetail.aspx?st=2123081&sk=A3&pc=B2CEHTL&rc=889&rv=20&sn=1&rn=1&aff=rurubu_t_jtb'),
(9, 'シェラトン・グランデ・トーキョーベイ・ホテル', 'https://drive.google.com/uc?id=11yTvg5wDLVqekSM9Y8nOXb7CLxHbAOa5', '東京ディズニーリゾート®オフィシャルホテルであるシェラトン・グランデ・トーキョーベイ・ホテルは、<br>\r\n東京ディズニーランド®にも東京ディズニーシー®にもモノレールでアクセスできる至便なホテルです。', 'https://drive.google.com/uc?id=1KXX27MjuuxcYr_MJuJ_tkqYxkQ7eLXhP', 'https://drive.google.com/uc?id=1cPMBbsCzRVlulOYOo6s_tjbx6s035h8x', 'https://drive.google.com/uc?id=1-0AuLKc2VUWKRAYjDiOp1X58IMHn0Rw0', '全ての客室に、シェラトン独自のコンセプトに基づき開発されたベッド\"シェラトンシグネチャー スリープエクスペリエンス\"を導入しています。\r\nふかふかのマットレス、やわらかいベットカバー、ふっくらした枕が究極の眠りをお約束します。\r\n', '夏限定のガーデンにある滝の流れるプールはシェラトンの『夏』そのもの。デッキチェアでのんびりしたり、プールで泳いだり、お好きなスタイルでリゾートを満喫できます。', 'オアシス棟にあるシェラトンフィットネスは、ライフフィットネス社の最新トレーニングマシンを豊富にご用意しています。ストレングスマシンや有酸素系マシンの最新機器が揃っているため、さまざまなワークアウトをお楽しみいただけます。', 'https://drive.google.com/uc?id=1Qi1mVn_i2gty2ioGi3eDp0QVtOw_1HPY', 'https://drive.google.com/uc?id=1PLERrpIS90BRNl_SGTUtr1IRf-9Iy6vw', '本場アメリカのボリュームと味を再現したお料理と、フレンドリーなサービスでお客様をおもてなしいたします。\r\nカウンターでのバーテンダーによるエキサイティングなパフォーマンスは必見！\r\n', '開放感あふれる店内に一歩足を踏み入れると聞こえてくる「ようこそ、グランカフェへ！」の元気な挨拶。そして、店内のいたるところに飾られているカラフルなローリーポップやお料理がお出迎え。\r\n豊富なお料理の中でも目を引くのが、ホテル自慢のローストビーフ！ランチでもディナーでも人気のメニューです。\r\n', 'TGIフライデーズ イクスピアリ店', 'グランカフェ', 'https://drive.google.com/uc?id=1cXPZnR9Dp_Mv4uC9BwQLu8AveNvBcsEh', 'https://drive.google.com/uc?id=1xRUETXgNRF8OMFJRurp7UMxrU6ojSSWa', '東南アジアのリゾートをイメージした店内は、広々としたメインダイニング、足を伸ばせるお座敷、プライベート感のある半個室など、様々なお席をご用意。店内は完全禁煙となっておりますので、お子様とご一緒でも安心してお楽しみいただけます。', 'イタリア語で“美しい眺め”を意味する名前の通り、店内からは、メディテレーニアンハーバーの活気あふれる港町の景色を一望することができます。窓から差し込む明るい陽射しと落ち着いたインテリアに包まれながら、イタリアをテーマにした料理やお飲み物をお楽しみください。', 'モンスーンカフェ 舞浜イクスピアリ', 'ベッラヴィスタ ラウンジ', 'https://www.google.com/maps/d/u/1/embed?mid=1EHVpYjbf4xz7MvmXZ5mwGm-fGtykBntX', 'https://www.ikyu.com/00000152/10954031/'),
(10, '伊豆今井浜東急ホテル', 'https://drive.google.com/uc?id=1T8EcRQ_2fLgXAO7DW_KckZMfuTl3ZQGU', '', 'https://drive.google.com/uc?id=133Jrl3NnUeoL1vBY7tEMUpIfy3k3-g_D', 'https://drive.google.com/uc?id=1uW62E8CwwnzK2T2AMoFXbgIHqQSrY6gC', 'https://drive.google.com/uc?id=1yoEuP1h3DY6ht92WXx_ZUuwhhoNRUBh4', '伊豆の旅行に欠かすことの出来ない楽しみは、やっぱり温泉。\r\nホテル目の前に広がる今井浜海岸の波の音を聴きながら、\r\nまた頭上にひろがる満天の星空を見渡しながら\r\n楽しむ事の出来る湯浴みは格別です。\r\n', 'ホテル内にキッズスペースがございます。\r\n知育玩具や絵本をご自由にお使いいただけます。\r\n床はクッション素材、家具は固定式、壁にはお子様の様子が\r\n分かるよう覗き窓を付けるなどファミリー利用に嬉しい\r\n「おしゃれで安心なキッズスペース」です。\r\n', 'ブックカフェです。｢水平線を臨むデッキ｣をコンセプトに、芸術・建築・自然・\r\nインテリア・デザイン・ファッションなどの写真集、洋書を\r\n中心とした蔵書と、皆で憩える大テーブルをご用意しました。\r\n新たな今井浜ステイをお楽しみ下さい。\r\n', '', '', '', '', '', '', '', '', '', '', '', '', '', 'https://www.worke.jp/facility/hotel/3227/');

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
(1, '南紀白浜マリオットホテル', '◆南国リゾート感溢れるオーシャンビューホテル◆', '◆HOTEL INFO◆', 'ダイニングでは、地元・和歌山県の食材を使用したジューシーなグリル料理やオードブルなど、<br>\r\n紀州の豊潤な風土にふさわしいお料理で、リゾート感あふれるダイニング体験を提供いたします。<br>\r\n夏季には、敷地内のプライベートプールもオープン。<br>\r\n白良浜での海水浴とともに、涼しいひとときをお楽しみいただけます。', '・チェックインは15:00までにお越しください。<br>\r\n・チェックアウトは11:00までございます。ご延長には宿泊費とは別途料金がかかります。ご利用の際はフロントまでご連絡下さい。<br>\r\n・キャンセルにつきましては、宿泊施設までお問い合わせください。'),
(2, 'ウェスティンホテル大阪', '◆特典◆', '◆ルームサービスランチ◆', '・駐車料金1台無料（駐車場300台完備　24時間営業・予約不要）<br>\r\n・館内Wi-Fi無料<br>\r\n・ランチご提供時にプチデザート、ワンドリンクをサービス\r\n', '【ご利用可能時間：11:30～19:00】<br>\r\nご利用可能時間は予告なく変更になる可能性がございます。<br>\r\nランチメニューはページ下部「※13種類から選べるルームサービスセットメニュー」をご覧下さい。\r\n'),
(3, 'ロイヤルホテル土佐', '◆よさこい温泉◆', '◆HOTEL INFO◆\r\n', '【営業時間】14時00分-23時00分、6時00分-9時00分<br>\r\n高知県の観光名所「桂浜」「室戸岬」をイメージした露天風呂に<br>\r\n湯量たっぷりの内湯やサウナ、壺湯などを楽しむことが出来るホテル自慢の温泉大浴場です。', '・無料駐車場完備！ホテル屋外駐車場は平面の駐車場で乗用車約240台駐車可能です。<br>\r\n・全館Wi-Fi接続サービスによるインターネット無料接続が可能。<br>\r\n・電車（夜須駅）で来館なら無料シャトルバスをご利用くださいませ<br>\r\n　【夜須駅→ホテル：14時30分・16時30分　ホテル→夜須駅：9時10分・10時10分】<br>\r\n・Wi-Fi完備、充電コンセント完備、お仕事にご利用いただける1階フリースペースCafe ROYAL Blustar有り'),
(4, 'グランドプリンスホテル広島', '◆ワーケーション◆', '◆特典◆\r\n', '心も身体もリフレッシュ！広島・瀬戸内でリゾートワーケーション！<br>\r\n日常のオフィスから解放されるフレッシュな環境では、成果をより大きなものにします。<br>\r\n豊富な経験と実績でハードとソフトの両面からサポート。安心してお任せいただけます。\r\n', 'クラブフロア専用ラウンジ利用特典、広島温泉「瀬戸の湯」無料利用、フィットネスジム無料利用、<br>\r\nランチ・ディナー利用20％割引などホテルでの滞在を快適にするものから、ミーティングルーム 室料半額、<br>\r\nレストラン個室 個室料半額など団体や法人、ゲストを招いてのご会食やランチミーティングなどに最適な空間の利用料の割引特典がございます。'),
(5, 'マリンタラソ出雲', '◆ワーケーションに最適なプランの新登場◆', '◆元気海プールについて◆', 'チェックイン 15：00 ／ チェックアウト 11：00<br>\r\n※本プランは大人のご利用のみとなっております。<br>\r\n全室Wi-Fi完備。<br>\r\nオーシャンビューの開放的な空間はワーキングにもバケーションにもオススメ！<br>\r\nそして、ワーキングで疲れた心と身体を「元気海プール」でリフレッシュ。<br>\r\nさらに「多伎いちじく温泉」の無料入浴券もプレゼント！<br>\r\n※休館の場合もございます。', 'ご利用時間<br>\r\n10：00〜20：30（最終受付20：00）<br>\r\nご利用時間内なら何時でも何度でも！お好きな時にプール使い放題！<br>\r\n水着レンタル無料！手ぶらでOK！'),
(6, 'ホテルリマーニ', '◆特典◆', '◆ルーム◆', '3名様の場合はソファーベッド対応。<br>\r\nバス・トイレはセパレートタイプ。<br>\r\n※全室禁煙・Wi-Fi無料接続。\r\n', '2020年3月リニューアルしたお部屋。<br>\r\n広々40平米　全室オーシャンビュー・テラス付。<br>\r\nホテルのイメージカラー「青と白」をデザインテーマとして爽やかな内装に仕上げたお部屋。<br>\r\nベッドは最上の眠りを追求するシモンズ社製セミダブルベッド2台を設置。\r\n'),
(7, 'ヒルトン福岡シーホーク', '◆海の見えるお部屋で◆', '◆HOTEL INFO◆', '家族で日帰りプチ旅行。海の見えるお部屋でテレワーク<br>\r\n新しい生活様式の中、遠くに旅行は行けないけど、どこか気分転換にお出かけしたい、近場でリゾート気分を満喫したい、<br>\r\n海を見ながら1日のんびり過ごしたい、特別な日を素敵な場所で過ごしたい、快適な環境でテレワークをしたいあなた。<br>\r\nヒルトン福岡シーホークでいつもとは違う1日を過ごしませんか？', '・駐車場無料<br>\r\n・レストラン20%オフ<br>\r\n・お部屋にネスプレッソマシーン<br>\r\n・携帯充電器・加湿器の貸出あり<br>\r\n・お部屋のご利用時間は10時〜17時'),
(8, '十和田プリンスホテル', '◆特典◆', '◆INFO◆', 'アーリーチェックイン　2：00P．M．<br>\r\nレイトチェックアウト　12：00　Noon<br>\r\n夕食20％割引<br>\r\nロビーラウンジワークスペース利用可（先着順）<br>\r\n十和田湖で占うおより紙付　<br>\r\n小坂町康楽館の入館料半額券（希望者）<br>　\r\n十和田湖遊覧船100円割引券', 'ホテル近郊には奥入瀬渓流や十和田湖、十和田神社等の観光スポットのほか、ホテルから望むことができる朝日など、<br>\r\n自然を通しての癒し＝パワースポットがたくさんあります。<br>\r\nお仕事の合間のリフレッシュにご利用ください。'),
(9, 'シェラトン・グランデ・トーキョーベイ・ホテル', '◆ワーケーション◆', '◆オアシスパス◆', 'ワーケーションにもぴったり！心も身体もリフレッシュできるプランが登場！<br>\r\n東京湾とガーデンに囲まれた空間で心身ともにリフレッシュしてみてはいかがでしょうか?\r\n', '室内プール、舞湯、フィットネスを滞在中何度でもご利用いただけます。<br>\r\n※施設点検等によりご利用いただけない場合がございます<br>\r\n※新型コロナウイルス感染症対策のため、プール、舞湯、フィットネスの利用人数を制限しております。\r\n'),
(10, '伊豆今井浜東急ホテル', '', '', '', '');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`hotel_id`,`name`),
  ADD KEY `hotel_id` (`hotel_id`,`name`);

--
-- テーブルのインデックス `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD PRIMARY KEY (`hotel_id`,`name`);

--
-- テーブルのインデックス `hotel_work`
--
ALTER TABLE `hotel_work`
  ADD PRIMARY KEY (`hotel_id`,`name`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `hotel`
--
ALTER TABLE `hotel`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ホテル固有のID', AUTO_INCREMENT=15;

--
-- テーブルの AUTO_INCREMENT `hotel_info`
--
ALTER TABLE `hotel_info`
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ホテル固有のID', AUTO_INCREMENT=11;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `hotel_info`
--
ALTER TABLE `hotel_info`
  ADD CONSTRAINT `hotel_id` FOREIGN KEY (`hotel_id`,`name`) REFERENCES `hotel` (`hotel_id`, `name`) ON UPDATE CASCADE;

--
-- テーブルの制約 `hotel_work`
--
ALTER TABLE `hotel_work`
  ADD CONSTRAINT `sotuken_hotel` FOREIGN KEY (`hotel_id`,`name`) REFERENCES `hotel` (`hotel_id`, `name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
