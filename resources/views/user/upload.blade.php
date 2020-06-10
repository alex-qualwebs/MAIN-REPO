@extends('layouts.app')

@section('content')


<div class="container col-lg-5 well">
    
    <div class="card">
                     @if(session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif
            <div class="card-header bg-dark text-white">
                <h3>Upload image</h3>
            </div>
            <div class="card-body well">
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



@endsection