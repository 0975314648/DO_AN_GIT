<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\MonHoc;
use DB;
use Roles;
use Illuminate\Support\Facades\Input;

class SinhVienController extends Controller
{
    //
    function monhoc()
    {
        $monhoc = MonHoc::all();
        return view('sinhvien.diemdanh',compact('monhoc'));
    }
}
