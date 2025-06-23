<?php
    $title = 'Prestiti range temporale';
    include('template.php');

    require_once('connection.php');

    if(!empty($_GET)) {
        $inizio_range = $_GET['inizio_range'];
        $fine_range = $_GET['fine_range'];

        if ($inizio_range <= $fine_range) {
            $sql = "SELECT s.nome, l.titolo, p.cod_matricola, concat(u.nome, ' ', u.cognome), p.data_prestito, p.data_restituzione FROM PRESTITO As p
                    JOIN SUCCURSALE AS s ON p.cod_suc = s.id
                    JOIN COPIA AS c ON p.cod_copia = c.codice
                    JOIN LIBRO AS l ON c.isbn = l.isbn
                    JOIN UTENTE as u on p.cod_matricola = u.cod_matricola";

            if (!empty($inizio_range) && !empty($fine_range)) {
                $sql .= "\nWHERE p.data_prestito BETWEEN '$inizio_range' AND '$fine_range'";
            }
            else {
                $current_date = date("Y/m/d");
                $sql .= "\nWHERE p.data_restituzione > '$current_date'";
            }

            $prestiti = $db->query($sql); 
        }
        else {
            $prestiti = false;
        }
    }
?>

<main class="container">            
    <form method="GET" action="loansVisualizer.php">
        <fieldset class="grid">
            <label>Inizio Periodo: <input type="date" name="inizio_range"></label>
            <label>Fine Periodo: <input type="date" name="fine_range"></label>
            <label style="color: transparent;">easter egg<input type="submit" value="ricerca"></label>
        </fieldset>
    </form>

    <?php if ($prestiti): ?>
        <table class="striped">
            <thead>
                <tr>    
                    <th>Succursale</th>
                    <th>Copia</th>
                    <th>Matricola</th>
                    <th>Studente</th>
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
    <?php elseif (!empty($_GET)): ?>
        <p style="text-align: center">range inserito non valido</p>
    <?php endif; ?>
</main>