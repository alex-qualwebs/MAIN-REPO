<?php

use Illuminate\Database\Seeder;

class OrderSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        factory(App\Order::class,15)->create();
    }
}
