<?php 
session_start();

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="./css/style.css">
    <script src="./js/script.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <title>Race de chien</title>
</head>

<body>
    <header class="header">
    
    </header>

    <div class="github">
        <button type="submit">github<a href="https://github.com/ridha-boughediri/autocompletion"><i class="fa-brands fa-github"></i></a></button>

    </div>
    <main>
        <h1>Votre race de chien</h1>

        <form action="./recherche.php" class="search-bar" method="GET">
            <input autocomplete="off" type="search" name="search" pattern=".*\S.*" id="search">
            <button class="search-btn" type="submit" name="searchB">
                <span>Search</span>
            </button>
        </form>
        <div id="corList"></div>
        <div id="corListe"></div>
    </main>

   
</body>

</html>