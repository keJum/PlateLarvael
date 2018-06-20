<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
use Illuminate\Http\Request;

Route::get('/', function () {
    $ls = DB::table('listen')->get();
    return view('listen',compact('ls'));
});

Route::get('/{lsedit}', function ($id) {
    $lsedit = DB::table('listen')->find($id);
    return view('edit',compact('lsedit'));
});

Route::post('/edit', function(Request $request) {
    $text = $request->text;
    $id = $request->id;
    DB::update('update listen set specification = ? where id = ? ', [$text,$id]);
    return redirect('/');
});