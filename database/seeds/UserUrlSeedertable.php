<?php

use Illuminate\Database\Seeder;

class UserUrlSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Image::class,3)->create();
    }
}
