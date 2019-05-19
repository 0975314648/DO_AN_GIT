<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Lop extends Model
{
    protected $table = "Lop";

    public function khoa()
    {
    	return $this->belongsTo('App\Khoa','id_khoa','id_lop');
    }

    public function sinhvien()
    {
    	return $this->hasMany('App\SinhVien','id_lop','id_sv');
    }
}
