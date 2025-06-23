<?php
    
    $title = 'Gestione Prestiti';
    include('template.php');

    require_once('connection.php');

    $sql = "SELECT s.nome, l.titolo, p.cod_matricola, p.data_prestito, p.data_restituzione FROM PRESTITO As p
            JOIN SUCCURSALE AS s ON p.cod_suc=s.id
            JOIN COPIA AS c ON p.cod_copia=c.codice
            JOIN LIBRO AS l ON c.isbn=l.isbn";

    $prestiti = $db->query($sql); 

    session_start();
    $mode = isset($_SESSION['current_mode']) ? $_SESSION['current_mode'] : 0;
    
    if(!empty($_POST) && isset($_POST['mode'])) {
        $requested_mode = ($_POST['mode'] === 'add') ? 1 : 2;
        
        // Se la modalità richiesta è uguale a quella attuale, torna a 0
        $mode = ($mode === $requested_mode) ? 0 : $requested_mode;

        $_SESSION['current_mode'] = $mode;
    }
?>

<main class="container">
        <form action="loansManager.php" method="post">
            <button type="submit" name="mode" value="add"> Aggiungi </button>
            <button type="submit" name="mode" value="remove" 
                    style="border-color: crimson; background-color: crimson;"
            >Rimuovi</button>
        </form> 

        <?php if ($mode == 1): ?>
            <article>
                <form action="loansManager.php" method="post">
                    <label>Data prestito: <input type="date" name="data_prestito"></label>
                    <button type="submit" name="action" value="add">Aggiungi</button>
                </form>
            </article>
        <?php elseif ($mode == 2): ?>
            <form action="loansManager.php" method="post">
                <button type="submit" name="action" value="remove">Elimina</button>
            </form>
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
