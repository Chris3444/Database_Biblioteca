<?php
    $title = 'Cerca Libro';
    include('template.php');

    require_once('connection.php');

    if (!empty($_GET)) {
        
        $search = $_GET['search'];
        if(!empty($search)){
            $sql = "SELECT * FROM LIBRO
                        WHERE titolo LIKE '%$search%'";
        } 
        else {
            $sql = "SELECT * FROM LIBRO";
        }
        
        $libri = $db->query($sql);
    }
?>


<main class="container">
    <h1 style="text-align: center;">Ricerca libro</h1>
    <form method="GET" action="searchBook.php">
        <input type="search" name="search" placeholder="Titolo libro da cercare">
    </form>

    <?php if ($libri->num_rows): ?>
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
