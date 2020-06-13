<?php

use App\Video;
use Illuminate\Database\Seeder;

class VideoSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Video::class,10)->create();
    }
}
