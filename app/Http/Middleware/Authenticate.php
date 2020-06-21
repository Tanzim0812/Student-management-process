<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Auth;
class Authenticate extends Middleware
{
    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return string|null
     */
     public function handle($request, Closure $next)
     {
         // if ($this->auth->guest())
         // {
         //     if ($request->ajax())
         //     {
         //         return response('Unauthorized.', 401);
         //     }
         //     else
         //     {
         //         return redirect()->guest('auth/login');
         //     }
         // }
         // return Auth::attempt(['token' => $request->token]);
         // return  auth();
         // return $request;
         if(\App\TokenStore::where('auth_token',$request->header('Authorization'))->count()){
           return $next($request);

           //$header = $request->header('Authorization');

         }
         return response()->json(['message' => 'unauthenticated']);
     }
    // protected function redirectTo($request)
    // {
    //     if (! $request->expectsJson()) {
    //         return route('login');
    //     }
    // }
}
