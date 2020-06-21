<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\enrolment;

class enrolmentcontroller extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
      $show=new enrolment;
      $show=enrolment::get();
      return response()->json($show);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
      $validatedData = $request->validate([
        'mobile_no' => 'required|unique:enrolments',

    ]);
        /*$save=array();
        $save['class']=$request->class;
        $save['mobile_no']=$request->mobile_no;

        return response('done');*/

      enrolment::create($request->all());
        return response ('ok');

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)

    {
        $show=enrolment::where('id',$id)->get();
        return response()->json($show);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

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
        'mobile_no' => 'required|unique:enrolments',

    ]);
        enrolment::where('id',$id)->update($request->all());
        return response('updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        enrolment::where('id',$id)->delete();
        return response('delete');
    }
}
