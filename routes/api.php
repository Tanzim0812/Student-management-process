<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\enrolmentcontroller;

Route::post('register', 'AuthController@register');

    Route::post('login', 'AuthController@login');

//jwt route...route should be define in browser as 'localhost::8000/api/auth/login'...etc
    Route::group([
        'middleware' => ['api','auth'],


    ], function () {
//api routes
      Route::apiResource('/enrolment','enrolmentcontroller');
      Route::apiResource('/subject','subjectcontroller');
      Route::apiResource('/student','Studentcontroller');

//auth routes
        Route::post('logout', 'AuthController@logout');
        Route::post('refresh', 'AuthController@refresh');
        Route::post('me', 'AuthController@me');
        Route::post('payload', 'AuthController@payload');




    });
