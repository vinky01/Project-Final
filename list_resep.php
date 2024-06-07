<?php
require 'functions.php';

// Perform database operations
$resepku = query("resep");


?>

<!DOCTYPE html>
<html>

<head>
  <title>Daftar Makanan</title>
  <link rel="stylesheet" type="text/css" href="list.css">
</head>

<body>
  

  <h1>List Makanan</h1>

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
  <main>
      <div class="card-container">
      <?php foreach( $resepku as $row) :
      $id = $row["id_resep"];
      $bahan = query1("resep_bahan","$id");
      $langkah = query1("langkah","$id"); ?>
      <div class="card">
      <a href="Resep.php?id=<?= $row["id_resep"]; ?>"><img src="gambar/<?= $row["gambar"] ?>" alt="<?= $row["judul"] ?>"></a>
        <h2><?= $row["judul"] ?></h2>

      </div>
      <?php endforeach; ?>
      </div>

    <div class="clear"></div>


  </main>

  <script src="TugasUAS.js"></script>
</body>

</html>