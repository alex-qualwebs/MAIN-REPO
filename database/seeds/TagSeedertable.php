<?php

use App\tag;
use Illuminate\Database\Seeder;

class TagSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\tag::class, 5)->create();
    }
}
