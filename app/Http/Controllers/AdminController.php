<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customer;
use Illuminate\Support\Facades\Auth;
use DB;

class AdminController extends Controller
{
   
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
    }

       
    public function upload(Request $request)
    {
        //validate request

     $this->validate($request, [
      'uploadfile'  => 'required|image|mimes:jpeg,jpg,png,gif|max:2048'
     ]);

      //hear we get out file
      $image = $request->file('uploadfile');
      
      //neew name for the file
      $new_name = rand().".".$image->getClientOriginalExtension();
       
       //method for local upload 
      $image->move(public_path('image'),$new_name);

      // also we can use this method for upload
      // $image = $request->file('uploadfile')->store('image');


      // this way we can genrate the full path 
      // $path = public_path('image/'.$new_name);

      $id = Auth::user()->id;

      $data =  DB::table('users')->where(['id'=>$id])
                                   ->get();  
       

       //it will check and delete already available image from local system

             if(!empty($data[0]->img))
          {
            if(file_exists(public_path('image/'.$data[0]->img)))
            {
                unlink(public_path('image/'.$data[0]->img));
            }
        }
     
        //uploade the image name in to database table
        DB::table('users')->where(['id'=>$id])
                          ->update(['img'=>$new_name]);

        
        return redirect()->back()->with('success',"your image is uploaded");
    }

}
