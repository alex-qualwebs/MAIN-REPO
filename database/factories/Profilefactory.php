<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Userprofile;
use Faker\Generator as Faker;

$factory->define(Userprofile::class, function (Faker $faker) {
    return [
        
        'user_id'=>Arr::random([1, 2, 3]),
    	'phone'=>Arr::random([8435412432, 8435412431, 8435412435]),
        'city' =>Arr::random(['sanawad', 'barwaha', 'indore']),
    ];
});
