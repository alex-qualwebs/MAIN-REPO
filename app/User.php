<?php

namespace App;

use App\Order;
use App\Role;
use App\Userprofile;
use Illuminate\Contracts\Auth\CanResetPassword;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;


class User extends Authenticatable implements  MustVerifyEmail
{
    use HasApiTokens,Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password','role_id'
    ];




    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    // protected static function boot()
    // {   
    //     parent::boot();
    //     static::addGlobalScope('vfu', function (Builder $builder) {
    //         return $builder->where('role_id','=', 2);
    //     });

    //     static::addGlobalScope('nvfu', function (Builder $builder) {
    //         return $builder->where('role_id','>', 1);
    //     });
    // }


    // public function ScopeFindById($query,$id)
    // {
    //      return $query->where('name','like',"%$id");
    // }

   public function Profile()
   {
      return $this->hasOne(Userprofile::class);
   }

   public function Orders()
   {
     return $this->hasMany(Order::class,'user_id','id');
   }

   public function Roles()
   {
      return $this->belongsToMany(Role::class,'role_user','user_id','role_id')->withTimestamps();

      //withPivot('column1', 'column2');
      //as('nameofthepivot') to access intermiddiat using name other than pivot
   }

    public function image()
    {
        return $this->morphOne('App\Image', 'imageable');
    }

    


}
