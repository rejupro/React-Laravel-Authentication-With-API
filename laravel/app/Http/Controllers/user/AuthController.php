<?php

namespace App\Http\Controllers\user;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Auth;
use App\Models\User;

use App\Http\Requests\RegisterRequest;
use DB;
use Illuminate\Support\Facades\Hash;

class AuthController extends Controller
{

    // Login
    public function login(Request $request){

        $validated = $request->validate([
            'email' => 'required',
            'password' => 'required',
        ]);

        try{

            if (Auth::attempt($request->only('email','password'))) {

                $newUser = Auth::user();
                $token = $newUser->createToken('app')->accessToken;
                return response([
                    'message' => "Successfully Login",
                    'token' => $token,
                    'user' => $newUser
                ],200); // States Code
            }

        }catch(Exception $exception){
            return response([
                'message' => $exception->getMessage()
            ],400);
        }
        return response([
            'message' => 'Sorry! Invalid Email Or Password' 
        ],401);

    } // end method 


    // Registration
    public function register(Request $request){

        try{

            $newUser = User::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password) 
            ]);

            $token = $newUser->createToken('app')->accessToken;

            return response([
                'message' => "Registration Successfull",
                'token' => $token,
                'user' => $newUser
            ],200);

            }catch(Exception $exception){
                return response([
                    'message' => $exception->getMessage()
                ],400);
            }




    } // end mehtod 
}
