<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TokenStore extends Model
{
    //
    protected $table = "token_store";
    protected $fillable = ['user_id','auth_token'];
}
