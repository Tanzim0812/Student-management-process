<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\User;


class Authcontroller extends Controller
{


  public function __construct()
  {
      $this->middleware('auth:api', ['except' => ['login','register']]);
  }

  /**
   * Get a JWT via given credentials.
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function login()
  {
      $credentials = request(['email', 'password']);

      if (! $token = auth()->attempt($credentials)) {
          return response()->json(['error' => 'Email or Password invalid'], 401);
      }
      \App\TokenStore::create([
        'user_id' => auth()->user()->id,
        'auth_token' => $token,
     ]);
      return $this->respondWithToken($token);
  }

  /**
   * Get the authenticated User.
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function me()
  {
      return response()->json(auth()->user());
  }

  /**
   * Log the user out (Invalidate the token).
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function logout()
  {
      // auth()->logout();
      \App\TokenStore::where('user_id', auth()->user()->id)->delete();
      return response()->json(['message' => 'Successfully logged out']);
  }

  /**
   * Refresh a token.
   *
   * @return \Illuminate\Http\JsonResponse
   */
  public function refresh()
  {
      return $this->respondWithToken(auth()->refresh());
  }

  /**
   * Get the token array structure.
   *
   * @param  string $token
   *
   * @return \Illuminate\Http\JsonResponse
   */
  protected function respondWithToken($token)
  {
      return response()->json([
          'access_token' => $token,
          'token_type' => 'bearer',
          'expires_in' => auth()->factory()->getTTL() * 60
      ]);
  }
  public function payload(){
    return auth()->payload();
  }


  public function register(Request $request){

    $validatedData = $request->validate([
      'name' => 'required',
      'email' => 'required',
      'password' => 'required',

  ]);

  $data=array();
  $data['name']=$request->name;
  $data['email']=$request->email;
  $data['password']=Hash::make($request->password);


  User::create($data);
     return $this->login($request);

  }

}
