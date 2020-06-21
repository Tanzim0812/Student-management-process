<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\course;

class subjectcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $indx=new course;
      $indx=course::get();
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
        'subject_name' => 'required',
        'subject_code' => 'required',


    ]);

      course::create($request->all());
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
      $show=course::where('id',$id)->get();
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
        'subject_name' => 'required',
        'subject_code' => 'required',

    ]);
        course::where('id',$id)->update($request->all());
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
      course::where('id',$id)->delete();
      return response('Deleted');
    }
}
