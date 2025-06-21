<?php
    require_once('connection.php');

    if (!empty($_GET)) {
        
        $search = $_GET['search'];
        
        $sql = "SELECT l.isbn, l.titolo, l.anno FROM LIBRO AS l
                    JOIN SCRITTO_DA AS s ON l.isbn = s.cod_lib 
                    JOIN AUTORE AS a ON s.cod_autore = a.id_autore
                        WHERE CONCAT(a.nome,' ', a.cognome) = '$search'
                        ORDER BY l.anno
                        ";
        
        
        $libri = $db->query($sql);
    }
?>

<!DOCTYPE html>
<html>  
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Ricerca per Autore</title>
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
            <br>
             <form method="GET" action="authorBooks.php">
                <input type="search" name="search" >
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