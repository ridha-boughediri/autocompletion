<?php

session_start();
require_once('race.php');

$race = Race::getRaceByID($_GET['id']);

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script src="./js/script.js"></script>
    <title>Elements</title>
</head>

<body>
    <header></header>
    

    <main>

    <div class="retour">
            <a href="index.php"><button>Retournez à l'accueil</button></a>
            </div>
        <div class="infos">
            <h1><?= $race['nom'] ?></h1>
            <p><span>Nombre d'adption:</span> <?= $race['nbre_inscri'] ?></p>
            <p><span>Force:</span> <?= $race['force'] ?></p>
            <p><span>l'image</span> <img src="./img/<?= $race['images'] ?>" alt="" srcset=""></p>
            
        </div>
    </main>
</body>

</html>