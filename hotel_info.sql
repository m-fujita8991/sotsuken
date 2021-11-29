-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: 127.0.0.1
-- 生成日時: 2021-11-29 05:35:25
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
(1, '南紀白浜マリオットホテル', 'https://drive.google.com/uc?id=1JyGIfl3Iy825tfA2XbtWZdzDR27W1a-q', '南紀白浜マリオットホテルへようこそ<br>\r\n太平洋と白良浜を見渡す南紀白浜マリオットホテル。<br>\r\n白浜の美しい情景を表現した182室の客室や名湯・白浜温泉を引く露天風呂、新鮮な海の幸をご提供するオーシャンダイニングで、特別な休日をお過ごしください。', 'https://drive.google.com/uc?id=1qXOAqrhVDCvJmK3Ukqfi_rG-rg4ZWcZ1', 'https://drive.google.com/uc?id=1cw0GPZoC11nI6ZcXvrmHoCXzC2LiBMNU', 'https://drive.google.com/uc?id=139NYTTwjmSNmWYVsQAlEuXqB185slLdR', '日本三古湯の一つに数えられ、歴史書「日本書紀」にも登場する和歌山県南紀白浜温泉。ホテル最上階の温泉大浴場の露天風呂からは、太平洋の絶景を眺めながら入浴できます。ご家族連れのお客さまにおすすめの貸切温泉もご用意しました。由緒ある古湯の湯浴みを思う存分ご堪能ください。', 'こちらは敷地面積はとるのに夏の期間しか利用者がいない屋外プールです！あなたもこのプールで不倫相手を見つけてみてはいかがでしょうか？', '温もりを感じさせる木目調のしつらい、白浜の“水天一碧”を表現した上質な内装デザイン、そして全室に確保した40㎡以上のゆとりが、旅のひとときをやさしく包み込みます。オーシャンビューの客室、温泉付きの客室、和の趣を活かした客室など、豊富な客室タイプをラインナップしています。', 'https://drive.google.com/uc?id=1P-otSG1eKdY8XQ40dDpIevdWEGn1pSA6', 'https://drive.google.com/uc?id=1UZRI0aRC4yCkWed75yaOmKT7vJshkaRg', '観光地として名高い和歌山県の白浜町にある人気ラーメン店。豚骨醤油味のご当地名物「和歌山ラーメン」と、鯛のダシを使用したあっさり塩味のオリジナルメニュー「元祖白浜ラーメン」はクセになる美味しさで、県外からのリピーターも。また、自慢のサイドメニューは、県産の食材をふんだんに使用するなど、とことんこだわっている。店内は広々としており、団体客や家族連れも気軽に利用できる。海水浴後のランチにもおすすめ。', '潮風を感じながらスイーツが食べられる。パンケーキが美味しい大満足カフェです。\r\nランチプレートを数種類・ボリュームたっぷりのパンケーキを揃えており、珈琲と合わせて食べていただければ、充実したランチタイムを過ごせること間違いなし！！', '和歌山ラーメン 和ん ', 'Cafe Plage', 'https://drive.google.com/uc?id=1WLBEsin0KIH8xRG9myCKIAk4kELxJH9L', 'https://drive.google.com/uc?id=1VEPP3WQOzFCfWj6BU9DtjJG-ohmoOA3c', '日本三大居酒屋のひとつ！カウンター席のある小さな店で、新鮮な南紀白浜の魚介の網焼きなど海鮮料理を日本酒やビールと一緒に楽しめる大衆居酒屋。', '天然本くえにこだわり養殖くえは絶対に使わない。\r\n１年を通して天然本くえを味わえるくえ料理専門店。', '大衆酒場 長久酒場', '活魚・鍋料理 風車', 'https://www.google.com/maps/d/u/0/embed?mid=1IDee6wD6i8w23wA_4Igl8AqHTrey43XS', 'https://www.shirahama-marriott.com/'),
(2, 'ウェスティンホテル大阪', 'https://drive.google.com/uc?id=1fOIP8ZXkL69c0sBnk4U-BNu1tUlexy8g', '客室は全室が 41平方メートル 以上の広さを持ち、窓からは大阪の夜景を一望いただけます。 <br>\r\n「雲の上の寝心地」と称されるヘブンリーベッドを設置し、快適なホテルステイをご提供。<br>\r\n神戸方面にもアクセス便利な大阪駅へは徒歩約7分、市内観光に便利な梅田駅へは徒歩約9分<br>\r\n大阪の中心でありながら、周囲を緑豊かな環境に恵まれています。', 'https://drive.google.com/uc?id=1ZXyzbGmGYHTvmH6zJCzUCCvu-lIv_cNg', 'https://drive.google.com/uc?id=1Y0djCBDs_WG2q6NKYjoWEhbx0fmt0h1L', 'https://drive.google.com/uc?id=1MJnXXOqQU-d_QAW0b9FvSp8hn9gdo_J6', 'すべての客室が41㎡以上ある、ウェスティンホテル大阪は、ターミナル駅であるJR大阪駅へ徒歩約7分、神戸や京都などへもアクセス便利な好ロケーション。 ベッドはウェスティンホテル＆リゾートオリジナル、「雲の上の寝心地」と称される”ヘブンリーベッド”を設置し、快適なホテルステイをご提供いたします。', '常に適温を保つ幅7M × 長さ20Mのプール。陽の光が燦々と差し込むため、室内は明るく解放的。快適性にこだわった屋内型プールです。また、ジャグジーとも呼ばれる円形状のプールもあり、水面下より気泡を含んだ水流が勢いよく体全体を刺激します。疲れた筋肉をほぐし、心身ともに快適にします。', '癒しと健康、そして美容にも効果があると好評の鍼灸。ウェスティンホテル大阪 鍼灸サロンでは、お体に優しい低刺激で安全な施術を行っておりますので、 鍼灸をお受けになるのが初めてのお客様にも安心してご利用いただいております。', 'https://drive.google.com/uc?id=1qkAMVPZ8IvsnjV7TqXRaZuR1nqon5Zpn', 'https://drive.google.com/uc?id=1UzdKuP1TZth8L08A5aaRditDKw_yEck0', 'ヨーロッパの本格的食事パンや焼き菓子が並ぶ店\r\n多種多様な粉を使用し、欧州の本格的食事パンや色とりどりのデニッシュなど、発酵方法や製造方法にこだわったパンを提供しております。\r\nランチはクロックムッシュやキッシュ等、日替わりメニューをご用意しております。\r\n', 'スープは２４時間かけてじっくりと作り込み、化学調味料の使わない安心・安全の濃厚とんこつスープ。麺は自家製スープのコンディションに合わせ、毎日、小麦粉の配合、加水率を微調整して製麺しております。メニューに合わせ三種の麺があります。また、店主は大のラーメン好きで述べ５千食ほど食べてきた店主は、東京と大阪の有名店で計８年修業を重ね、腕を磨いてきました。『店主が作るこだわりのラーメンをぜひご堪能下さい！！\r\n', 'ブーランジェリー ブルディガラ 大阪店 ', 'らーめん 伊藝 （ラーメン イゲイ)', 'https://drive.google.com/uc?id=1tTx4PTJ8nydjavhim8FjlenHGKipgDS0', 'https://drive.google.com/uc?id=1sxzUruq6OEQFaKbaajL2EVDN7Z_CzC6V', 'スカイビル近く、3駅利用可の好立地で深夜3時まで愉しめる寛ぎの隠れ家ビストロ。「鹿児島黒牛のカルパッチョ」をはじめ厳選した素材そのものの味を引き立てて作られる料理を、国内外から取り揃えたワインやビールなど90種以上のドリンクとともにご堪能ください◎歓送迎会はもちろん、女子会や誕生日会など特別な夜には人気のソファー席がおすすめです♪大切な方との素敵な夜にぜひご利用ください。\r\n', '「医食同源」の哲学と、8日間かけて料理する高級スープ“佛跳墻”\r\n「あまりの美味しそうな香りに、修行僧ですら壁を飛び越えてくる」 ―\r\n歴代の中国皇帝に愛され、通称「ぶっとびスープ」とも呼ばれる逸話を持つ伝統料理が、料理長・王憲生のスペシャリテ。 王の料理哲学である「医食同源」に基づいた、オリジナルの佛跳墻を「故宮」でお召しあがりいただけます。', 'ビストロ テソロン ウナ ベッコ', '故宮 （コキュウ） ', 'https://www.google.com/maps/d/u/0/embed?mid=1WzXMO4343LlCmXPRzRa9rNftgOKBEgz-', 'https://www.marriott.co.jp/hotels/travel/osawi-the-westin-osaka/'),
(3, 'ロイヤルホテル土佐', 'https://drive.google.com/uc?id=13bqHvr2OK0XHJckRi2fNkyB4rIvUDkKj', 'ロイヤルホテル土佐へようこそ<br>\r\n南国の太陽と雄大な太平洋のスケールを感じ、<br>\r\n「よさこい温泉」露天風呂で体の汗を流してください。', 'https://drive.google.com/uc?id=13rRXJDy6N6vjUlntA7EN0mOV0R4beRIe', 'https://drive.google.com/uc?id=1XP4HzrPI34Hzv8cb0quLBrZzAYVKi4RD', 'https://drive.google.com/uc?id=1iLQN1ApyS-WmDn9HQpXGkWzLZhIDw5PV', '『桂浜の湯』には、桂浜の弓なりに曲がった海岸線と「坂本龍馬像」。\r\n『室戸岬の湯』には、弘法大師が悟りを開いたとされる御厨人窟（みくろど）をイメージした、\r\n小さな洞窟と「中岡慎太郎像」があり温泉だけでなく目でも楽しめる露天風呂です。', 'ホテルガーデンの花々を眺めながらゆったりティータイム、\r\nMarcheでは広々とした店内で高知県の名産品を手に取ってお選びください。', '今ではもうあまり見ない機種も揃っていてゲーム好きの方は立ち寄るべきです。懐かしのゲームに再会できるかもしれません。他にも子供も好きなゲームなども揃っています。', 'https://drive.google.com/uc?id=1xX7k5j0PxwhZNrMf7Y0bENlxBCbc3kL2', 'https://drive.google.com/uc?id=1WOZ5WW-3tRkfEWcX9Rf2NGC9o1SaocUt', 'さっぱりとしたうどんが特徴的です。しかし、色々な種類のうどんが用意されているのでメニューを見れば食べたいうどんが見つかります。', '小麦の香りともっちり食感、カリッと歯応えのあるフランスパンです。バターサンドクッキーのようにクリーミーで濃厚な味わい。コーヒーのお供に最高です。', '柿の木', '暁パン', 'https://drive.google.com/uc?id=1SekyEzGHMXktI-f8b2LKDXomqLlR1lfF', 'https://drive.google.com/uc?id=1val_dGvWUo4XNStKyYFD8eYG5utsj8c3', '新鮮でボリューム満点な海鮮丼。うどんの汁は甘めで、優しい味になっています。昼夜問わず売り切れた際は早めに閉店してしまうので注意です。', '透き通ったスープが特徴的です。麺は細めのストレートでスープもあっさりとしたラーメンでとても食べやすくなっています。', '活魚レストラン 藤', 'らーめん家 正蔵', 'https://www.google.com/maps/d/u/0/embed?mid=1HM2w3OIBm05iC5TiIjNU9SQLLc5KBn9-', 'https://www.marine-hotel.co.jp/stay/'),
(4, 'グランドプリンスホテル広島', 'https://drive.google.com/uc?id=1KOrIPtwgJMhwkIWeIv44Ihhr7DnaNH1V', '広島湾と瀬戸内海国立公園を見下ろす、高層のモダンな高級ホテル。<br>\r\n居心地の良い客室からは、街、公園、海のいずれかの景色が楽しめます。<br>\r\n各国料理や海鮮料理を提供するレストラン 4 軒のほか、カジュアルなレストラン、カフェ、見晴らしの良いバーを併設。\r\n笑顔溢れる上質なホテルステイをお楽しみください。\r\n', 'https://drive.google.com/uc?id=1AkizDLWEdyiiM4Mcm3fiDC8iZS2J3a1-', 'https://drive.google.com/uc?id=1-vgNOGwqV11-6PZL7Sq-fRBkWDSw33IX', 'https://drive.google.com/uc?id=1oHMh1KIH8aA3Pn4MaAG0PNf7zEK3pkmy', '広島湾と瀬戸内海国立公園を見下ろす、高層のモダンな高級ホテル。路面電車の元宇品口駅から徒歩 15 分。居心地の良い客室からは、街、公園、海のいずれかの景色が楽しめる。全室に無料 Wi-Fi、薄型テレビ、ミニ冷蔵庫、お茶セットを完備。スイートにはシッティング エリアあります。', 'アーバンリゾートならではの滞在型ウェディング。純白のドレスに包まれて、誓いのときを待つ。夢見ていた以上の幸せがこみあげる、忘れられない一日を。澄み渡る空の色、胸に迫る波の音、芳しい花々、頬に触れる風、ここにしかない最高のロケーションが、おふたりを祝福します。', '3階には宿泊者専用の展望露天風呂 広島温泉「瀬戸の湯」があります。展望露天風呂からは、瀬戸内海を一望することができます。他にはミストサウナ、ブロアバス、内湯もあり、広くて綺麗で快適な温泉です。ロッカー・パウダールームも常に清潔に保たれており気持ちよく利用することができます。', 'https://drive.google.com/uc?id=1_fGN8iHQaOvmFcvSYgS5xoeuPQbqcYCf', 'https://drive.google.com/uc?id=1PQjoUPclIbBIExa6nitVcx0rhidpRmG5', '全ての席から海が見える、女性に人気の喫茶店。天気のいい日には、外のテラス席で食事をすることができ、瀬戸内海を見渡せる最高のロケーションで贅沢なランチタイムが楽しめます。コーヒーのロースト加減を自分で指定することができ、自分に合ったコーヒーを飲めるのも嬉しい点です。', 'ホテルの中で食べられるお好み焼き店。そばにしっかり火を入れてあり食感がよく、蒸し焼きにされたキャベツの甘さが味わえます。また甘めのソースがとてもよくお好み焼きに合っています。お好み焼きだけでなく焼きそば、たこ焼き等も楽しめるお店。', '24/7 coffee&roaster ujina', 'お好み焼き かっくん', 'https://drive.google.com/uc?id=1uA0bXiJoegm_VD0c_5PcG86DOwbWANPK', 'https://drive.google.com/uc?id=1ljXjLybsxNeuppxi6OGYe-SqvogqHk6P', 'グランドプリンスホテル広島から歩いて10分程。日本屈指の衛星管理システムを導入している福山市の契約牧場があり、安心して新鮮なお肉が味わえる。海鮮メニューやサイドメニューも充実しており、１人でも大人数でも楽しめるお店。', '殻付き牡蠣が1キロ(10〜12個)1,000円、海鮮焼きセット1,350円、一夜干しセット1,000円と非常にリーズナブルにBBQを楽しむことができます。プレハブの建物の中は、炭は側溝を使い焼き網に乗せ、椅子はビールケースに板をのせる、まさにシンプルな牡蠣小屋！雰囲気抜群です！', '炙焼 楽群 LaGoon', 'ミルキー鉄男のかき小屋 宇品店', 'https://www.google.com/maps/d/u/0/embed?mid=1VOJ8KD8S57yJSiroKuVALkVQe7RhkO7J', 'https://www.princehotels.co.jp/hiroshima/plan/all/'),
(5, 'マリンタラソ出雲', 'https://drive.google.com/uc?id=1kFfrypsNZm9FA3-NOahKSpfK1BiRTnmb', 'マリンタラソ出雲へようこそ<br>\r\n四季を通じて、窓越しに広がる日本海の風景に心も身体もリラックスできます。', 'https://drive.google.com/uc?id=1qI8dc5UjYEpMeFNcUOpvnwy9sEzBGRyZ', 'https://drive.google.com/uc?id=1t7Mcq-T3KPybW1V-4aHlcgHiEHxp-E6P', 'https://drive.google.com/uc?id=1s7JxOf8Y5hKw4zKYdRlUfB-N_VYLLCRy', '1階フィットネスルームにて、ランニングマシン・ダンベル・エアロバイクなどが利用可能です。', '海水を使用していて、人が一番リラックスできる不感温度(33～36℃)に設定されています。14種類のジェットも設備されているので、身体全身をマッサージしてみてください。', '窓越しに広がる日本海の風景に心も身体もリラックスできます。そして、野生のイルカが登場しすることがあります。', 'https://drive.google.com/uc?id=14h2AqiabijaQASGBMQoyGcJ701ggwL16', 'https://drive.google.com/uc?id=1zP35c20HWG8F-JFEoq61sI2qFh2eKxK1', '定番メニューはこく深いスープに、超極太もちもち麺の「キララブラック」です。あっさりしたラーメンからこってりしたラーメンまでそろっています。サイドメニューには餃子や海鮮炒飯があります。', 'とてもヘルシーで少しスパイシーな豚丼です。珈琲店なのでデザインやドリンクメニューも豊富で、店内からの海の眺めがとても綺麗です。\r\n', 'らーめん工房 海(かい)', '珈琲店 蒼(あお)', 'https://drive.google.com/uc?id=1Va_cf7GdIRrRF19oeZLefxdoA-bXBedV', 'https://drive.google.com/uc?id=1fCePPosEbnrj5CvN2SVpojuIh3dmiiuq', '身のしまったお刺身などがボリューム満点です。広々とした店内でゆっくり海を見ながら食べることができるので家族連れの方にもオススメです。', '雰囲気は、昭和の喫茶店です。洋食系のメニューも豊富で、海鮮お好み焼きは、巨大で具沢山でとにかく美味しいです。', 'ごゑん GOEN', 'シャロン', 'https://www.google.com/maps/d/u/0/embed?mid=1PLY6EhMsn8-03PYJsf4CbuovB7ZUHKIQ', 'https://www5.489pro.com/asp/489/menu.asp?id=32000009&ty=ser&list=YES&lan=JPN'),
(6, 'ホテルリマーニ', 'https://drive.google.com/uc?id=1IO2WEvkx4ZWEQKeVdnzNUaSit27zPYOM', '瀬戸内海に面した岡山県東南部、牛窓に位置する<br>\r\nギリシャ語で「港」を意味する「Limani（リマーニ）」という名のホテル。<br>\r\n穏やかな気候風土、オリーブの樹が茂る丘陵地、<br>\r\n目の前には大小の島々が浮かぶ海が広がり、ここはさながら地中海のよう。<br>\r\nそんな風景を眺めていれば、自然に心と身体はほぐれていく。<br>\r\nここでの時間は、いつも海とともに・・・。\r\n', 'https://drive.google.com/uc?id=1USU-LNRcdBYdLyCyuFkXDO9DO5Fx7IoL', 'https://drive.google.com/uc?id=14B73z1hZLhQUw6O1t2BsavlbPlmLC31G', 'https://drive.google.com/uc?id=1qI9JFa4P9Kt1ELcdAC23Sf0sWDrjwnaA', '室内の壁紙・カーペット・カーテン等の内装とバスルームを刷新し、「安らげるイメージ」をデザインテーマとしてシックで落ち着いた内装に仕上げたお部屋（ナチュラル）。\r\nベッドは最上の眠りを追求するシモンズ社製を採用。\r\n眺望はもちろん瀬戸内海の多島美を見渡す全室オーシャンビュー。\r\n', 'ホテルのプールでのんびり過ごしませんか？\r\n泳ぐだけではなく、プールサイドで心地よい風に吹かれながら本を読んだり、話をしたり、のんびりとした時間をお楽しみください。\r\n', '開放感にあふれた半円形に切り取られた窓からは、穏やかな瀬戸内海が一望できます。\r\n瀬戸内海に沈む夕日を眺めながら、ごゆっくりご入浴ください。\r\n宿泊されているお客様は無料でご利用いただけます。\r\n', 'https://drive.google.com/uc?id=1U60U_FKfGOO3UIMsXW1UzZ57F_XU26bP', 'https://drive.google.com/uc?id=1VlJv9oZ9HxCXtSNoFiXEKV_b3Lp7i2n9', '新鮮な魚と野菜の和風ランチ、築100年以上の古民家、いやしの空間でギャラリーや雑貨を見ながらゆったりと食事を楽しんでいただけます。日替わりで潮菜定食には、日本酒が欲しくなる濃い目の味から椎茸フライや野菜いっぱいで、女性受けする内容となっております。', '丘の上にある名店で”ざるそば”ランチ\r\n牛窓の閑静な丘の上にある、蕎麦の名店です。メニューは”ざるそば”のみというこだわりの蕎麦屋さんは、県外のファンも多くいるほどです。\r\n', 'うしまど茶屋・潮菜', 'ちょい蕎麦庵 ', 'https://drive.google.com/uc?id=1LV_OyinlVUs4dEwmSOt1ndMpLaQmNGYB', 'https://drive.google.com/uc?id=15PTFhWcKrKKnhPmTgYq2jkIp8QvLxSfn', '瀬戸内海の絶景を望めるイタリアンレストラン\r\n天井までのガラス窓の向こうには、濃い緑と瀬戸内海の青が広がる。「日本のエーゲ海」と呼ばれる瀬戸内市牛窓（うしまど）の海を一望できる「瀬戸内市国際交流ヴィラ」に併設されており、お料理に関しては瀬戸内の魚介類をふんだんに使っており、味付けや仕上がりは全体的に家庭的な印象となっています。', '～日本のエーゲ海を眺めながら美味を満喫～\r\n目の前に広がる瀬戸内海で獲れた海の幸や、地元の食材をふんだんに生かしたフレンチをご用意しました。 レストランから広がるパノラマとともにご堪能下さい。 日常を忘れ、ゆっくりとした時間をホテルイルマーレ牛窓でお過ごし下さいませ。', 'acca ', 'レストラン ラ ヴォルテ', 'https://www.google.com/maps/d/u/0/embed?mid=12CMuMhjCGHEXnz9RyErOXjFlFBzs-X31', 'https://www.limani.jp/');

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
  MODIFY `hotel_id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'ホテル固有のID', AUTO_INCREMENT=7;

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
