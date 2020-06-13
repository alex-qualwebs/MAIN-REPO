<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColomnForContryIdInUserProfiles extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('Userprofiles', function (Blueprint $table) {
            
            $table->BigInteger('contry_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('Userprofiles', function (Blueprint $table) {
            
            $table->dropColomn('contry_id');
            
        });
    }
}
