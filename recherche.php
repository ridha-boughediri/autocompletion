<?php 
session_start();
require_once('race.php');
if(isset($_GET['search'])) {
    $search = htmlspecialchars($_GET['search']);
    $_SESSION['race'] = Race::getRaceBySearch($search);
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script src="./js/script.js" ></script>
    <title>Recherche</title>
</head>
<body>
    <header></header>
    <div class="retour">
            <a href="index.php"><button>Retournez à l'accueil</button></a>
            </div>

    <main>
        <?php 
        if((isset($_SESSION['race'])) && (isset($_SESSION['race'][0])))
        :?>
        <table>
            <thead>
                <th>Nom de la race</th>
                <th>nbre_inscri</th>
                <th>force(s)</th>
                <th>images</th>
            </thead>
            <tbody>


            
                <?php foreach($_SESSION['race'] as $team) : ?>
                <tr>
                <td><a href="element.php?id=<?=$team['id']?>"><?=$team['nom']?></a></td>
                <td><a href="element.php?id=<?=$team['id']?>"><?=$team['nbre_inscri']?></a></td>
                <td><a href="element.php?id=<?=$team['id']?>"><?=$team['force']?></a></td>
                <td><a href="element.php?id=<?=$team['id']?>"><img src="./img/<?=$team['images']?>" alt="" srcset=""></a></td>
                </tr>
                <?php endforeach ?>
            </tbody>
        </table>
        <?php else : ?>
            <h2>Aucun Résultat</h2>
            <?php endif ?>
            
    </main>
</body>
</html>