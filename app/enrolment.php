<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class enrolment extends Model
{
  protected $fillable = [
      'class', 'mobile_no',
  ];
}
