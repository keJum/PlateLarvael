@extends('layouts.app');
@section('content')
        <br>
        <div class="card" style="width: 20rem">
            <img class="card-img-top" src="/storage/plastinkaCart.jpg" alt="Card image cap">
            <div class="card-block">
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-10">
                            <form action="{{url('create')}}" method="POST" class='form'>
                                {{csrf_field()}}
                                <div class="row">
                                    <div class="form-group">
                                        <label for="Task" class="control-label">Создание новой пластинки</label>

                                        <input type="text" name="namePlate" class="form-control" placeholder="Назване пластинки">
                                        <br>
                                        <textarea name="textSpecification" class="form-control" id="exampleTextarea" rows="20" placeholder="Описание"></textarea>
                                        <br>
                                        <input type="text" name="authorPlate" class="form-control" placeholder="Автор">
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
@endsection
