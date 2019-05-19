<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Khoa extends Model
{
    protected $table = "Khoa";

    public function lop()
    {
    	return $this->hasMany('App\Lop','id_khoa','id_lop');
    }

    public function sinhvien()
    {
    	return $this->hasManyThrough('App\SinhVien','App\Lop','id_khoa','id_lop','id_sv');
    }
}
