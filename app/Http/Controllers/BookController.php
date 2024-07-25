<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Book;
use DB;

class BookController extends Controller
{
    public function search($query) {
        $books = Book::search($query)->get();
        return $books;
    }

    public function searchableAs(): string {
        return 'mybooks_index';
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $data = Book::orderBy('id', 'DESC')
            ->with('author:id,fname,lname')
            ->with('publisher:id,name')
            ->get();

        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $book = new  Book();

        $book->title = $request->title;

        $book->publication = $request->publication;
        $book->genre= $request->genre;
        $book->language = $request->language;
        $book->reviews = $request->reviews;
        $book->summary = $request->summary;

        $book->author_id = $request->authorBox;
        $book->publisher_id = $request->publisherBox;

        if($book->image_path == null) {
            if(request()->has('image_upload')){
                // $imagePath = request()->file('image')->store('product', 'public');
                $book->images = request()->file('image_upload')->store('images', 'public');
            }
        } else {
            if(request()->has('image_upload')){
                $image_path = $book->images;
                Storage::delete('public/'.$image_path);
                $book->images = request()->file('image_upload')->store('images', 'public');
            }
        }

        // $files = $request->file('image_upload');
        // $author->images = 'storage/images/' . $files->getClientOriginalName();
        $book->save();
        $data = ['status' => 'saved'];


        return response()->json([
            "success" => "Book created successfully.",
            "book" => $book,
            "status" => 200
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $book = Book::with(['author:id,fname,lname', 'publisher:id,name'])
            ->where('id', $id)
            ->first();
        return response()->json($book);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $book = Book::find($id);
        $book->title = $request->title;

        $book->publication = $request->publication;
        $book->genre= $request->genre;
        $book->language = $request->language;
        $book->reviews = $request->reviews;
        $book->summary = $request->summary;

        $book->author_id = $request->authorBox;
        $book->publisher_id = $request->publisherBox;

        if($book->image_path == null) {
            if(request()->has('image_upload')){
                // $imagePath = request()->file('image')->store('product', 'public');
                $book->images = request()->file('image_upload')->store('images', 'public');
            }
        } else {
            if(request()->has('image_upload')){
                $image_path = $book->images;
                Storage::delete('public/'.$image_path);
                $book->images = request()->file('image_upload')->store('images', 'public');
            }
        }

        // $files = $request->file('image_upload');
        // $author->images = 'storage/images/' . $files->getClientOriginalName();
        $book->save();

        return response()->json([
            "success" => "Book update successfully.",
            "Book" => $book,
            "status" => 200
        ]);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $book = Book::findOrFail($id);
        $book->delete();
		$data = array('success' => 'deleted','code'=>200);
        return response()->json($data);
    }

    public function bookDetails() {
        $query = "
        SELECT b.id, b.title, b.genre, b.summary, b.language, au.lname, au.fname, b.images
        FROM books b
        INNER JOIN authors au ON au.id = b.author_id
        INNER JOIN publisher p ON p.id = b.publisher_id
    ";
    
    $data = DB::select($query);
    
    return response()->json($data);
    }
}
