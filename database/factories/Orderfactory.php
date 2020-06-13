<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Order;
use Faker\Generator as Faker;
use Illuminate\Support\Arr;

$factory->define(Order::class, function (Faker $faker) {
    return [

        'dish_name' =>$faker->name,
        'user_id'=>Arr::random([1, 2, 3]),
    	'qty'=>Arr::random([1, 2, 3]),
        'dish_basic_price' =>Arr::random([100, 200, 300]),
        
    ];
});
