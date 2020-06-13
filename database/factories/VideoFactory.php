<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Video;
use Faker\Generator as Faker;

$factory->define(Video::class, function (Faker $faker) {
    return [
        
        'url'=>$faker->imageUrl($width = 640, $height = 480)
    ];
});
