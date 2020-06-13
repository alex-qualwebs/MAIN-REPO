@extends('layouts.app')

@section('content')


<div class="container">
    <div class="card">
    
      <div class="card-header">
        <h1>ORDER-MENU(admin)</h1>
    </div> 
        <div class="cardbody jumbotron">
         
            <table class="table">
                <thead>
                    <th>ID</th>
                    <th>DISH-NAME</th>
                    <th>QTY</th>
                    <th>PRICE</th>
                    <th>ACTION</th>
                </thead>
                @foreach($data as $users)
                <tbody>
                    <tr>
                        <td>{{$users->id}}</td>
                        <td>{{$users->dish_name}}</td>
                        <td>{{ $users->qty }}</td>
                        <td>{{$users->dish_basic_price}}</td>
                        <td><a class="btn btn-info" href="menu_edit/{{ $users->id }}">EDIT</a>
                        <a class="btn btn-danger" href="menu_delete/{{ $users->id }}">DELETE</a></td>
                    </tr>
                </tbody>
                @endforeach
            </table>
                         </div>
   
    </div>
</div>



@endsection