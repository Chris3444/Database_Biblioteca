<?php
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

<!DOCTYPE html>
<html>  
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Cerca Libro</title>
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
             <form method="GET" action="searchBook.php">
                <input type="search" name="search" placeholder="Titolo libro da cercare">
            </form>

            <?php if ($libri->num_rows): ?>
                 <table>
                    <tr>
                        <th>ISBN</th>
                        <th>Titolo</th>
                        <th>Anno</th>
                    </tr>
                    <?php foreach ($libri as $libro): ?>
                        <tr>
                            <?php foreach ($libro as $data): ?>
                            <td><?php echo $data?></td>
                            <?php endforeach; ?>
                        </tr>
                    <?php endforeach; ?>
                </table>
            <?php else: ?>
                <p>Nessun libro trovato.</p>
            <?php endif; ?>
        </main>
</html>