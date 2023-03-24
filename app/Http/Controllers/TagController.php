<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\Eloquent\SoftDeletes;
// use Illuminate\Database\Eloquent\Concerns\HasUuids;
// use HasUuids;

class TagController extends Controller
{
    // use SoftDeletes;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return "index";
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return "create here";
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'tag' => 'required|string|max:255|unique:tags,tag',
            'color' => 'required|string|max:50|unique:tags,color',
            'remark' => 'string'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $tag = Tag::create([
            // $tag->id = $this->newUniqueId();
            'tag' => $request->tag,
            'color' => $request->color,
            'remark' => $request->remark,
        ]);
 
        $responce = ['tag' => $tag, 'status' => 'Success']; 
        return $responce;
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function edit(Tag $tag)
    {
        return $tag = Tag::find($tag);
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Tag $tag)
    {
        $validator = Validator::make($request->all(), [
            'tag' => 'required|string|max:255',
            'color' => 'required|string|max:50|unique:tags,color',
            'remark' => 'string'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        // $tag = Tag::find($tag);

        // $tag = new Tag; 
        $tag->tag = $request->tag;
        $tag->color = $request->color;
        $tag->remark = $request->remark;
 
        $tag->save();
 
        return "updated";
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Tag  $tag
     * @return \Illuminate\Http\Response
     */
    public function destroy(Tag $tag)
    {
        // $tag = Tag::find($tag);
        // dd($tag);
        $tag->delete();
            return "deleted";
 
    }
}
