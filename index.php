<?php
require 'functions.php';

// Perform database operations
$resepku = query("resep");


?>

<!DOCTYPE html>
<html>

<head>
  <title>R3sepku</title>
  <link rel="stylesheet" type="text/css" href="TugasUAS.css">
</head>

<body>
  

  <h1><a id="resep-button" class="resep-button" onclick="window.location.href='list_resep.php'">List Makanan</a></h1>

  <header>
    <div class="logo">
      <img src="Chef.png" alt="Logo">
      
    </div>
    
		<button id="resep-button" class="resep-button" onclick="window.location.href='list_resep.php'">Resep Makanan</button>
    
	<!-- </div>

    <div class="search-results" id="search-results">
      Hasil pencarian akan ditampilkan di sini
    </div> -->

    
    
    <div class="logo">
      <img onclick="goToHome()" src="Chef.png" alt="Logo">
    </div>
    <nav>
      <ul>
        <li><a onclick="goToHome()" class="btn" id="home-btn">Home</a>
        </li>
        <li><a href="#about-us" class="btn">About Us</a>
        </li>
      </ul>
    </nav>
  </header>
  <main>
      <div class="card-container">
<?php
$counter = 0; // Initialize the counter variable

foreach ($resepku as $row) {
  if ($counter >= 3) {
    break; // Exit the loop after three iterations
  }

  $id = $row["id_resep"];
  $bahan = query1("resep_bahan", $id);
  $langkah = query1("langkah", $id);
?>

<div class="card">
  <a href="Resep.php?id=<?= $row["id_resep"]; ?>"><img src="gambar/<?= $row["gambar"] ?>" alt="<?= $row["judul"] ?>"></a>
</div>

<?php
  $counter++; // Increment the counter variable
}
?>

      </div>

    <div class="clear"></div>

    <hr>
    <h1>Anggota Kelompok</h1>
    <section id="about-us" class="team-members">
      <div class="member">
        <img src="">
        <h3>Octovienky Pongoh</h3>
        <p>210211060102</p>
      </div>
      <div class="member">
        <img src="">
        <h3>Alfrets Maleke</h3>
        <p>210211060263</p>
      </div>
      <div class="member">
        <img src="">
        <h3>Descarter Baginda</h3>
        <p>210211060170</p>
      </div>
    </section>

  </main>

  <script src="TugasUAS.js"></script>
</body>

</html>