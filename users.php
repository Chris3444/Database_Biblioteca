<?php
    $title = 'Lista utenti';
    include('template.php');

    require_once('connection.php');

    $sql = "SELECT * FROM UTENTE";
    $utenti = $db->query($sql);
?>


<main class="container">
    <h1 style="text-align: center;">Utenti</h1>
    <table class="striped">
        <thead>
            <tr>
                <th>Matricola</th>
                <th>Nome</th>
                <th>Cognome</th>
                <th>Indirizzo</th>
                <th>Telefono</th>
                <th>Data di nascita</th>
            </tr>   
        </thead>
        <?php foreach ($utenti as $utente): ?>
            <tr>
                <?php foreach ($utente as $data): ?>
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
