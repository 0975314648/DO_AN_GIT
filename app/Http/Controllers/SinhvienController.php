<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MonHoc;

class SinhVienController extends Controller
{
    //
    function monhoc()
    {
    	$monhoc = MonHoc::all();
    	dd($monhoc);
    	return view('sinhvien.diemdanh',compact('monhoc'));
    }
}
