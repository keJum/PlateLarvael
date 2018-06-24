@extends('layouts.app')
@section('content')
@if(isset($lsedit))
    <br>
    <div class="card" style="width: 20rem">
        <img class="card-img-top" src="/storage/plastinkaCart.jpg" alt="Card image cap">
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
                                    <textarea name="textSpecification" class="form-control" id="exampleTextarea" rows="20">
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
@endif
@endsection
