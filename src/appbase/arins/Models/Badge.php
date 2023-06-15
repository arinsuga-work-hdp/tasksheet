<?php

namespace Arins\Models;

use Illuminate\Database\Eloquent\Model;

class Badge extends Model
{
    protected $table = 'badge';

    protected $fillable = [
        'user_id',
        'badgeno',
    ];

    protected $dates = [
        'created_at',
        'updated_at'
    ];


    public function user() {
        return $this->belongsTo('App\User');
    }        

}
