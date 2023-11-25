<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>



    <!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>



<div class="py-12">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900">

















<section>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <form action="{{route('product.update', $product->id)}}"  method="POST" enctype="multipart/form-data">
                    @csrf




                    <div>
                        <a href="{{ route('dashboard') }}" class="btn btn-primary mb-5">Dashboard Page</a>
                    </div>

                    <div class="col-12">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-control" value="{{$product->name}}" placeholder="Product Name...">
                    </div>

                    <div class="col-12">
                        <label class="form-label">Quantity</label>
                        <input type="text" name="quantity" class="form-control" value="{{$product->quantity}}" placeholder="Quantity...">
                    </div>

                    <div class="col-12">
                        <label class="form-label">Price</label>
                        <input type="text" name="price" class="form-control" value="{{$product->price}}" placeholder="Price...">
                    </div>


                    <div>
                        <button type="submit" class="btn btn-primary mt-5">Update</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
</section>














</div>
</div>
</div>
</div>





<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>





</x-app-layout>