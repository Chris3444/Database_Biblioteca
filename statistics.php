<?php
    $title = 'Statistica';
    include('template.php');

    require_once('connection.php');

    $current_year = date("Y");

    $sql = "SELECT CONCAT(a.nome,' ',a.cognome) AS autore, COUNT(s.cod_lib) AS numero_libri FROM AUTORE AS a
            JOIN SCRITTO_DA AS s ON s.cod_autore=a.id_autore
            GROUP BY a.nome, a.cognome
            ORDER BY numero_libri DESC";
    
    $autori = $db->query($sql);
    
    if (!empty($_GET) && isset($_GET['yearInput'])){
        $year = $_GET['yearInput'];
        $sql = "SELECT * FROM LIBRO
            WHERE anno = '$year'";

        $libri = $db->query($sql);
    }
    
    if (!empty($_GET) && isset($_GET['inizio_range']) && isset($_GET['fine_range'])){
        $inizio_range = $_GET['inizio_range'];
        $fine_range = $_GET['fine_range'];
        
        $sql = "SELECT s.nome, COUNT(p.cod_suc) AS prestiti FROM SUCCURSALE As s
                        JOIN PRESTITO AS p ON p.cod_suc = s.id
                        WHERE p.data_prestito BETWEEN '$inizio_range' AND '$fine_range'
                        GROUP BY s.nome
                        ORDER BY prestiti DESC";

        $succursali = $db->query($sql);
    }
?>


<main class="container">
    <form method="GET" action="statistics.php">
        <h3 >Libri pubblicati in un determinato anno</h3>
        <fieldset role="grid">
            <input type="number" id="yearInput" name="yearInput"  max=<?php echo "$current_year"?> step="1" placeholder="YYYY">
            <input type="submit" value="ricerca">
        </fieldset>
    </form>

    <?php if ($libri): ?>
        <table>
            <thead>
                <tr>
                    <th>ISBN</th>
                    <th>Titolo</th>
                    <th>Anno</th>
                </tr>
            </thead>
            <?php foreach ($libri as $libro): ?>
                <tr>
                    <?php foreach ($libro as $data): ?>
                    <td><?php echo $data?></td>
                    <?php endforeach; ?>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php elseif (isset($_GET['yearInput'])): ?>
        <p style="text-align: center;">Nessun libro trovato</p>
    <?php endif;?>
    
    <hr>
    
    <h3>Numero di prestiti per Succursale in un determinato periodo</h3>
    <form method="GET" action="statistics.php">
        <fieldset class="grid">
            <label>Inizio Periodo: <input type="date" name="inizio_range"></label>
            <label>Fine Periodo: <input type="date" name="fine_range"></label>
            <label style="color: transparent;">easter egg<input type="submit" value="ricerca"></label>
        </fieldset>
    </form>
    <?php if ($succursali): ?>
         <table class="striped">
            <thead>
                <tr>    
                    <th>Succursale</th>
                    <th>Numero prestiti</th>
                </tr>   
            </thead>
            <?php foreach ($succursali as $succursale): ?>
                <tr>
                    <?php foreach ($succursale as $data): ?>
                        <?php if (!empty($data)): ?>
                            <td><?php echo $data?></td>
                        <?php else: ?>
                            <td><?php echo '-'?></td>
                        <?php endif; ?> 
                    <?php endforeach; ?>
                </tr>
            <?php endforeach; ?>
        </table>
    <?php elseif (isset($_GET['inizio_range']) && isset($_GET['fine_range'])): ?>
        <p style="text-align: center">range inserito non valido</p>
    <?php endif; ?>
        

    
    <h3>Numero di libri pubblicati per autore</h3>  
    <table class="striped">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Numero libri</th>
            </tr>
        </thead>
        <?php foreach ($autori as $autore): ?>
            <tr>
                <?php foreach ($autore as $data): ?>
                <td><?php echo $data?></td>
                <?php endforeach; ?>
            </tr>
        <?php endforeach; ?>
    </table>    
</main>