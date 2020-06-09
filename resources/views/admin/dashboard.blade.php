@extends('layouts.app')

@section('content')


<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Admin Dashboard</div>

                <div class="panel-body">
                    You are logged in!
                </div>
                <div class="card">
                     @if(session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif
            <div class="card-header">
                <h1>Upload image</h1>
            </div>
            <div class="card-body">
                <div class="form">
               <form method="post" action="upload" enctype="multipart/form-data">
                @csrf
                {{  $errors->first('uploadfile') }}
                <input type="file" name="uploadfile" class="form-control">
                <br>
                <input type="submit" value="Upload" class="btn btn-success btn-lg">
                </form>
                </div>
            </div>
        </div>
            </div>
        </div>
    </div>
</div>

@endsection