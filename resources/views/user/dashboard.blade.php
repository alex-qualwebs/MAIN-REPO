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
      <div style="float:left;">
        <a href="menu" class="btn btn-success btn-lg">ORDER-MENU</a>
    </div>
            <table class="table table-hover">
                <thead>
                    <th>SR.</th>
                    <th>NAME</th>
                    <th>EMAIL</th>
                    <th>CITY</th>
                    <th>PHONE</th>
                    <th>COUNTRY</th>
                </thead>
                @php $x=1; @endphp
                @foreach($users as $user)
                <tbody>
                   
                    <tr> 
                        <td>{{ $x }}</td>
                        <td>{{$user->name}}</td>
                        <td>{{$user->email}}</td>
                        <td>{{$user->Profile->city}}</td>
                        <td>{{$user->Profile->phone}}</td>
                        <td>{{$user->Profile->Contry->name}}</td>
                    </tr>
                 
                </tbody>
                @php $x++; @endphp
                @endforeach
            </table>
         
               </div>
   
    </div>
</div>



@endsection