<?php

use App\Image;
use Illuminate\Database\Seeder;

class OrderUrlSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Image::class,7)->create();
    }
}
