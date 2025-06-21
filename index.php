<?php
    require_once('connection.php');  
?>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Biblioteca</title>
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
                    <li><strong>Biblioteca</strong></li>
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
        </main>            
        
    </body>
</html>