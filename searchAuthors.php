<?php
    $title = 'Cerca Autore';
    include('template.php');

    require_once('connection.php');

    if (!empty($_GET)) {
        
        $search = $_GET['search'];
        
        $sql = "SELECT id_autore, CONCAT(nome,' ',cognome), nato_a, data_nascita FROM AUTORE
                WHERE id_autore LIKE '%$search%' OR CONCAT(nome,' ',cognome) LIKE '%$search%' OR nato_a LIKE '%$search%' OR data_nascita LIKE '%$search%'
                ORDER BY data_nascita DESC";
       
        
        $autori = $db->query($sql);
    }
?>
<main class="container">
    <form method="GET" action="searchAuthors.php">
        <input type="search" name="search" placeholder="Cerca autore">
    </form>

    <?php if ($autori->num_rows): ?>
        <table>
            <thead>
                <tr>
                    <th>ID autore</th>
                    <th>Nome</th>
                    <th>Luogo di nascita</th>
                    <th>Data di nascita</th>
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
    <?php elseif (isset($_GET['search'])): ?>
        <p style="text-align: center">Nessun autore trovato.</p>
    <?php endif; ?>
</main>