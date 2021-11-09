<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateActivityTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('activity', function (Blueprint $table) {
            $table->bigIncrements('id');

            $table->integer('activitytype_id')->nullable();
            $table->integer('activitysubtype1_id')->nullable();
            $table->integer('activitysubtype2_id')->nullable();
            $table->integer('activitysubtype3_id')->nullable();

            $table->string('name')->nullable();

            $table->text('subject')->nullable();
            $table->text('description')->nullable();
            $table->text('resolution')->nullable();

            $table->string('image')->nullable();
            $table->dateTime('startdt')->nullable();
            $table->dateTime('enddt')->nullable();

            $table->bigInteger('enduser_id')->nullable();
            $table->bigInteger('enduserdept_id')->nullable();
            $table->bigInteger('technician_id')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('activity');
    }
}
