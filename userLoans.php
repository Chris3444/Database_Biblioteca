<?php
    $title = 'Cerca prestiti utente';
    include('template.php');

    require_once('connection.php');

    if (!empty($_GET)) {
        
        $search = $_GET['search'];
        
        $sql = "SELECT * FROM UTENTE as u
                WHERE u.cod_matricola = '$search' OR concat(u.nome, ' ', u.cognome) LIKE '%$search%'";
        
        
        $utenti = $db->query($sql);

        if ($utenti->num_rows == 1) {
            $utente = $utenti->fetch_assoc();
            $matricola = $utente['cod_matricola'];

            $sql = "SELECT * FROM PRESTITO
                    WHERE cod_matricola = '$matricola'";

            $prestiti = $db->query($sql);
        }
        else {
            $utente = false;
        }
    }
?>


<main class="container">
    <form method="GET" action="userLoans.php">
        <input type="search" name="search" placeholder="Matricola o Nome e cognome utente">
    </form>

    <?php if ($utente): ?>
        <table>
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
            <tr>
                <?php foreach ($utente as $data): ?>
                    <?php if (!empty($data)): ?>
                        <td><?php echo $data?></td>
                    <?php else: ?>
                        <td><?php echo '-'?></td>
                    <?php endif; ?> 
                <?php endforeach; ?>
            </tr>
        </table>
        <br>
        <?php if ($prestiti->num_rows > 0): ?>
            <h3>Prestiti attivi:</h3>
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
        <?php else: ?>
            <h3 style="text-align: center;">Nessun prestito attivo</h3>
        <?php endif; ?>
    <?php else: ?>
        <p>Nessun utente trovato.</p>
    <?php endif; ?>
</main>
