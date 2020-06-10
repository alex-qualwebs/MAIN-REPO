<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\User;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class Dashboardcontroller extends Controller
{
  public function index()
	{ 
	  
     $data = DB::table('role')
                 ->JOIN('users','role.id','=','users.role_id')
                 ->paginate(5);
       
      //just use paginate method to get specific data rows
	  //use links() method on blade to create pagination
      // $data = DB::table('users')->paginate(5);


		// $data =User::simplePaginate(5);  //create only pre and next links
        // $data =User::Paginate(5)         //create all links
   

	  return view('user.dashboard',['data'=>$data]);
	}

	public function show()
	{ 
		$id = Auth::user()->id;

		$data = DB::table('users')->where(['id'=>$id])
		                          ->get();

		return view('user.upload',['data'=>$data]);
	}
}
