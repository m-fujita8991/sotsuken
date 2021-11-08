<!DOCTYPE html>
<html lang="ja">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>素泊まり.com</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="ここにサイト説明を入れます">
	<meta name="keywords" content="キーワード１,キーワード２,キーワード３,キーワード４,キーワード５">
	<link rel="stylesheet" href="css/style.css">
</head>

<body>

	<div id="container">

		<header>
			<div class="inner">
				<h1 id="logo"><a href="sample"><img src="images/logo.png" alt="素泊まり.com"></a></h1>
			</div>

		</header>

		<nav>
			<ul>
				<li><a href="hokkaido.html">北海道・東北</a></li>
				<li><a href="kanto.html">関東</a></li>
				<li><a href="tyubu.html">中部</a></li>
				<li><a href="kinki.html">近畿</a></li>
				<li><a href="tyugoku.html"  class="current">中国・四国</a></li>
				<li><a href="kyusyu.html">九州</a></li>
			</ul>
		</nav>

		<div id="contents">

			<div class="inner">

				<div class="main">

					<section>

						<h2>ホテル　一覧</h2>
                        @for ($i=0;$i<count($items);$i++)
						<div class="list">
							<a href="hotel/sample.html">
								<figure><img src={{$items[$i]->image}} alt="写真の説明"></figure>
								<h4>{{$items[$i]->name}}</h4>
								<table>
									<tr>
										<th>所在地</th>
										<td>{{$items[$i]->info}}</td>
										<th>価格</th>
										<td>{{$items[$i]->price}}</td>
									</tr>
								</table>

							</a>
						</div>
                        @endfor
					</section>

				</div>
				<!--/.main-->

				<div class="sub">

					<section class="box">

						<h2>おすすめホテル情報</h2>

						<div class="list">
							<a href="hotel/sample.html">
								<figure><img src="images/sample37.jpg" alt="写真の説明"></figure>
								<h4>物件タイトル<span class="newicon"></span></h4>
								<p>所在地：東京都XXXX<br>
									価格：XXXXX円</p>
							</a>
						</div>

						<div class="list">
							<a href="hotel/sample.html">
								<figure><img src="images/sample1.jpg" alt="写真の説明"></figure>
								<h4>物件タイトル</h4>
								<p>所在地：東京都XXXX<br>
									価格：XXXXX円</p>
							</a>
						</div>

						<div class="list">
							<a href="hotel/sample.html">
								<figure><img src="images/sample1.jpg" alt="写真の説明"></figure>
								<h4>物件タイトル</h4>
								<p>所在地：東京都XXXX<br>
									価格：XXXXX円</p>
							</a>
						</div>

					</section>

				</div>
				<!--/.sub-->

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

	<!--メニュー開閉ボタン-->
	<div id="menubar_hdr" class="close"></div>

</body>

</html>