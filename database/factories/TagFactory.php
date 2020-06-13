<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\tag;
use Faker\Generator as Faker;
use Illuminate\Support\Str;

$factory->define(tag::class, function (Faker $faker) {
    return [
       
       'name' =>Str::random(4)
    ];
});
