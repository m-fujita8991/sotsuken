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
            return view('sotuken/index',['items'=>$item]);
        }else{
            $item = DB::select("select * from hotel where prefecture_id = '$prefecture'");
            return view('sotuken/index',['items'=>$item]);
        }
    }
}
