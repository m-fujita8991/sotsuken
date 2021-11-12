<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="utf-8">
	<title>素泊まり.com</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Webサイトの説明">
	<link rel="stylesheet" href="css/sample/style.css?20211112">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>

	<div id="container">

		<header>
			<div class="inner">
				<h1 id="logo"><a href=""><img src="image/index/logo.png" alt="素泊まり.com"></a></h1>
			</div>

		</header>

		<form method="POST" action="#" class="search_box">
			<script>
				// 各地域ごとの都道府県の配列を設定
				var tohoku = { 0: '全域', 1: '北海道', 2: '青森県', 3: '岩手県', 4: '宮城県', 5: '秋田県', 6: '山形県', 7: '福島県' };
				var kanto = { 0: '全域', 8: '茨城県', 9: '栃木県', 10: '群馬県', 11: '埼玉県', 12: '千葉県', 13: '東京都', 14: '神奈川県' };
				var chubu = { 0: '全域', 15: '新潟県', 16: '富山県', 17: '石川県', 18: '福井県', 19: '山梨県', 20: '長野県', 21: '岐阜県', 22: '静岡県', 23: '愛知県' };
				var kinki = { 0: '全域', 24: '三重県', 25: '滋賀県', 26: '京都府', 27: '大阪府', 28: '兵庫県', 29: '奈良県', 30: '和歌山県' };
				var chugoku = { 0: '全域', 31: '鳥取県', 32: '島根県', 33: '岡山県', 34: '広島県', 35: '山口県', 36: '徳島県', 37: '香川県', 38: '愛媛県', 39: '高知県' };
				var kyushu = { 0: '全域', 40: '福岡県', 41: '佐賀県', 42: '長崎県', 43: '熊本県', 44: '大分県', 45: '宮崎県', 46: '鹿児島県', 47: '沖縄県' };
				// 各地域を配列にまとめる
				var areaArray = [tohoku, kanto, chubu, kinki, chugoku, kyushu];

				$(function () {
					// 地域選択用セレクトボックスが切り替わったら発動
					$('#areaSelect').change(function () {
						// 一旦、都道府県選択用セレクトボックスのoptionを消去
						$('#pref > option').remove();
						//　地域選択用セレクトボックスの値を取得
						var val = $(this).val();
						// 選択したvalue値を変数に格納
						var selectedArea = areaArray[val];
						// 選択した地域の都道府県をセレクトボックスのoptionに追加
						$.each(selectedArea, function (index, value) {
							$('#pref').append($('<option>').html(value).val(index));
						})	
					});
				});
			</script>
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

		<div id="contents">

			<div class="inner">

				<div class="main">

					<section>

						<h2>ホテル　一覧</h2>
						@if(count($items) == 0)
							<div class="item_count">
								<p>検索結果は{{count($items)}}件です。</p>
							</div>
						@else
							<div class="item_count">
								<p>検索結果は{{count($items)}}件です。</p>
							</div>
							@for($i=0;$i < count($items);$i++)
							<div class="list">
								<a href="">
									<figure><img src={{$items[$i]->image}} alt="写真の説明"></figure>
									<h4>{{$items[$i]->name}}</h4>
									<table>
										<tr>
											<th>所在地</th>
											<td>{{$items[$i]->building}}</td>
											<th>価格</th>
											<td>{{$items[$i]->price}}円</td>
										</tr>
									</table>
								</a>
							</div>
							@endfor
						@endif
					</section>

				</div>
				<!--/.main-->
			</div>
			<!--/.inner-->

		</div>
		<!--/#contents-->

		<footer>

			<div id="footermenu" class="inner">
			</div>
			<!--/#footermenu-->

			<div id="copyright">
				<small>Copyright&copy; 素泊まり.com All Rights Reserved.</small>
				<span class="pr"><a href="https://template-party.com/" target="_blank">《Web
						Design:Template-Party》</a></span>
			</div>
			<!--/#copyright-->

		</footer>

	</div>
	<!--/#container-->

	<p class="nav-fix-pos-pagetop"><a href="#">↑</a></p>

</body>

</html>