<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('borrow_list', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('borrows_id');
            $table->unsignedBigInteger('book_id');

            $table->foreign('borrows_id')->on('borrows')->references('id');
            $table->foreign('book_id')->on('books')->references('id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('borrow_list');
    }
};
