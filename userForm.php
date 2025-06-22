<?php
    $title = 'Inserisci nuovo utente';
    include('template.php');

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

        if ($query) {
            echo "<script>alert('Utente inserito con successo!');</script>";
        } 
        else {
            echo "<script>alert('Errore durante l\\'inserimento dell\\'utente.');</script>";
        }
    }
?>


<main class="container">
    <h1 style="text-align: center;">Inserisci un nuovo utente</h1>
    <form action="userForm.php" method="POST">
        <fieldset>
            <label>Codice matricola:   <input type="number" name="cod_matricola" required autofocus></label>
            <label>Nome:               <input type="text" name="nome" required> </label>
            <label>Cognome:            <input type="text" name="cognome" required> </label>
            <label>Indirizzo:          <input type="text" name="indirizzo"> </label>
            <label>Numero di telefono: <input type="text" name="num_telefono"> </label>
            <label>Data di nascita:    <input type="date" name="data_nascita" required> </label>
        </fieldset>
        <input type="submit">
    </form>
</main>
