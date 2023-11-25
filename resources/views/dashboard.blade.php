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
    <title>Dashboard Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
  </head>
  <body>




<div class="py-12">
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
            <div class="p-6 text-gray-900">



@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@if(Session::has("message"))
    <div class="alert alert-success">
        {{ Session::get("message") }}
    </div>
@endif








                        <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary float-end" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Add Product
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Modal title</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                            </div>






                            <div class="modal-body">
                                


                                <form method="POST" action="{{ route('product.store') }}" enctype="multipart/form-data">
                                @csrf


                                <div class="mb-3">
                                    <label for="Name" class="form-label">Name</label>
                                    <input type="text" class="form-control" id="name" name="name"> 
                                </div>
                                <div class="mb-3">
                                    <label for="Quality" class="form-label">Quantity</label>
                                    <input type="number" class="form-control" id="quantity" name="quantity">
                                </div>

                                <div class="mb-3">
                                    <label for="Price" class="form-label">Price</label>
                                    <input type="number" class="form-control" id="price" name="price">
                                </div>

   
                                <button type="submit" class="btn btn-primary">Submit</button>
                                </form>




                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                
                            </div>
                            </div>
                        </div>
                        </div>








                        <div class="container">

<div class="row">
    <div class="col-md-12">
        <table class="table table-striped">
            <thead>
                <th>ID</th>
                <th>Name</th>
                <th>Quality</th>
                <th>Price</th>
                <th>Action</th>
            </thead>


            <tbody>
           
            @foreach ($products as $product)

            <tr>
                <td>{{ $product->id }}</td>
                <td>{{ $product->name }}</td>
                <td>{{ $product->quantity }}</td>
                <td>{{ $product->price }}</td>
                <td>
                    <a href="{{ route('product.view', $product->id) }}" class="btn btn-success btn-md">View</a>
                    <a href="{{ route('product.edit', $product->id) }}" class="btn btn-warning btn-md">Edit</a>
                    <a href="{{ route('product.destroy', $product->id) }}" class="btn btn-danger btn-md">Delete</a>
                </td>

            </tr>
        
            @endforeach

            </tbody>




        </table>
<!-- Pagination links -->
{{ $products->links() }}



    </div>
</div>

</div>

                        









            
            
            
            </div>

        </div>
    
    </div>
</div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>
























</x-app-layout>
