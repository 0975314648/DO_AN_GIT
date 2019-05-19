<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class KhoaHoc extends Model
{
    protected $table = "KhoaHoc";

    public function lop()
    {
    	return $this->hasMany('App\Lop','id_khoahoc','id_lop');
    }
}
