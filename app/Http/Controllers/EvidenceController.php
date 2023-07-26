<?php

namespace App\Http\Controllers;

use App\Models\Evidence;
use App\Models\Hypothesis;
use App\Models\Rule;
use App\Models\Setting;
use Illuminate\Http\Request;

class EvidenceController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return view('evidence.index',[
            'title' => 'Evidence - '.Setting::where('component', 'evidence')->first()->value,
            'evidence_data' => Evidence::orderBy('id','desc')->get()
        ]);
    }

    public function autoCode(){
        $lates_evidence = Evidence::orderby('id', 'desc')->first();
        $code = $lates_evidence->code;
        $order = (int) substr($code, 2, 4);
        $order++;
        $letter = "EC";
        $code = $letter . sprintf("%04s", $order);
        return $code;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('evidence.create',[
            'title' => 'Evidence',
            'get_auto_code' => $this->autoCode()
        ]); 
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255'
        ]);

        $evidence = Evidence::create([
            'code' => $request->code,
            'name' => $request->name,
        ]);

        foreach (Hypothesis::all() as $value) {
            Rule::create([
                'evidence_id' => Evidence::where('code', $request->code)->first()->id,
                'hypothesis_id' => $value->id,
                'weight' => 0.1
            ]);
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
    
            // Simpan gambar ke dalam collection 'images' pada model Evidence
            $evidence->addMedia($image)->toMediaCollection('images');
        }

        return redirect()->route('evidence.index')->with('status','Data created succesfully!');
    }

    /**
     * Display the specified resource.
     */
    public function show(Evidence $evidence)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit($id)
    {
        return view('evidence.edit',[
            'title' => 'Evidence',
            'get_evidence' => Evidence::findOrFail($id)
        ]);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $evidence = Evidence::findOrFail($id);
        $request->validate([
            'name' => 'required|max:255'
        ]);

        Evidence::where('id', $id)
            ->update([
                'name' => $request->name
            ]);
        
            // Cek apakah ada file gambar yang diunggah
            if ($request->hasFile('image')) {
                $image = $request->file('image');

                // Hapus gambar lama jika ada
                $evidence->clearMediaCollection('images');

                // Upload gambar baru dan simpan ke media library
                $evidence->addMedia($image)->toMediaCollection('images', 'public');
            }
        return redirect()->route('evidence.index')->with('status','Data updated succesfully!');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $evidence = Evidence::findOrFail($id);

        // Cek apakah media dengan nama 'images' ada sebelum mencoba menghapusnya
        // if ($evidence->hasMedia('images')) {
        //     // Hapus media 'images'
        //     $evidence->deleteMedia('images');
        // }

        // Hapus relasi Rule terlebih dahulu, untuk mencegah constraint violation
        Rule::where('evidence_id', $id)->delete();

        // Hapus data Evidence
        $evidence->delete();

        return redirect()->route('evidence.index')->with('status', 'Data deleted successfully!');
    }
}
