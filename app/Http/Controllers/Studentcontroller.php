<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use App\student;

class Studentcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $indx=new student;
      $indx=student::get();
      return response()->json($indx);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $validatedData = $request->validate([
        'class_id' => 'required',
        'name' => 'required',
        'roll' => 'required|unique:students',
        'address' => 'required',
        'email' => 'required',
        'password' => 'required',

    ]);

    //  student::create($request->all());
    $data=array();
    $data['class_id']=$request->class_id;
    $data['name']=$request->name;
    $data['roll']=$request->roll;
    $data['address']=$request->address;
    $data['email']=$request->email;
    $data['password']=Hash::make($request->password);

     student::create($data);
        return response ('Data Stored');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
      $show=student::where('id',$id)->get();
      return response()->json($show);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
      $validatedData = $request->validate([
        'class_id' => 'required',
        'name' => 'required',
        'roll' => 'required',
        'address' => 'required',
        'email' => 'required',
        'password' => 'required',

    ]);

    $data=array();
    $data['class_id']=$request->class_id;
    $data['name']=$request->name;
    $data['roll']=$request->roll;
    $data['address']=$request->address;
    $data['email']=$request->email;
    $data['password']=Hash::make($request->password);

        student::where('id',$id)->update($data);
        return response('Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
      student::where('id',$id)->delete();
      return response('Deleted');
    }
}
