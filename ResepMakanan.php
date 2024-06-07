<!DOCTYPE html>
<html>

<head>
  <title>Resep Makanan</title>
  <link rel="stylesheet" type="text/css" href="Tugas UTS.css">
</head>

<body>
  <?php foreach( $resepku as $row) : ?>
  <h1>Resep Makanan</h1>
  <header>
    <div class="logo">
      <img src="Chef.png" alt="Logo">
    </div>
    
    <!--<div class="search-form">
      <input type="text" id="search-input" class="search-input" placeholder="Masukkan kata kunci...">
      <button id="search-button" class="search-button">Cari</button>
    </div>-->
    
    <div class="logo">
      <img src="Chef.png" alt="Logo">
    </div>
    <nav>
      <ul>
        <li><a href="#" class="btn" id="home-btn">Home</a></li>
        <li><a href="#about-us" class="btn">About Us</a></li>
      </ul>
    </nav>
  </header>

  <main>
    <div class="search-form">
		<input type="text" id="search-input" class="search-input" placeholder="Cari resep...">
		<button id="search-button" class="search-button" onclick="searchRecipe()">Cari</button>
	</div>

    <div class="search-results" id="search-results">
      <!-- Hasil pencarian akan ditampilkan di sini -->
    </div>
    </main>

  <script src="Tugas UTS.js"></script>
</body>

</html>