<!DOCTYPE html>
<html lang="ja">

<head prefix="og: https://ogp.me/ns# fb: https://ogp.me/ns/fb# website: https://ogp.me/ns/website#">
  <meta charset="utf-8">
  <title>sudomari.com</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="Webサイトの説明">
  <meta name="google-site-verification" content=""> <!-- googleサーチコンソール メタタグ だよ -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="">
  <meta property="og:image" content="">
  <meta property="og:title" content="sudomari.com">
  <meta property="og:description" content="Webサイトの説明">
  <meta property="og:locale" content="ja_JP">
  <link rel="stylesheet" href="js/slick/slick.css">
  <link rel="stylesheet" href="js/slick/slick-theme.css">
  <link rel="stylesheet" href="css/sotuken/top.css">
  <link rel="stylesheet" href="css/sotuken/top.css.map">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Hina+Mincho&display=swap" rel="stylesheet">
</head>
  
<body>
  <div class=container>
    <div class="slider">
      <div><img class="slide-img" src="image/top/1-1.png" alt=""></div>
      <div><img class="slide-img" src="image/top/1-2.png" alt=""></div>
      <div><img class="slide-img" src="image/top/1-3.png" alt=""></div>
      <div><img class="slide-img" src="image/top/1-4.png" alt=""></div>
    </div>
    <div class="slider">
      <div><img class="slide-img" src="image/top/4-1.jpg" alt=""></div>
      <div><img class="slide-img" src="image/top/4-2.jpg" alt=""></div>
      <div><img class="slide-img" src="image/top/4-3.jpg" alt=""></div>
      <div><img class="slide-img" src="image/top/4-4.jpg" alt=""></div>
    </div>
  </div>

  <h1 class=moji>泊まる　食べる<br>を繋げる</h1>
  <div class="band"></div>
  <img class="logo" src="image/top/logo.png" alt="">
  <img class="sp" src="image/top/top-haikei.jpg" alt="" width="200px">

  <form method="POST" action="sotuken/index" class="search_box">
    @csrf
		<select class="areaSelect" id="areaSelect" name="locate_id" required>
			<option hidden disabled selected></option>
			<option value="0">北海道・東北</option>
			<option value="1">関東</option>
			<option value="2">中部</option>
			<option value="3">近畿</option>
			<option value="4">中国・四国</option>
			<option value="5">九州</option>
		</select>
	  <label class="areaSelect_selectlabel">地域を選択してください</label>

	  <select class="pref" id="pref" name="prefecture_id" required></select>
	  <label class="pref_selectlabel">県名を選択してください</label>

	  <input type="image" class="search_button" src="image/index/search.png" onmouseover="this.src='image/index/search2.png'" onmouseout="this.src='image/index/search.png'">
  </form>

  
  <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script type="text/javascript" src="js/slick/slick.min.js"></script>
  <script type="text/javascript" src="js/top.js?20211116"></script>
</body>
</html>