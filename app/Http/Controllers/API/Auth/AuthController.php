<?php

namespace App\Http\Controllers\API\Auth;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Laravel\Sanctum\PersonalAccessToken;

class AuthController extends Controller
{
    public function authLogin(Request $request)
    {
        $credentials = $request->only('email', 'password');

        try {
            if (!Auth::attempt($credentials)) {
                return response()->json(['message' => 'Unauthorized'], 401);
            }

            $user = User::where('email', $credentials['email'])->first();
            $token = $user->createToken('accessToken')->plainTextToken;
            return response()->json([
                'status' => 200,
                'message' => 'Login successfully!',
                'accessToken' => $token,
                'userData' => $user
            ]);
        } catch (Exception $error) {
            return response()->json([
                'status' => $error->getCode(),
                'messafe' => $error->getMessage()
            ]);
        }
    }

    public function register(Request $request)
    {
        $credentials = $request->only('name', 'email', 'password');

        try {
            $user = User::create($credentials);
            return response()->json([
                'status' => 200,
                "message" => "Registrasi berhasil!",
                'data' => $user
            ]);
        } catch (Exception $error) {
            return response()->json([
                'status' => $error->getCode(),
                'message' => $error->getMessage()
            ]);
        }
    }

    public function logout(Request $request)
    {
        $token = $request->bearerToken();
        $currentToken = PersonalAccessToken::findToken($token);
        $currentToken->delete();
        return response()->json([
            'status' => 200,
            'message' => 'User logout successfully!'
        ]);
        // session()->flush();

        // return redirect()->to('/');
    }
}
