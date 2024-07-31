<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\Client;
use Storage;
use Carbon\Carbon;
use Illuminate\Support\Facades\Auth;
use DB;

use Illuminate\Http\Request;

class UserController extends Controller
{
    public function register()
    {
        return view('client.register');
    }

    public function login()
    {
        return view('client.login');
    }

    public function save_login(Request $request)
    {
        $email = $request->email;
        $password = $request->password;

        if (auth()->attempt(array('email' => $email, 'password' => $password))) {
            $credentials = $request->only('email', 'password');

            if (Auth::attempt($credentials)) {
                $user = Auth::user();
                $token = $user->createToken('authToken')->plainTextToken;

                return response()->json([
                    'access_token' => $token,
                    'token_type' => 'Bearer',
                ]);
            }
        } else {
            return response()->json([[3]]);
        }
    }

    public function save_register(Request $request)
    {
        DB::beginTransaction();

        try {
            // Create new Client
            $client = new Client();
            $client->lname = $request->lname;
            $client->fname = $request->fname;
            $client->address = $request->addressline;
            $client->phone = $request->phone;
            $client->age = $request->age;
            $client->gender = $request->gender;

            if ($request->hasFile('image_upload')) {
                $file = $request->file('image_upload');
                $filePath = 'images/' . $file->getClientOriginalName();
                $client->images = $filePath;
                Storage::put('public/' . $filePath, file_get_contents($file));
            }

            $client->created_at = Carbon::now()->format('Y-m-d H:i:s');
            $client->updated_at = Carbon::now()->format('Y-m-d H:i:s');
            $client->save();

            // Create new User with client_id
            $user = new User([
                'name' => $request->fname . ' ' . $request->lname,
                'email' => $request->email,
                'password' => bcrypt($request->input('password')),
                'role' => 1,
                'client_id' => $client->id // Assign client_id to User
            ]);
            $user->save();

            // Commit transaction
            DB::commit();

            return response()->json([
                "success" => "Customer created successfully.",
                "client" => $client,
                "user" => $user,
                "status" => 200
            ]);
        } catch (\Exception $e) {
            // Rollback transaction on error
            DB::rollback();

            return response()->json([
                "error" => "Failed to create customer: " . $e->getMessage(),
                "status" => 500
            ]);
        }
    }

    public function logout(Request $request)
    {
        $user = Auth::user();
        if ($user) {
            $user->tokens()->delete(); // Revoke all tokens

            Auth::logout(); // Logout the user from the session
            $request->session()->invalidate();
            $request->session()->regenerateToken();
        }

        return view('client.login');
    }
}
