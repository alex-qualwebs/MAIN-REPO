<?php

namespace App\Http\Controllers\User;

use App\Comment;
use App\Http\Controllers\Controller;
use App\Image;
use App\Order;
use App\Role;
use App\User;
use App\Userprofile;
use App\tag;
use DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\filter;

class Dashboardcontroller extends Controller
{
  public function index()
	{ 
       //eloquent ORM

	  
//             $data = User::count();
        
//              User::chunk(100, function ($users) {
              
//              $count = count($users->all());

//              dd($count);
//       });
//         
// 		        $users =User::cursor()->filter(function($user) {
//              return $user->id > 100;
//       });  

//            foreach ($users as $user) {
//            echo "<pre>";
//            print_r($user->id);
//         }

//	          User::findOrFail(500); //thrwo an http 404 exception
//            foreach (User::where('role_id', '1')->cursor() as $flight) {
//            $name = $flight->name;
//         };
//             $data = User::where('role_id', '1')->cursor();

      
      // $orders = new Order ;

      // $orders->dish_name = "cholle bhatore";
      // $orders->dish_basic_price = 400;
      // $orders->qty=1;
      // $orders->save();

      // 	 dd($orders->wasChanged(););



		
         //DB-QUERY BUILDER 
    
    // using Union and Union All we can add two queries together
    // $first = DB::table('role')
    //         ->where('id',1);

		// $data = DB::table('role')
		//             ->where('id',1)
		//             ->unionAll($first)
		//             ->get();

		//         echo "<pre>";
		//         print_r($data);
       
      //just use paginate method to get specific data rows
	  //use links() method on blade to create pagination
      // $data = DB::table('users')->paginate(5);


		// $data =User::simplePaginate(5);  //create only pre and next links
        // $data =User::Paginate(5)         //create all links
      

    // $data = User::FindById('m')->get();

    // dd($data);
       
       //relationship One to One

		// $user = User::find(2);

		// $phone = $user->Profile->city;

		// dd($phone);


		//relationship One to Many

		// $data = User::find(2);
        
        // $orders = $data->Orders;


        // foreach($orders as $order)
        // {
        //    echo $order->name."<br>";
        // }

        //reverse Many to One
        
        // //hear using local scope for findbyUserid 
        //  $data = Order::FindByUserId(2)->first(); 
        
        //  $user = $data->User;

        //  dd($user);

       
         //relationship Many TO Many 


		// $data = User::find(1);

		// $roles = $data->Roles;

		// foreach($roles as $role)
		// {
		// 	echo $role->name."<br>";
		// }

		// reverse Many TO Many
          
          // $data = Role::find(1);

          //  $users = $data->Users;

          //    foreach($users as $user)
          //  {
          //  	  echo $user->name." ".$data->name."<br>";
          //  }




		// //POLYMORPHIC RELATIONSHIP

		// //ONE TO ONE

		// $data = Order::find(7);
         
       //  $image = $data->image->url;

		// dd($image);


		// $data = Image::find(1);   //reverse

		// $image = $data->imageable->toArray();

		// dd($image);
         

         // //ONE TO MANY

		// $data = Order::find(2);
         
  //       $Comment = $data->Comments;

		// dd($Comment);


		// $data = Comment::find(20);   //reverse

		// $Comment = $data->Commentable->toArray();

		// dd($Comment);


		// //ONE TO MANY

		// $data = tag::find(1);

		// $orders = $data->Orders;

		// foreach($orders as $order)
		// {
		// 	echo $order->dish_name."<br>";
		// }

		// //ONE TO MANY reverse


		// $data = Order::find(1);
          
  //         $tag = $data->tags;
        
		// foreach($tag as $tags)
		// {
		// 	echo $tags->name."<br>";
		// }

      // $data = DB::table('roles')
      //            ->JOIN('users','roles.id','=','users.role_id')
      //            ->paginate(5);
        

       //  $data = Role::find(2);

       //  $users = $data->Users;
       
       // // dd($users);

         

       // $data = DB::table('users')
       //              ->join('userprofiles','users.id','=','userprofiles.user_id')
       //              ->join('contries','contries.id','=','userprofiles.contry_id')
       //              ->where('users.id','<>',1)
       //              ->orwhere('contries.id','<>',1)
       //              ->orderBy('users.id','DESC')
       //              ->get()->toArray();


       
       // $data = DB::table('comments')
       //              ->join('orders','users.id','=','orders.user_id')
       //              ->get()->toArray();

       

         // $users = DB::table('users')
         //            ->select('roles.id AS role_id','users.name AS user_name', 'roles.name AS role_name','users.id AS user_id','city','phone','contries.name AS contry_name','email')
         //            ->join('role_user','users.id','=','role_user.user_id')
         //            ->join('roles','roles.id','=','role_user.role_id')
         //            ->join('userprofiles','users.id','=','userprofiles.user_id')
         //            ->join('contries','contries.id','=','userprofiles.contry_id')
         //            ->where('role_user.role_id','=','2')
         //            ->orwhere('role_user.role_id','=','1')
         //            ->get()->toArray();


                    // dd($users);
       

        // using Union and Union All we can add two queries together
		//   $first = DB::table('roles')
		//           ->where('id',2);

		// $data = DB::table('roles')
		//             ->where('id',1)
		//             ->unionAll($first)
		//             ->get();

		//         echo "<pre>";
		//         print_r($data);

   
     //row queries           
    // $data = DB::select('select * from orders where user_id = ?',[2]);

    // $data = DB::insert('insert into roles (name) values(?)',["private"]);

       
    //   $contry = 1;

    // $users = DB::table('users')
    //               ->Join('userprofiles','users.id','=','userprofiles.user_id')
    //              ->rightJoin('contries','userprofiles.contry_id','=','contries.id')
    //               ->when($contry,function($query,$contry){

    //               	 return $query->where('contry_id',$contry);
    //               })
    //               ->get();


    //               dd($users);
       

       //CROSS-JOIN

		 // $users = DB::table('users')
   //                     ->crossJoin('userprofiles')
   //                     ->get()->toArray();

   //                dd($users);


		// $users = User::with('Profile.Contry:user_id,name')->get();

		  return view('user.dashboard',compact('users'));


	}

	public function show()
	{ 
		$id = Auth::user()->id;

		$data = DB::table('users')->where(['id'=>$id])
		                          ->get();

		return view('user.upload',['data'=>$data]);
	}

	public function menu()
	{  
       // $users = Order::withTrashed()
       //               ->restore();

		$data = Order::get();

			return view('user.menu',['data'=>$data]);
	}
	public function editshow($id)
	{
		$data = Order::find($id);

		return view('user.edit',['data'=>$data]);
	}

	public function update(Request $request)
	{ 

		$id = $request->id;

	Order::where(['id'=>$id])->update(['dish_name'=>$request->dish_name,'dish_basic_price'=>$request->dish_basic_price]);

		$users = Order::updateOrCreate(
    ['dish_name' => 'malaikopta'],
    ['dish_basic_price' => 199,'qty'=>1]
);


	return redirect()->route('show_menu');	

	}

	public function delete($id)
	{
		// $users = Order::find($id);

		// $users->delete();

		Order::destroy($id);

		return redirect()->route('show_menu');

	}
}
