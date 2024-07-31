<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;
use App\Models\Cart;
use App\Models\Borrows;
use App\Models\BorrowsList;
use Carbon\Carbon;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Exception;


class TransactionController extends Controller
{
    public function requestBorrow(Request $request) {
        $bookId = $request->bookData;
        $clientId = $request->clientData;

        $cart = new Cart();
        $cart->client_id = $clientId;
        $cart->book_id = $bookId;
        $cart->save();

        $data = ['status' => 'saved'];


        return response()->json([
            "success" => "cart created successfully.",
            "cart" => $cart,
            "status" => 200
        ]);
    }

    public function retrieveCart() {
        $query = "
        SELECT cc.id, b.id AS book_id, b.title, au.lname, au.fname, b.genre, b.language FROM books b INNER JOIN client_cart cc ON b.id=cc.book_id INNER JOIN client cl ON cl.id=cc.client_id INNER JOIN authors au ON au.id=b.author_id;
    ";
    
    $data = DB::select($query);
    
    return response()->json($data);
    }

    public function profile() {
        return view('client.profile');
    }

    public function transact(Request $request)
{
    $records = Cart::all(); // Assuming Cart is your model for cart items
    
    DB::beginTransaction();

    try {
        // Create a new Borrows record
        $borrowInfo = new Borrows();
        $borrowInfo->client_id = Auth::user()->id;
        $borrowInfo->date_borrowed = Carbon::now()->format('Y-m-d H:i:s');
        $borrowInfo->date_returned = null;
        $borrowInfo->status = 'Request Pending';
        $borrowInfo->save(); // Save the $borrowInfo first to generate the ID

        $borrowLists = [];

        foreach ($records as $record) {
            $borrowList = new BorrowsList();
            $borrowList->borrows_id = $borrowInfo->id; // Assign the newly created $borrowInfo->id
            $borrowList->book_id = $record->book_id;
            $borrowList->save();
            
            // Collect the $borrowList instance
            $borrowLists[] = $borrowList;
            $cart = Cart::find($record->id);

            if ($cart) {
                $cart->delete();
                // Optionally handle deletion success or return response
            } else {
                // Handle case where user with id 1 is not found
            }
        }

        DB::commit();

        return response()->json([
            "success" => "Borrow transaction completed successfully.",
            "borrowInfo" => $borrowInfo,
            "borrowLists" => $borrowLists,
            "status" => 200
        ]);
    } catch (Exception $e) {
        DB::rollback();

        // Handle exceptions and construct error message
        $errorMessage = "Failed to create borrow transaction: " . $e->getMessage();

        // Check if user is authenticated and append user information to error message
        if (Auth::check()) {
            $authenticatedUser = Auth::user();
            $errorMessage .= " - User: " . $authenticatedUser->name; // Example: Concatenate user's name
        } else {
            $errorMessage .= " - User not authenticated"; // Example: Handle case where user is not authenticated
        }

        return response()->json([
            "error" => $errorMessage,
            "status" => 500
        ]);
    }
    }

    public function retrieveBorrow($id) {
        $query = "
            SELECT * FROM borrows 
            WHERE client_id = " . $id . "
            ORDER BY id DESC
        ";
    
        $data = DB::select($query);
        
        return response()->json($data);
    }

    public function retrieveBorrowedBooks($id) {
        $query = "
        SELECT * FROM borrow_list bl INNER JOIN books b ON b.id=bl.book_id where borrows_id=".$id."
        ";
    
        $data = DB::select($query);
        
        return response()->json($data);
    }

    public function checkAvailability($id) {
        $query = "
        SELECT DISTINCT bs.id FROM books bs INNER JOIN borrow_list bl ON bs.id=bl.book_id INNER JOIN borrows bss ON bss.id=bl.borrows_id WHERE bs.id=".$id." AND bss.status='Request Approved';
        ";
    
        $data = DB::select($query);
        
        return response()->json($data);
    }

    public function removeCart($id) {
        $cart = Cart::findOrFail($id);
        $cart->delete();
		$data = array('success' => 'deleted','code'=>200);
        return response()->json($data);
    }
}
