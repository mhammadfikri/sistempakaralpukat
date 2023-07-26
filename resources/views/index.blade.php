@extends('layouts.main')

@section('container')
<!-- Main Content -->
<div id="content">

    @include('layouts.topbar')

    <!-- Begin Page Content -->
    <div class="container-fluid">

        <!-- Page Heading -->
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">SISTEM PAKAR IDENTIFIKASI HAMA TANAMAN ALPUKAT MENGGUNAKAN METODE FORWARD CHAINING DAN TEOREMA BAYES BERBASIS WEB</h1>
        </div>

        <!-- Content -->
        <div class="card shadow mb-4">
            <div class="card-body">
              <p class="text-justify">
              Sistem pakar adalah suatu sistem yang memanfaatkan pengetahuan dan kemampuan manusia dalam suatu bidang tertentu untuk memecahkan masalah yang kompleks yang tidak dapat diselesaikan orang awam,
              Dalam menghasilkan sebuah keputusan maka penulis menggunakan 2 pemodelan sebagai proses penalaran dalam mengidentifikasi hama pada tanaman alpukat. yaitu metode forward chaining dan metode teorema bayes.
              Forward chaining adalah metode inferensi dalam sistem pakar yang bekerja dari fakta-fakta spesifik ke arah kesimpulan umum. Forward chaining dapat membantu meningkatkan efisiensi proses identifikasi hama pada tanaman alpukat.
              Sedangkan teorema Bayes adalah suatu metode untuk menghitung probabilitas suatu kejadian berdasarkan informasi sebelumnya. Teorema Bayes dapat digunakan untuk menghitung probabilitas bahwa jenis hama tertentu mungkin menyerang tanaman alpukat berdasarkan gejala 
              </p>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
@endsection
