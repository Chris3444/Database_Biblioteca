<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title><?php if (isset($title)) {echo $title;} else {echo "Biblioteca";} ?></title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
		<link
			rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.jade.min.css"
		>
    </head>
    <body>
		<header class="container">
			<nav>
				<ul>
					<li><strong><a href="index.php" class="contrast" style="text-decoration: none;">Biblioteca</a></strong></li>
				</ul>

				<ul>
					<details class="dropdown">
						<summary role="button" class="outline" style="background: transparent; border: transparent;">Utenti</summary>
						<ul>
							<li><a href="userForm.php">Aggiungi utente</a></li>
							<li><a href="users.php">Lista utenti</a></li>
						</ul>
					</details>
						<details class="dropdown">
						<summary role="button" class="outline" style="background: transparent; border: transparent;">Libri</summary>
						<ul>
							<li><a href="searchBook.php">Ricerca Libro</a></li>
							<li><a href="authorBooks.php">Libri per Autore</a></li>
						</ul>
					</details>
				</ul>

				<ul></ul>   
			</nav>
		</header>
    </body>
</html>