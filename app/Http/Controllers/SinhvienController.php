<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\DiemDanh;
use App\Lop;
use App\Khoa;
use App\MonHoc;
use App\sinhvien;

class SinhvienController extends Controller
{
    //
    

    function monhoc()
    {
    	$monhoc = MonHoc::all();
    	dd($monhoc);
    	return view('sinhvien.diemdanh',compact('monhoc'));
    }
}
