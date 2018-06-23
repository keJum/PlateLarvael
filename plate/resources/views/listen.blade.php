<?php

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    <title>Plate</title>
</head>
<body>
<center>  
    <br>
    <form action="/create" method="GET">
        <button type="submit" class="btn btn-success">Добавить</button>
    </form>
    @foreach($ls as $lsOne)
    <br>
    <div class="card" style="width: 20rem">
        <img class="card-img-top" src="/storage/plastinkaCart.jpg" alt="Card image cap">
        <div class="card-block">
        <h4 class="card-title">{{$lsOne->titelName}}</h4>
        <p class="card-text">{{$lsOne->specification}}</p>
        <p class="card-text"><small class="text-muted">{{$lsOne->author}}</small></p>
        <a href="/edit/{{$lsOne->id}}">Редактировать</a>
        <br>
        <form method="POST" action="/delete">
            {{ csrf_field() }}
            <button class="btn btn-danger" type='submit' name="submDelete" value="{{$lsOne->id}}" >Удалить</button>
        </form>
        </div>
    </div>
    @endforeach
    <br>
</center>
</body>
</html>