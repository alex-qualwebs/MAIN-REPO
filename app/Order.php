<?php

namespace App;

use App\Contry;
use App\User;
use App\Userprofile;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Order extends Model
{
  use SoftDeletes;
  
  protected $fillable = ['dish_name','dish_basic_price' ,'qty']; 


  public function User()
  {
  	 return $this->belongsTo(User::class,'user_id','id');
  }

   public function ScopeFindByUserId($query,$id)
    {
         return $query->where('user_id','=',$id);
    }

  public function Profile()
  {
     return $this->hasOneThrough(Userprofile::class,User::class,'id','user_id','user_id','id');
  }

     public function image()
    {
        return $this->morphOne('App\Image', 'imageable');
    }

      public function comments()
    {
        return $this->morphMany('App\Comment', 'commentable');
    }

     public function tags()
    {
        return $this->morphToMany('App\tag', 'taggable');
    }

    
    

}
