<?php

namespace App\Http\Controllers;

use App\Exports\DiagnosisExport;
use App\Models\Diagnosis;
use App\Models\Evidence;
use App\Models\Hypothesis;
use App\Models\Rule;
use App\Models\Setting;
use App\Models\User;
use Illuminate\Http\Request;
use Maatwebsite\Excel\Facades\Excel;

class AppController extends Controller
{
    public function dashboard()
    {
        return view('dashboard', [
            'title' => 'Dashboard',
            'cnt_user' => User::count(),
            'cnt_evidence' => Evidence::count(),
            'cnt_hypothesis' => Hypothesis::count(),
            'cnt_case' => Diagnosis::count(),
            'diagnosis_data' => Diagnosis::orderBy('created_at', 'desc')->get(),
            'hypothesis_data' => Hypothesis::orderBy('created_at', 'desc')->get(),
        ]);
    }

    public function index()
    {
        return view('index', [
            'title' => 'Index',
            'app_title' => Setting::where('component', 'title')->first(),
            'app_desc' => Setting::where('component', 'description')->first(),
        ]);
    }

    public function expert_result(Request $request)
    {

        $request->validate([
            'name' => 'required',
            'description' => 'required',
            'evidence_id' => 'required|array|min:0'
        ]);

        $data = array();
        $tot_hypo_weight = 0;
        foreach (Hypothesis::orderBy('created_at', 'desc')->get() as $item_hypothesis) {
            $tot_evi_weight = $item_hypothesis->weight;
            $evidence_data = array();
            foreach ($request->evidence_id as $item_ev_id) {
                $get_evi_weight = Rule::where('hypothesis_id', $item_hypothesis->id)->where('evidence_id', $item_ev_id)->first();
                $tot_evi_weight = $tot_evi_weight * $get_evi_weight->weight;
                $evidence_data[] = [
                    'code' => $get_evi_weight->evidence->code, 
                    'name' => $get_evi_weight->evidence->name,
                    'weight' => $get_evi_weight->weight
                ];
            }
            $tot_hypo_weight = $tot_hypo_weight + $tot_evi_weight;
            $data[] = [
                'id' => $item_hypothesis->id,
                'name' => $item_hypothesis->name,
                'weight' => $item_hypothesis->weight,
                'evidence_data' => $evidence_data,
                'tot_evi_weight' => $tot_evi_weight,
            ];
        }
        $tot_hypo_weight;
        $data_result = array();
        foreach ($data as $data_item) {
            $data_result[] = [
                'id' => $data_item['id'],
                'name' => $data_item['name'],
                'weight' => $data_item['weight'],
                'evidence_data' => $data_item['evidence_data'],
                'tot_evi_weight' => $data_item['tot_evi_weight'],
                'tot_hypo_weight' => $tot_hypo_weight,
                'diagnosis_result' => ($data_item['tot_evi_weight'] / $tot_hypo_weight)
            ];
        }

        $diagnosis_result = 0;
        foreach ($data_result as $index => $record) {
            if ($record['diagnosis_result'] > $diagnosis_result) {
                $data_id =$record['id'];
                $data_name =$record['name'];
                $data_weight =$record['weight'];
                $data_evidence_data =$record['evidence_data'];
                $data_tot_evi_weight =$record['tot_evi_weight'];
                $data_tot_hypo_weight = $record['tot_hypo_weight'];
                $diagnosis_result =$record['diagnosis_result'];
            }
        }
        
        $data_result;
        $columns = array_column($data_result, 'diagnosis_result');
        array_multisort($columns, SORT_DESC, $data_result);
        
        Diagnosis::create([
            'hypothesis_id' => $data_id,
            'name' => $request->name,
            'description' => $request->description,
            'value' => $diagnosis_result,
        ]);

        return view('expert_result', [
            'title' => 'Expert Result',
            'data' => $data_result,
            'data_name' => $request->name,
            'data_description' => $request->description,
            'data_evidence' => $data_evidence_data,
            'data_diagnosis' => $data_name,
            'data_expert_value' => $diagnosis_result,
            'hypothesis_data' => Hypothesis::find($data_id),
        ]);
    }

    public function expert_system()
    {
        return view('expert_system', [
            'title' => 'Expert System',
            'evidence' => Evidence::all(),
        ]);
    }

    public function diagnosis()
    {
        return view('diagnosis',[
            'title' => 'History Diagnosis',
            'diagnosis_data' => Diagnosis::orderBy('created_at', 'desc')->get()
        ]);
    }

    public function setting()
    {
        return view('setting.application', [
            'title' => 'Setting',
            'app_title' => Setting::where('component', 'title')->first(),
            'app_description' => Setting::where('component', 'description')->first(),
            'app_evidence' => Setting::where('component', 'evidence')->first(),
            'app_hypothesis' => Setting::where('component', 'hypothesis')->first(),
        ]);
    }

    public function setting_update(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'description' => 'required',
            'evidence' => 'required',
            'hypothesis' => 'required',
        ]);

        Setting::where('component', 'title')->update(['value' => $request->title]);
        Setting::where('component', 'description')->update(['value' => $request->description]);
        Setting::where('component', 'evidence')->update(['value' => $request->evidence]);
        Setting::where('component', 'hypothesis')->update(['value' => $request->hypothesis]);

        return redirect()->route('setting.index')->with('status','Data created succesfully!');
    }
}
