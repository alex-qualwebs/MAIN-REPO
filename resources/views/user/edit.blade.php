@extends('layouts.app')

@section('content')


<div class="container col-lg-4">
    <div class="card">
       <div class="card-header bg-dark text-white">
           EDIT-MENU
       </div>
        <div class="cardbody jumbotron">
          <form class="form" method="post" action="update">
             @csrf
           <tr><th>DISH-NAME</th><td> <input type="text" value="{{ $data->dish_name }}" name="dish_name" class="form-control"></td></tr>  
              <br>
              <tr><th>QTY</th><td><input type="text" readonly="" value="{{ $data->qty }}" name="qty" class="form-control"></td></tr>  
              <br>
              <input type="hidden" name="id" value="{{ $data->id }}">
          
              <tr><th>PRICE</th><td><input type="text" name="dish_basic_price"  value="{{ $data->dish_basic_price }}" class="form-control"></tr>  
              <br>
              <input type="submit" value="UPDATE" class="btn btn-success btn-lg" >
          </form>
        </div>
          
      </div>
</div>



@endsection