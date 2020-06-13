<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Image;
use Faker\Generator as Faker;
use Illuminate\Support\Arr;

$factory->define(Image::class, function (Faker $faker) {
    return [
        
        'imageable_id' =>Arr::random([1,2,3]),
        'imageable_type'=>"App\User" ,
        'url' => $faker->imageUrl($width = 640, $height = 480),
        
    ];
});
