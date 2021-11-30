<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="utf-8">
	<title>WORKATION NAVI</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Webサイトの説明">
    <link rel="icon" href="../../image/common/icon.ico">
	<link rel="stylesheet" href="../../css/sotuken/hotel.css?20211120">
</head>

<body>
	<div id="container">
		<header>
			<div class="inner">
				<h1 id="logo"><a href="../../"><img src="../../image/common/logo.png" alt="sudomari.com"></a></h1>
			</div>
		</header>
        @foreach ($items as $item)
        <div id="contents">
            <div class="inner">
                <div class="main">
                    <section>
                        <h2>{{$item->name}}</h2>
                        <img class="top-img" src={{$item->top_image}} alt="写真の説明">
                        <p class="top-moji">{!!$item->top_text!!}</p>
                        <div class="center">
                            <p><a href={{$item->hotel_reserve_url}} class="btn" target="blank">予約はこちら</a></p>
                        </div>

                        <h2>施設のご紹介</h2>
                        <div class="flex-container">
                            <div class="flex-item">
                                <div class="image-wrap">
                                    <img class="center-img"src={{$item->hotel_institution_image1}}>
                                    <p>{{$item->hotel_institution_text1}}</p>
                                </div>
                            </div>
                            <div class="flex-item">
                                <div class="image-wrap">
                                    <img class="center-img" src={{$item->hotel_institution_image2}}>
                                    <p>{{$item->hotel_institution_text2}}</p>
                                </div>
                            </div>
                            <div class="flex-item">
                                <div class="image-wrap">
                                    <img class="center-img" src={{$item->hotel_institution_image3}}>
                                    <p>{{$item->hotel_institution_text3}}</p>
                                </div>
                            </div>
                        </div>

                        <!-- 食事 -->
                        <h2>食事</h2>

                        <div class="rice">
                            <!-- ランチ -->
                            <input type="radio" name="tab_name" id="tab1" checked>
                            <label class="tab_class" for="tab1">ランチ</label>
                            <div class="content_class">
                                <div class="image_left">
                                    <img class="meal-img" src={{$item->hotel_lunch_image1}} alt="写真の説明">
                                    <p style="font-size: 1.5em; color: black">{{$item->hotel_lunch_name1}}</p>
                                    <p>{{$item->hotel_lunch_text1}}</p>
                                </div>
                                <div class="image_right">
                                    <img class="meal-img" src={{$item->hotel_lunch_image2}} alt="写真の説明">
                                    <p style="font-size: 1.5em; color: black">{{$item->hotel_lunch_name2}}</p>
                                    <p>{{$item->hotel_lunch_text2}}</p>
                                </div>
                            </div>

                            <!-- ディナー -->
                            <input type="radio" name="tab_name" id="tab2">
                            <label class="tab_class" for="tab2">ディナー</label>
                            <div class="content_class">
                                <div class="image_left">
                                    <img class="meal-img" src={{$item->hotel_dinner_image1}} alt="写真の説明">
                                    <p style="font-size: 1.5em; color: black">{{$item->hotel_dinner_name1}}</p>
                                    <p>{{$item->hotel_dinner_text1}}</p>
                                </div>
                                <div class="image_right">
                                    <img class="meal-img" src={{$item->hotel_dinner_image2}} alt="写真の説明">
                                    <p style="font-size: 1.5em; color: black">{{$item->hotel_dinner_name2}}</p>
                                    <p>{{$item->hotel_dinner_text2}}</p>
                                </div>
                            </div>
                        </div>

                        <h2>周辺のおすすめ食事処マップ</h2>
                        <iframe src={{$item->hotel_map_url}} width="100%" height="600"></iframe>
                    </section>
                </div>
                <!--/.main-->
            </div>
            <!--/.inner-->
        </div>
        <!--/#contents-->
        @endforeach

        <footer>
            <div id="footermenu" class="inner">
            </div>
            <!--/#footermenu-->
            <div id="copyright">
                <small>Copyright&copy; 素泊まり.com All Rights Reserved.</small>
                <span class="pr">
                    <a href="https://template-party.com/" target="_blank">《WebDesign:Template-Party》</a>
                </span>
            </div>
            <!--/#copyright-->
        </footer>
    </div>
    <!--/#container-->
</body>
</html>