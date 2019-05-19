<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class SinhVien extends Model
{
    protected $table = "SinhVien";

    public function lop()
    {
    	return $this->belongsTo('App\Lop','id_lop','id_sv');
    }
}
