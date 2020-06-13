<?php

use App\Userprofile;
use Illuminate\Database\Seeder;

class ProfileSeedertable extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
       factory(App\Userprofile::class, 3)->create();
    }
}
