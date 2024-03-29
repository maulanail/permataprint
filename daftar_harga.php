<?php

//agar dapat menggunakan setiap fungsi session disetiap halaman website
session_start();

//menyertakan file php lain ke dalam suatu program PHP
require 'functions.php';
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="daftar_harga.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <title>Permata print</title>
</head>

<!--navbar & header-->
<nav class="navbar navbar-expand-lg bg-body-tertiary fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">PERMATA PRINT</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link d-flex justify-content-between" aria-current="page" href="index.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pilihan.php">Pemesanan</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="katalog.php">Produk</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="daftar_harga.php">Daftar Harga</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="caraorder.php">Cara Pemesanan</a>
        </li>
        <li class="nav-item dro">
          <a class="nav-link" href="ranjang.php"><i class="bi bi-cart"></i> </a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-person"></i>
            <?php
            if (isset($_SESSION["cusname"])) {
              echo $_SESSION["cusname"];
            } else {
              echo 'user';
            }
            ?>
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="profil.php">Profil</a></li>
            <li><a class="dropdown-item" href="login.php">Login</a></li>
            <li><a class="dropdown-item" href="registrasi.php">Register</a></li>
            <li><a class="dropdown-item" href="logout.php">Logout</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<!-- harga sablon -->
<div class="harga">
  <h3>harga Cat Sablon</h3>
  <img class="picharga" src="pic/sablonharga.png"></br>
  <h3>posisi file desain</h3></br>
  <img class="picharga" src="pic/area-cetak-print-dtg.jpg"></br>
  <h3>keterangan</h3>
  <p class="ketharga">
    1. jika ingin sablon saja dengan kaos sendiri, silahkan hubungi kami.</br></br>
    2. jika tidak ada yang sesuai dengan keinginan anda, silahkan hubungi kami.
  </p>
</div>

<!-- cat sablon -->
<div class="harga">
  <h3>CAT SABLON</h3>
  <p class="ketharga">
    1. Cat RUBBER adalah jenis tinta yang terbuat dari campuran air dan karet. Hal itu bertujuan untuk semakin menguatkan
    pigmentasi pada tinta rubber supaya warna yang dihasilkan nantinya lebih bervariasi dan juga menarik.</br></br>
    2. Cat PLASTISOL adalah jenis tinta yang berbasis minyak atau oil based.</br></br>
  </p>
</div>


<!-- footer -->
<br>
<br>
<br>
<br>
<br>
<div class="container-fluid" style="background-color: #242124;">
  <div class="row g-4">
    <div class="col-3" style="margin-left: 40px; margin-top:50px;">
      <h3 style="color:white; font-weight: bold;">PERMATA PRINT</h3>
    </div>
    <div class="col-3" style="color:white; margin-top:50px;">
      <h5>LAYANAN KAMI</h5>
      <p><i class="bi bi-arrow-right-short"></i> Jual Baju Custom</p>
      <p><i class="bi bi-arrow-right-short"></i> Jasa Sablon Kaos</p>
    </div>
    <div class="col-3" style="color:white; margin-top:50px;">
      <h5>HUBUNGI KAMI</h5>
      <p><i class="bi bi-telephone-fill"></i> +62-857-8017-8107</p>
    </div>
    <div class="col-2" style="color:white; margin-top:50px;">
      <h5>ALAMAT</h5>
      <p><i class="bi bi-geo-alt-fill"></i> Jl. Pasir Awi, RT.003/RW.002, Sukaasih, Kec. Ps. Kemis, Kabupaten Tangerang, Banten 15560</p>
      <p><i class="bi bi-geo-alt-fill"></i> -6.184947, 106.534759</p>
    </div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>

</html>