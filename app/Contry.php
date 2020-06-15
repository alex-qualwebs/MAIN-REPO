<?php

namespace App;

use App\Order;
use App\Userprofile;
use Illuminate\Database\Eloquent\Model;

class Contry extends Model
{
    protected $guarded = [];

   
   public function Orders()
   {
   	 return $this->hasManyThrough(Order::class,Userprofile::class,'contry_id','user_id','id','user_id');
   }

}


