<!DOCTYPE html>
<html lang="ja">
<head>
<link rel="stylesheet" href="css/sample/sample.css">
</head>
<body>
<h1>Beetles</h1>
    <h2>External morphology</h2>
        <h3>Head</h3>
            <h4>Mouthparts</h4>
        <h3>Thorax</h3>
            <h4>Prothorax</h4>
            <h4>Pterothorax</h4>
        <table>
            <tr><th>名前</th><th>住所</th><th>価格</th><th>画像</th><th>地域</th></tr>
            @foreach ($items as $item)
                <tr>
                    <td>{{$item->name}}</td>
                    <td>{{$item->building}}</td>
                    <td>{{$item->price}}</td>
                    <td><img src={{$item->image}}></td>
                    @switch($item->locate_id)
                        @case(1)
                            <td>北海道・東北</td>
                            @break
                        @case(2)
                            <td>関東</td>
                            @break
                        @case(3)
                            <td>中部</td>
                            @break
                        @case(4)
                            <td>近畿</td>
                            @break
                        @case(5)
                            <td>中国・四国</td>
                            @break
                        @case(6)
                            <td>九州</td>
                            @break
                    @endswitch
                </tr>
            @endforeach
        </table>
        <input type="button" onclick="location.href='sample2'" value="aaaa">
</body>
</html>