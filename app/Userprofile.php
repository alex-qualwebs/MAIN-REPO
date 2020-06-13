<?php

namespace App;

use App\User;
use Illuminate\Database\Eloquent\Model;

class Userprofile extends Model
{
     
    public function User()
   {
     return $this->belongsTo(User::class,'user_id','id');
   }
  
   public function Contry()
    {
        return $this->hasOneThrough(Contry::class,Userprofile::class,'user_id','id','contry_id','user_id');
    }
   
   

}
    