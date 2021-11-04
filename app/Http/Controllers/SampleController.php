<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SampleController extends Controller
{
    public function index(){
        $item = DB::select('select * from people');
        return view('sample',['items'=>$item]);
    }

    public function change(){
        return view('sample2');
    }
}
