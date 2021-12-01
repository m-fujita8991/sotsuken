<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class SotukenController extends Controller
{
    public function search(Request $request){
        $locate = $request->locate_id;
        $prefecture = $request->prefecture_id;
        if($prefecture == 0){
            $item = DB::select("select * from hotel where locate_id = '$locate'");
            return view('sotuken/index',['items'=>$item,'locate'=>$locate,'prefecture'=>$prefecture]);
        }else{
            $item = DB::select("select * from hotel where prefecture_id = '$prefecture'");
            return view('sotuken/index',['items'=>$item,'locate'=>$locate,'prefecture'=>$prefecture]);
        }
    }

    public function info($hotel_id){
        $params = $hotel_id;
        $item = DB::select("select * from hotel_info where hotel_id = $params");
        $work = DB::select("select * from hotel_work where hotel_id = $params");
        return view('sotuken/hotel',['items'=>$item,'works'=>$work]);
    }
}
