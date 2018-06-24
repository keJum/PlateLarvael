@extends('layouts.app')
@section('content')

<br>

@if(count($ls)>0)
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
    <br>
    <form action="/create" method="GET">
        <button type="submit" class="btn btn-success">Добавить</button>
    </form>
    <br>
@endif  
@endsection