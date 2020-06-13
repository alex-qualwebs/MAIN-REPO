<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Contry;
use Faker\Generator as Faker;

$factory->define(Contry::class, function (Faker $faker) {
    return [
        
        'code' =>$faker->countryCode ,
        'name' =>$faker->country
    ];
});
