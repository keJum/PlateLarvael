<?php
    if(isset($validate)){
        var_dump($validate);
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
    
    <title>Edit Plate</title>
</head>
<body>
<center>  
        <br>
        <div class="card" style="width: 20rem">
            <img class="card-img-top" src="plastinkaCart.jpg" alt="Card image cap">
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                            <form action="{{url('edit')}}" method="POST" class='form'>
                                {{csrf_field()}}
                                <div class="row">
                                    <div class="form-group">
                                        <label for="Task" class="control-label">{{$lsedit->titelName}}</label>
                                        <input type="hidden" name="id" value="{{$lsedit->id}}">
                                        <textarea name="text" class="form-control" id="exampleTextarea" rows="20">
                                                {{$lsedit->specification}}
                                        </textarea>
                                        <br>
                                        <button type="submit" class='btn btn-success'>
                                            <i class="fa fa-plus"></i>
                                            Сохранить
                                        </button>
                                    </div>
                                </div>
                            </form>
                    </div>
                    <div class="col-sm-1"></div>
                </div>
            </div>
        </div>
    </center>
</body>
</html>