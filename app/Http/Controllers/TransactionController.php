<?php

namespace App\Http\Controllers;

use App\Models\Transaction;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\Eloquent\SoftDeletes;

class TransactionController extends Controller
{
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
            'amount' => 'required|max:255',
            'details' => 'required|string',
            'date' => 'required',
            'remark' => 'string',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        $transaction = transaction::create([
            // $transaction->id = $this->newUniqueId();
            'amount' => $request->amount,
            'details' => $request->details,
            'date' => $request->date,
            'remark' => $request->remark,
        ]);
 
        $responce = ['transaction' => $transaction, 'status' => 'Success']; 
        return $responce;
    }


    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function edit(transaction $transaction)
    {
        return $transaction;
        
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, transaction $transaction)
    {
        $validator = Validator::make($request->all(), [
            'amount' => 'required|decimal:2|max_digits:12|max:255',
            'details' => 'required|string',
            'date' => 'required|date',
            'remark' => 'string'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors());
        }

        // $transaction = transaction::find($transaction);

        // $transaction = new transaction; 
            $transaction->amount = $request->amount;
            $transaction->details = $request->details;
            $transaction->date = $request->date;
            $transaction->remark = $request->remark;
 
        $transaction->save();
 
        return "updated";
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\transaction  $transaction
     * @return \Illuminate\Http\Response
     */
    public function destroy(transaction $transaction)
    {
        // $transaction = transaction::find($transaction);
        // dd($transaction);
        $transaction->delete();
            return "deleted";
 
    }
}
