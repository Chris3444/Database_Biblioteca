<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php if (isset($title)) {echo $title;} else {echo "Biblioteca";} ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="icon/favicon.ico" type="image/x-icon">
		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.jade.min.css"
		>
		<style>
			summary.outline {
				background: transparent;
				border: transparent;
			}	
		</style>
    </head>
    <body>
		<header class="container">
			<nav>
				<ul>
					<li><strong><a href="index.php" class="contrast" style="text-decoration: none;">Biblioteca</a></strong></li>
				</ul>

				<ul>
					<details class="dropdown">
						<summary role="button" class="outline">Prestiti</summary>
						<ul>
							<li><a href="loansManager.php">Inserisci/Rimuovi prestito</a></li>
							<li><a href="loansVisualizer.php">Prestiti range temporale</a></li>
						</ul>
					</details>
					<details class="dropdown">
						<summary role="button" class="outline">Utenti</summary>
						<ul>
							<li><a href="userForm.php">Aggiungi utente</a></li>
							<li><a href="users.php">Lista utenti</a></li>
							<li><a href="userLoans.php">Prestiti utente</a></li>
						</ul>
					</details>
						<details class="dropdown">
						<summary role="button" class="outline" style="background: transparent; border: transparent;">Libri</summary>
						<ul>
							<li><a href="searchBook.php">Ricerca Libro</a></li>
							<li><a href="authorBooks.php">Libri per Autore</a></li>
						</ul>
					</details>
					<li><a href="searchAuthors.php">Autori</a></li>
					<li><a href="statistics.php">Statistiche</a></li>
				</ul>
				<ul>
					<a target="_blank" href="https://github.com/Chris3444/Database_Biblioteca">
						<img src="icon/github.png" alt="github_link" height="32" width="110">
					</a>
				</ul>   
			</nav>
		</header>
    </body>
</html>