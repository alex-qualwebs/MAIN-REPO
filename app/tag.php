<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class tag extends Model
{
    protected $guarded = [];

     public function Orders()
    {
        return $this->morphedByMany('App\Order', 'taggable');
    }

     public function Videos()
    {
        return $this->morphedByMany('App\Video', 'taggable');
    }


}
