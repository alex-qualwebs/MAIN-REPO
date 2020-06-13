<?php

use App\Contry;
use Illuminate\Database\Seeder;

class ContrySeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Contry::class, 3)->create();
    }
}
