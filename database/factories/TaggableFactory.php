<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\taggable;
use Faker\Generator as Faker;

$factory->define(taggable::class, function (Faker $faker) {
    return [

    	'tag_id'=>Arr::random([1,2,3,4,5]),
    	'taggable_id'=>Arr::random([1,2,3,4,5,6,7,8]),
    	'taggable_type'=>"App\Video",
       ];
});
