<?php
    include('template.php');
?>

<style>
    @keyframes bounce {
        0%, 20%, 50%, 80%, 100% {
            transform: translateY(0);
        }
        40% {
            transform: translateY(-10px);
        }
        60% {
            transform: translateY(-5px);
        }
    }
</style>



<main class="container" style="text-align: center; padding-top: 0%">    <!-- Freccia che indica la navbar -->
    <div style="display: flex; align-items: center; justify-content: center; margin-bottom: 30px;">
        <div style="font-size: 5rem; animation: bounce 1.5s infinite;">
            <img src="icon/up-arrow.png" alt="freccia su">
        </div>
        <span style="font-size: 0.9rem; margin-left: 15px; margin-top: 60px; font-style: italic;">
            esplora il sito <br> da qui
        </span>
    </div>
    
    
    <h1 style="font-size: 4rem; font-weight: bold; padding-top: 125px;">
        DataBase Biblioteca
    </h1>
</main>