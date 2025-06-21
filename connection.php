<?php 
	// Connessione 
	$db = mysqli_connect("localhost", "php", "php-password", "Biblioteca");

	// Controllo se è avvenuta la connessione al database:
	if (!$db) { // if ($link == NULL)
		echo "Si è verificato un errore: Non riesco a collegarmi al database <br/>";
		echo "Codice errore: " . mysqli_connect_errno() . "<br/>";
		echo "Messaggio errore: " . mysqli_connect_error() . "<br/>";
		exit;
	}	
?>  