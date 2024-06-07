<?php
require 'functions.php';

if( !isset($_GET["id"])){
    //redirect
    header("Location: index.php");
    exit;
}

// Perform database operations
$id = $_GET["id"];
$resep = query2("resep","$id");
$bahan = query1("resep_bahan","$id");
$langkah = query1("langkah","$id");


?>

<!DOCTYPE html>
<html>
<head>
  <title><?= $resep["judul"] ?></title>
  <link rel="stylesheet" href="Resep.css"> <!-- Link to the external CSS file -->
</head>

<header>
    <div class="logo">
      <img src="Chef.png" alt="Logo">
      
    </div>
    
    <div class="logo">
      <img onclick="goToHome()" src="Chef.png" alt="Logo">
    </div>
    <nav>
      <ul>
        <li><a onclick="goToHome()" class="btn" id="home-btn">Home</a>
        </li>
        <li><a href="index.php#about-us" class="btn">About Us</a>
        </li>
      </ul>
    </nav>
  </header>

  
<body>
  <h1><?= $resep["judul"]; ?></h1>
  <div class="card-container">
    <div class="content">
      <div class= "deskripsi"> <p><?=$resep["deskripsi"];?></p></div>
      <h2>Cara memasak</h2>
      <ul>
        <?php foreach ($langkah as $lkh) : ?>
        <li><?= $lkh["deskripsi"] ?></li>
        <?endforeach; ?>
      </ul>
      <h2>Bahan-bahan</h2>
      <table>
        <tbody>
          <?php foreach ($bahan as $bhn) : ?>
        <tr>
          <td><?= $bhn["nama_bahan"] ?></td>
          <td><?= $bhn["jumlah_satuan"] ?></td>
        </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
    <div class="sidebar">
      <img src="gambar/<?= $resep["gambar"] ?>" alt="<?= $row["judul"] ?>">
    </div>
  </div>

  <script src="Resep.js"></script>
</body>
</html>
