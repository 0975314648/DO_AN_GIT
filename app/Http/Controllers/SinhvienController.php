<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MonHoc;
class SinhvienController extends Controller
{
    //
    function monhoc()
    {
        $monhoc = MonHoc::all();
        return view('sinhvien.diemdanh',compact('monhoc'));
    }
}
