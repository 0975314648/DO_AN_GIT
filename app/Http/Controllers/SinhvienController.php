<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
<<<<<<< HEAD
use App\MonHoc;
class SinhvienController extends Controller
{
    //
    function monhoc()
    {
        $monhoc = MonHoc::all();
        return view('sinhvien.diemdanh',compact('monhoc'));
=======
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
>>>>>>> 0f7262e9f2b2ee93ee73aeef8472453820c19736
    }
}
