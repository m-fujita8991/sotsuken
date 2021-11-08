<!DOCTYPE html>
<html lang="ja">
<head>
<link rel="stylesheet" href="css/sample.css">
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
            <tr><th>Name</th><th>Info</th><th>Price</th><th>Image</th></tr>
            @foreach ($items as $item)
                <tr>
                    <td>{{$item->name}}</td>
                    <td>{{$item->info}}</td>
                    <td>{{$item->price}}</td>
                    <td><img src={{$item->image}}></td>
                </tr>
            @endforeach
        </table>
    <form action="" method="post">
        {{@csrf_field()}}
        <button type="submit">aaaaa</button>
    </form>
</body>
</html>