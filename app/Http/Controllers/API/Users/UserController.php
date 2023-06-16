<?php

namespace App\Http\Controllers\API\Users;

use Exception;
use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {

        $user = User::all();

        return response()->json([
            'status' => 200,
            'message' => 'User fetched successfully!',
            'userData' => $user
        ]);
    }

    public function updateUser(Request $request)
    {

        $password = $request->password;
        $data = [
            'name' => $request->name,
            'email' => $request->email,
        ];
        try {
            if($password) {
                User::where('email', $data['email'])->update(['password' => Hash::make($password)]);
            }
            
            $user = Auth::user();
            $user->update($data);

            return response()->json([
                'status' => 200,
                'message' => 'Data berhasil diubah'
            ]);
        } catch (Exception $error) {
            return response()->json([
                'status' => $error->getCode(),
                'message' => $error->getMessage()
            ]);
        }
    }
}
