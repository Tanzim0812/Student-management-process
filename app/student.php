<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class student extends Model
{
  protected $fillable = [
      'subject_name','name','roll','address','email','password',
  ];
}
