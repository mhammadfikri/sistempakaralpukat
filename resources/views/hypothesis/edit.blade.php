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

        <!-- Content Row -->
        <div class="row">

            <!-- Content Column -->
            <div class="col-lg-6 mb-4">

                <!-- Project Card Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Add Data</h6>
                    </div>
                    <div class="card-body">
                        <form action="{{ route('hypothesis.update', $get_hypothesis->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                            <div class="mb-3">
                                <label for="code" class="form-label">Code</label>
                                <input name="code" type="text" class="form-control" id="code" readonly value="{{ $get_hypothesis->code }}">
                            </div>
                            <div class="mb-3">
                                <label for="name" class="form-label">Hypothesis</label>
                                <input name="name" type="text" class="form-control @error('name') is-invalid @enderror" value="{{ old('name',$get_hypothesis->name) }}" id="name">
                                @error('code')
                                <div class="invalid-feedback">
                                    <i class="bx bx-radio-circle"></i>
                                    {{ $message }}.
                                </div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="weight" class="form-label">Weight : <span id="weight_id"></span></label>
                                <input type="range" name="weight" min=0.1 max=1.0 step=0.1 value={{ old('weight',$get_hypothesis->weight) }} class="form-control" id="weight">
                                <script>
                                    var range = document.getElementById('weight');
                                    var label = document.getElementById('weight_id');
                                    label.innerHTML = range.value;

                                    range.oninput = function() {
                                        label.innerHTML = this.value;
                                    }
                                </script>
                                @error('weight')
                                <div class="invalid-feedback">
                                    <i class="bx bx-radio-circle"></i>
                                    {{ $message }}.
                                </div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="description" class="form-label">Description</label>
                                <textarea name="description" type="text" class="form-control @error('description') is-invalid @enderror" id="description" rows="3">{{ old('description',$get_hypothesis->description) }}</textarea>
                                @error('description')
                                <div class="invalid-feedback">
                                    <i class="bx bx-radio-circle"></i>
                                    {{ $message }}.
                                </div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="solution" class="form-label">Solution</label>
                                <textarea name="solution" type="text" class="form-control @error('solution') is-invalid @enderror" id="solution" rows="3">{{ old('solution',$get_hypothesis->solution) }}</textarea>
                                @error('solution')
                                <div class="invalid-feedback">
                                    <i class="bx bx-radio-circle"></i>
                                    {{ $message }}.
                                </div>
                                @enderror
                            </div>
                            <div class="mb-3">
                                <label for="image" class="form-label">Image</label>
                                @if ($get_hypothesis->hasMedia('images'))
                                  <img src="{{ $get_hypothesis->getFirstMediaUrl('images') }}" alt="{{ $get_hypothesis->name }}" style="max-width: 100px;">
                                @else
                                  <p>No image available</p>
                                @endif
                                <input type="file" name="image" class="form-control" id="image">
                            </div>
                            <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
                        </form>
                    </div>
                </div>


            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
@endsection
