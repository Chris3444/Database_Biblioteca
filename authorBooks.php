<?php
    $title = 'Ricerca libri per autore';
    include('template.php');

    require_once('connection.php');

    if (!empty($_GET)) {
        
        $search = $_GET['search'];
        
        $sql = "SELECT l.isbn, l.titolo, l.anno FROM LIBRO AS l
                    JOIN SCRITTO_DA AS s ON l.isbn = s.cod_lib 
                    JOIN AUTORE AS a ON s.cod_autore = a.id_autore
                        WHERE CONCAT(a.nome,' ', a.cognome) = '$search'
                        ORDER BY l.anno DESC";
        
        $libri = $db->query($sql);
    }
?>

<main class="container">
    <form method="GET" action="authorBooks.php">
        <input type="search" name="search" placeholder="Nome e cognome dell'autore da ricercare">
    </form>

    <?php if ($libri->num_rows > 0): ?>
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
    <?php elseif (isset($_GET['search'])): ?>
        <p style="text-align: center">Nessun libro trovato.</p>
    <?php endif; ?>
</main>