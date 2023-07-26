@extends('layouts.main')

@section('container')
<!-- Main Content -->
<div id="content">

    @include('layouts.topbar')

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">{{ $title }}</h1>
        </div>

        <!-- Content -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Expert Result</h6>
            </div>
            <div class="card-body" id="report" >
              <h3>Expert Result</h3>
              <table>
                <tr>
                  <td>Name</td>
                  <td>:</td>
                  <td>{{ $data_name }}</td>
                </tr>
                <tr>
                  <td>Description</td>
                  <td>:</td>
                  <td>{{ $data_description }}</td>
                </tr>
                <tr>
                  <td valign = 'top'>Evidence Selected</td>
                  <td valign = 'top'>:</td>
                  <td>
                    <ul>
                      @foreach ($data_evidence as $data_evidence_item)
                      <li>{{ $data_evidence_item['name'] }}</li>
                      @endforeach
                    </ul>
                  </td>
                </tr>
                <tr>
                  <td>Diagnosis</td>
                  <td>:</td>
                  <td>{{ $data_diagnosis }}</td>
                </tr>
                <tr>
                  <td>Expert Value</td>
                  <td>:</td>
                  <td>{{ number_format($data_expert_value,4)  }}</td>
                </tr>
              </table>
              <hr>
              @foreach ($data as $item)
              <h4>{{ $item['name'] }}</h4>
              <h6>Weight : {{ $item['weight'] }}</h6>
              <div class="table-responsive">
                <table class=" table-bordered" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Code</th>
                      <th>Evidence</th>
                      <th>Weight</th>
                    </tr>
                  </thead>
                  <tbody>
                    @foreach ($item['evidence_data'] as $evidence_item)
                    <tr>
                      <td>{{ $loop->iteration }}</td>
                      <td>{{ $evidence_item['code'] }}</td>
                      <td>{{ $evidence_item['name'] }}</td>
                      <td>{{ $evidence_item['weight'] }}</td>
                    </tr>
                    @endforeach
                    <tr>
                      <td colspan="3">Tew = Total multiplication of hypotehsis and all eviednce weights</td>
                      <td>{{ number_format($item['tot_evi_weight'],4)  }}</td>
                    </tr>
                    <tr>
                      <td colspan="3">Total multiplication of all hypothesis result (Tew)</td>
                      <td>{{ number_format($item['tot_hypo_weight'],4) }}</td>
                    </tr>
                    <tr>
                      <td colspan="3">Expert Result</td>
                      <td><strong>{{ number_format($item['diagnosis_result'],4) }}</strong> </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <hr>
              @endforeach
            </div>
            <div class="card-footer">
              <div class="col-12 text-right"><button type="button" class="btn btn-primary" onclick="printReport()"><i class="fa fa-print"></i> Print</a></button></div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<script>
    function printReport() {
        const printContents = document.getElementById('report').innerHTML;
        const originalContents = document.body.innerHTML;
        document.body.innerHTML = printContents;
        window.print();
        document.body.innerHTML = originalContents;
    }
</script>
<!-- End of Main Content -->
@endsection
