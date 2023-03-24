<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\ValidationException;
use Illuminate\Support\Facades\Validator;
use Session;

class AuthenticationController extends Controller
{

    public function createAccount(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|unique:users,email',
            'password' => 'required|string|min:6|confirmed'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $user = User::create([
            'name' => $request['name'],
            'password' => bcrypt($request['password']),
            'email' => $request['email']
        ]);

        return [
            'user' => $user,
            'registraion' => "success",
            'token' => $user->createToken('API Token')->plainTextToken
        ];
    }



    //this method to signin users
    public function signIn(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'bail|required|string|email|',
            'password' => 'required|string|min:6'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $user= User::where('email', $request->email)->first();
        if (!$user || !Hash::check($request->password, $user->password)) {
            // throw ValidationException::withMessages([
            //     'message' => ['The provided credentials are incorrect.'],
            // ]);
            return response([
                'message' => ['These credentials do not match our records.']
            ], 404);
        }

        if (!Auth::attempt($request->all())) {
            return ['Credentials not match', 401];
        }
        
        // $token = $user->createToken('my-app-token')->plainTextToken;
        $token = auth()->user()->createToken('API Token')->plainTextToken;
        $response = [
            'user' => $user,
            'token' => $token
        ];
    
        return response($response, 201);
    }

    // this method signs out users by removing tokens
    public function signOut()
    {
        auth()->user()->tokens()->delete();

        return [
            'message' => 'Tokens Revoked'
        ];
    }
}
