<?php

namespace App\Http\Controllers;

use App\Models\Diagnosis;
use App\Models\Evidence;
use App\Models\Hypothesis;
use App\Models\Rule;
use App\Models\Setting;
use Illuminate\Http\Request;

class HypothesisController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('hypothesis.index',[
            'title' => 'Hypothesis - '.Setting::where('component', 'hypothesis')->first()->value,
            'hypothesis_data' => Hypothesis::orderBy('id','desc')->get()
        ]);
    }

    public function autoCode(){
        $lates_evidence = Hypothesis::orderby('id', 'desc')->first();
        $code = $lates_evidence->code;
        $order = (int) substr($code, 2, 4);
        $order++;
        $letter = "HC";
        $code = $letter . sprintf("%04s", $order);
        return $code;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('hypothesis.create',[
            'title' => 'Hypothesis',
            'get_auto_code' => $this->autoCode()
        ]);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
            'weight' => 'required',
            'description' => 'required',
            'solution' => 'required',
        ]);

        $hypothesis = Hypothesis::create([
            'code' => $request->code,
            'name' => $request->name,
            'weight' => $request->weight,
            'description' => $request->description,
            'solution' => $request->solution,
        ]);

        foreach (Evidence::all() as $value) {
            Rule::create([
                'evidence_id' => $value->id,
                'hypothesis_id' => Hypothesis::where('code', $request->code)->first()->id,
                'weight' => 0.1
            ]);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
    
            // Simpan gambar ke dalam collection 'images' pada model Evidence
            $hypothesis->addMedia($image)->toMediaCollection('images');
        }

        return redirect()->route('hypothesis.index')->with('status','Data created succesfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Hypothesis $hypothesis)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        return view('hypothesis.edit',[
            'title' => 'Hypothesis',
            'get_hypothesis' => Hypothesis::findOrFail($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $hypothesis = Hypothesis::findOrFail($id);
        $request->validate([
            'name' => 'required|max:255',
            'weight' => 'required',
            'description' => 'required',
            'solution' => 'required',
        ]);

        Hypothesis::where('id', $id)
            ->update([
                'name' => $request->name,
                'weight' => $request->weight,
                'description' => $request->description,
                'solution' => $request->solution,
            ]);

        // Cek apakah ada file gambar yang diunggah
        if ($request->hasFile('image')) {
            $image = $request->file('image');

            // Hapus gambar lama jika ada
            $hypothesis->clearMediaCollection('images');

            // Upload gambar baru dan simpan ke media library
            $hypothesis->addMedia($image)->toMediaCollection('images', 'public');
        }    
            
        return redirect()->route('hypothesis.index')->with('status','Data updated succesfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        Diagnosis::where('hypothesis_id',$id)->delete();
        Rule::where('hypothesis_id',$id)->delete();
        Hypothesis::where('id',$id)->delete();
        return redirect()->route('hypothesis.index')->with('status','Data deleted succesfully!');
    }
}
