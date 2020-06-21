<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class course extends Model
{
  protected $fillable = [
      'class_id', 'subject_name','subject_code',
  ];
}
