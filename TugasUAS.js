


/*Search*/
/*var searchButton = document.getElementById("search-button");
        searchButton.addEventListener("click", function() {
            var searchInput = document.getElementById("search-input").value;
            searchInDatabase(searchInput);
        });

        function searchInDatabase(keyword) {
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "search.php?keyword=" + keyword, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    var resultsDiv = document.getElementById("search-results");
                    resultsDiv.innerHTML = xhr.responseText;
                }
            };
            xhr.send();
        }*/

function searchRecipe() {
			var input = document.getElementById('search-input').value.toLowerCase();
			var cards = document.getElementsByClassName('card');

			for (var i = 0; i < cards.length; i++) {
				var title = cards[i].getElementsByTagName('h2')[0];
				var txtValue = title.textContent || title.innerText;
				if (txtValue.toLowerCase().indexOf(input) > -1) {
					cards[i].style.display = "";
				} else {
					cards[i].style.display = "none";
				}
			}
		}

function goToHome() {
    window.location.href = 'index.php';
    window.location.replace('index.php'); // Untuk menghapus riwayat navigasi
}