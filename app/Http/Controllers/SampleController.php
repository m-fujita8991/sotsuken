<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SampleController extends Controller
{
    public function index(){
        $item = DB::select('select * from hotel');
        return view('sample/sample',['items'=>$item]);
    }

    public function change(){
        $item = DB::select('select * from hotel');
        return view('sample/sample2',['items'=>$item]);
    }

    public function search(Request $request){
        $locate = $request->locate_id;
        $prefecture = $request->prefecture_id;
        if($prefecture == 0){
            $item = DB::select("select * from hotel where locate_id = $locate");
            return view('sample/sample2',['items'=>$item]);
        }else{
            $item = DB::select("select * from hotel where prefecture_id = $prefecture");
            return view('sample/sample2',['items'=>$item]);
        }
    }
}
