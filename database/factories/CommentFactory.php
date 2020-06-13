<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Comment;
use Faker\Generator as Faker;
use Illuminate\Support\Str;
use Illuminate\Support\Arr;

$factory->define(Comment::class, function (Faker $faker) {
    return [
        
        'commentable_id' =>Arr::random([1,2,3,4,5,6,7]),
        'commentable_type'=>"App\Video" ,
        'body' =>Str::random(10),
    ];
});
