<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SampleController extends Controller
{
    public function index(){
        $item = DB::select('select * from hotel');
        return view('sample',['items'=>$item]);
    }

    // 中国・四国地方
    public function change(){
        $item = DB::select('select * from hotel where locate_id = 5');
        return view('sample2',['items'=>$item]);
    }
}
