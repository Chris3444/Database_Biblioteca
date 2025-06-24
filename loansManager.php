<?php
    $title = 'Gestione Prestiti';
    include('template.php');

    require_once('connection.php');

         
    
    
    session_start();
    /*
    * $mode state:
    * 0 - modalità non settata
    * 1 - aggiungi prestito
    * 2 - rimuovi prestito
    */
    $mode = isset($_SESSION['current_mode']) ? $_SESSION['current_mode'] : 0;
    
    if(!empty($_POST) && isset($_POST['mode'])) {
        $requested_mode = ($_POST['mode'] === 'add') ? 1 : 2;
        
        // Se la modalità richiesta è uguale a quella attuale, torna a 0
        $mode = ($mode === $requested_mode) ? 0 : $requested_mode;

        $_SESSION['current_mode'] = $mode;
    }

    if(!empty($_POST) && isset($_POST['action'])) {
        $codice_suc = $_POST['succursale'];
        $isbn = $_POST['isbn'];
        $matricola = $_POST['matricola'];

        $sql ="SELECT c.codice FROM COPIA AS c
                WHERE c.cod_suc = '$codice_suc' AND c.isbn = '$isbn'";
                
        $codice_copia = $db->query($sql)->fetch_array()[0];

        if ($_POST['action'] === 'add') {
            $current_date = date("Y-m-d");

            $final_date = date_create($current_date);
            date_modify($final_date,"+14 days");
            $final_date = $final_date->format('Y-m-d');
            
            $sql = "INSERT INTO PRESTITO(cod_suc, cod_copia, cod_matricola, data_prestito, data_restituzione)
                    Values('$codice_suc', '$codice_copia', '$matricola' , '$current_date', '$final_date')";

            $query = mysqli_query($db, $sql);
        }
        elseif ($_POST['action'] === 'remove') {
            $data_prestito = date_create($_POST['data_prestito'])->format("Y-m-d");

            $sql = "DELETE FROM PRESTITO
                    WHERE cod_suc = '$codice_suc' AND cod_copia = '$codice_copia' 
                    AND cod_matricola = '$matricola' AND data_prestito = '$data_prestito'"; 

            $query = $db->query($sql);
        }
    }
    
    $sql = "SELECT s.nome, l.titolo, p.cod_matricola, p.data_prestito, p.data_restituzione FROM PRESTITO As p
            JOIN SUCCURSALE AS s ON p.cod_suc=s.id
            JOIN COPIA AS c ON p.cod_copia=c.codice
            JOIN LIBRO AS l ON c.isbn=l.isbn
            ORDER BY p.data_restituzione DESC";

    $prestiti = $db->query($sql); 
    $succursali = $db->query("SELECT id, nome FROM SUCCURSALE");     
?>

<main class="container">
        <h1 style="text-align: center;">Gestisci prestiti</h1>
        <form action="loansManager.php" method="post">
            <fieldset class="grid">
                <button type="submit" name="mode" value="add"> Aggiungi </button>
                <button type="submit" name="mode" value="remove" 
                        style="border-color: crimson; background-color: crimson;"
                >Rimuovi</button>
            </fieldset>
        </form> 

        <?php if ($mode !== 0): ?>
            <article>
                <form action="loansManager.php" method="POST">
                    <fieldset>
                    <label>Succursale: 
                        <select name="succursale" id="succursali" required>
                            <?php foreach($succursali as $succursale): ?>
                                <option name="succursale" value=<?php echo $succursale['id']?>><?php echo $succursale['nome']?></option>
                            <?php endforeach; ?>
                        </select>
                    </label>
                    <label>ISBN: <input type="text" name="isbn" required></label>
                    <label>Numero di matricola: <input type="text" name="matricola" required></label>
                    <?php if ($mode == 1): ?>
                        </fieldset>
                        <button type="submit" name="action" value="add">Conferma</button>
                    <?php else:?>
                        <label>Data prestito: <input type="date" name="data_prestito"></label>
                        </fieldset>
                        <button type="submit" name="action" value="remove"
                                style="border-color: crimson; background-color: crimson;">Conferma</button> 
                    <?php endif;?>

                    <?php if ($query) {
                        echo "<p style='color: green; text-align: center;'>Operazione eseguita con successo!</p>";
                    } 
                    //elseif(isset($_POST['action'])) {
                     //   echo "<p style='color: crimson; text-align: center;'>Errore durante l'operazione.</p>";
                    //}?>
                </form>
            </article>
        <?php endif;?>

        <table class="striped">
            <thead>
                <tr>
                    <th>Succursale</th>
                    <th>Copia</th>
                    <th>Matricola</th>
                    <th>Data prestito</th>
                    <th>Data restituzione</th>
                </tr>   
            </thead>
            <?php foreach ($prestiti as $prestito): ?>
                <tr>
                    <?php foreach ($prestito as $data): ?>
                        <?php if (!empty($data)): ?>
                            <td><?php echo $data?></td>
                        <?php else: ?>
                            <td><?php echo '-'?></td>
                        <?php endif; ?> 
                    <?php endforeach; ?>
                </tr>
            <?php endforeach; ?>
        </table>
</main>
