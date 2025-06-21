<?php
    require_once('connection.php');

    if (!empty($_POST)) {
        $COD_MATRICOLA 	= filter_var($_POST['cod_matricola'], FILTER_SANITIZE_NUMBER_INT);
		$NOME 	        = filter_var($_POST['nome'], FILTER_SANITIZE_STRING) ;
		$COGNOME 	    = filter_var($_POST['cognome'], FILTER_SANITIZE_STRING) ;
		$INDIRIZZO	    = filter_var($_POST['indirizzo'], FILTER_SANITIZE_STRING);
		$NUM_TELEFONO 	= filter_var($_POST['num_telefono'], FILTER_SANITIZE_STRING);
		$DATA_NASCITA 	= $_POST['data_nascita'];

		$sql = "INSERT INTO UTENTE
						VALUES ('$COD_MATRICOLA', '$NOME', '$COGNOME', '$INDIRIZZO', 
								'$NUM_TELEFONO', '$DATA_NASCITA')";
			
		$query = mysqli_query($db, $sql);
    }
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inserisci Utente</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.jade.min.css"
        >
    </head>
    <body>
        <main class="container">
            <header>
                <nav>
                <ul>
                    <li><a href="index.php"><strong>Biblioteca</strong></a></li>
                </ul>
                <ul>
                    <li><a href="userForm.php">Utente</a></li>
                    <li><a href="searchBook.php">Ricerca Libro</a></li>
                    <li><a href="authorBooks.php">Libri per Autore</a></li>
                </ul>

                <ul>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Products</a></li>
                </ul>   
                </nav>
            </header>

            <h1 class="center">Inserisci Utente</h1>
            <form action="userForm.php" method="POST">
                <label>Codice matricola:   <input type="number" name="cod_matricola" required autofocus></label>
                <label>Nome:               <input type="text" name="nome" required> </label>
                <label>Cognome:            <input type="text" name="cognome" required> </label>
                <label>Indirizzo:          <input type="text" name="indirizzo"> </label>
                <label>Numero di telefono: <input type="text" name="num_telefono"> </label>
                <label>Data di nascita:    <input type="date" name="data_nascita" required> </label>
                <input type="submit">
            </form>
        </main>
    </body>
</html>