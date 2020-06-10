@extends('layouts.app')

@section('content')


<div class="container  well">
    <div class="card">
    <div class="card-header text-center bg-dark text-white">
        <h1>Welcome To User Dashboard</h1>
    </div>
    
        <div class="cardbody jumbotron">
            <div style="float:right;">
        <a href="upload" class="btn btn-success btn-lg">Upload Image</a>
    </div>
            <table class="table">
                <thead>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>ROLE</th>
                </thead>
                @foreach($data as $users)
                <tbody>
                    <tr>
                        <td>{{$users->id}}</td>
                        <td>{{$users->name}}</td>
                        <td>{{$users->email}}</td>
                        <td>{{$users->nickname }}</td>
                    </tr>
                </tbody>
                @endforeach
            </table>
          {{ $data->links() }}
               </div>
   
    </div>
</div>



@endsection