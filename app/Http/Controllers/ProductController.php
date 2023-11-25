<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // $products = Product::orderBy('id', 'asc')->get();
        // //return $products;
        // return view('dashboard', compact('products'));
        $products = Product::paginate(10); // Adjust the number as per your requirement

        return view('dashboard', compact('products'));
        
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
        $request->validate([
            "name" => "required|string",
            "quantity" => "required|numeric",
            "price" => "required|numeric"
        ]);

        // $product = new Product([
        //     "name" => $request->get("name"),
        //     "quantity" => $request->get("quantity"),
        //     "price" => $request->get("price")
            
        // ]);

        $product = new Product();
        $product->name = $request->name;
        $product->quantity  = $request->quantity;
        $product->price  = $request->price;

        $product->save();
        return redirect()->back()->with("message", "Product Added Successfully");
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $product = Product::find($id);
        if (!is_null($product)) {
            return view('view', compact('product'));
        } 
        else {
            return redirect()->route('dashboard')->with('errors', 'Product not found');
        }
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {




        $product = Product::find($id);
        if (!is_null($product)) {
            return view('edit', compact('product'));
        } 
        else {
            return redirect()->route('dashboard')->with('errors', 'Product not found');
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $request->validate([
            "name" => "required|string",
            "quantity" => "required|numeric",
            "price" => "required|numeric"
        ]);



        $product = Product::find($id);
        if (!is_null($product)) {
            $product->name   = $request->name;
            $product->quantity  = $request->quantity;
            $product->price  = $request->price;

            $product->save();
            return redirect()->route('dashboard');
        } else {
        }
            

        
        
    }

    /**
     * Remove the specified resource from storage.
     */


     public function destroy(Request $request, string $id)
    {
        $product = Product::find($id);
        if (!is_null($product)) {
            
            $product->delete();



            return redirect()->route('dashboard');
        } else {
    
            return redirect()->route('dashboard');
        }
    }
}
