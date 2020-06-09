<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class Dashboardcontroller extends Controller
{  
	public function index()
	{
		$id = Auth::user()->id;
      
      //hear we fetch the data to show the profile pic on dashboard
      $data = DB::table('users')->where(['id'=>$id])
                                ->get();	
	  return view('admin.dashboard',['data'=>$data]);
	}
    
}
