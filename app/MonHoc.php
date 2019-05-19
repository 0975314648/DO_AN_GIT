<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class MonHoc extends Model
{
    //
    protected $table = MonHoc;

    public function khoa()
    {
    	return $this->hasManyThrough('App\Khoa','id_khoa','id_monhoc');
    }
}
