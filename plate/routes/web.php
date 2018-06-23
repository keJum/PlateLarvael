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

Route::get('/edit/{lsedit}', function ($id) {
    $lsedit = DB::table('listen')->find($id);
    return view('edit',compact('lsedit'));
});

Route::post('/edit', function(Request $request) {
    $text = $request->textSpecification;
    $id = $request->id;
    DB::update('UPDATE listen SET specification = ? WHERE id = ? ', [$text,$id]);
    return redirect('/');
});

Route::post('delete', function(Request $request) {
    $submDelete = $request->submDelete;
    DB::delete('DELETE FROM `listen` WHERE `listen`.`id` = ?', [$submDelete]);
    return redirect('/');
});


Route::get('/create', function() {
    return view('create');
});


Route::post('/create', function(Request $request) {
    $author = $request->authorPlate;
    $text = $request->textSpecification;
    $name = $request->namePlate;
    DB::insert( 'INSERT INTO listen '.
                '(`id`, `author`, `titelName`, `specification`, `created_at`, `updated_at`)'.
                ' VALUES (NULL, ?, ?, ?, CURRENT_TIME(), CURRENT_TIME())', [$author, $name,$text]);
    return redirect('/');
});
