<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;

class Dashboardcontroller extends Controller
{
  public function index()
	{ 
		$id = Auth::user()->id;
      
      //hear we fetch the data to show the profile pic on dashboard
      $data = DB::table('users')->where(['id'=>$id])
                                ->get();	
	  return view('user.dashboard',['data'=>$data]);
	}
}
