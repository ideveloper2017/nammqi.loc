<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

return new class extends Migration {
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('ims', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('ims_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('ims_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'ims_id'], 'ims_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('ims');
        Schema::dropIfExists('ims_translations');
    }
};
