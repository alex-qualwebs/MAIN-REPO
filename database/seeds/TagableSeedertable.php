<?php

use Illuminate\Database\Seeder;

class TagableSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\taggable::class,5)->create();
    }
}
