<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student extends Model
{
  protected $fillable = [
      'class_id','name','roll','address','email','password',
  ];
}
