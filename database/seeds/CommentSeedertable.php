<?php

use App\Comment;
use Illuminate\Database\Seeder;

class CommentSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Comment::class,10)->create();
    }
}
