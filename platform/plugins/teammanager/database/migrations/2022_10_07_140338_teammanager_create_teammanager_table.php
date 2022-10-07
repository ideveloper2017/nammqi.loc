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
        Schema::create('teammanagers', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->string('status', 60)->default('published');
            $table->timestamps();
        });

        Schema::create('teammanagers_translations', function (Blueprint $table) {
            $table->string('lang_code');
            $table->integer('teammanagers_id');
            $table->string('name', 255)->nullable();

            $table->primary(['lang_code', 'teammanagers_id'], 'teammanagers_translations_primary');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('teammanagers');
        Schema::dropIfExists('teammanagers_translations');
    }
};
