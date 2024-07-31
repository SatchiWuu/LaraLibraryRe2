<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
use App\Models\Borrows;

class AdminController extends Controller
{
    public function pendings() {
        return view('admin.requests');
    }

    public function dashboard() {
        return view('admin.dashboard');
    }

    public function retrieveAllBorrow() {

        $query = "
        SELECT bs.status, bs.id, cl.lname, cl.fname, bs.date_borrowed, bs.created_at FROM borrows bs INNER JOIN client cl ON cl.id=bs.client_id
        ";
    
        $data = DB::select($query);
        
        return response()->json($data);
        
    }

    public function confirmRequest($id) {
        $borrows = Borrows::find($id);
        $borrows->status = "Request Approved";
        $borrows->save();

        return response()->json([
            "success" => "borrows update successfully.",
            "borrows" => $borrows,
            "status" => 200
        ]);
    }

    public function confirmReturn($id) {
        $borrows = Borrows::find($id);
        $borrows->status = "Books Returned";
        $borrows->save();

        return response()->json([
            "success" => "borrows update successfully.",
            "borrows" => $borrows,
            "status" => 200
        ]);
    }
    

    public function retrieveTopAuthors() {
        $query = "
        SELECT 
            au.lname AS last_name, 
            au.fname AS first_name, 
            AVG(bs.reviews) AS average_review, 
            MAX(bs.reviews) AS highest_review, 
            (SELECT title FROM books WHERE author_id = au.id ORDER BY reviews DESC LIMIT 1) AS highest_review_book,
            CONCAT(au.fname, ' ', au.lname) AS label,
            AVG(bs.reviews) AS y
        FROM 
            books bs
        INNER JOIN 
            authors au ON au.id = bs.author_id
        GROUP BY 
            au.id, au.lname, au.fname
        ORDER BY 
            average_review DESC
        LIMIT 10;

        ";

        $data = DB::select($query);

        return response()->json($data);
    }

    public function retrieveTopGenre() {
        $query = "
        SELECT bs.genre AS indexLabel, COUNT(bl.book_id) AS y, COUNT(bl.book_id) AS label  FROM books bs INNER JOIN borrow_list bl ON bs.id = bl.book_id GROUP BY bs.genre ORDER BY y DESC LIMIT 10;
        ";

        $data = DB::select($query);

        return response()->json($data);
    }

    public function retrieveTopBooks() {
        $query = "
        SELECT bs.title AS label, COUNT(bl.book_id) AS y
        FROM books bs
        INNER JOIN borrow_list bl ON bs.id = bl.book_id
        GROUP BY bs.title
        ORDER BY y DESC
        LIMIT 5;
        ";

        $data = DB::select($query);

        return response()->json($data);
    }
}
