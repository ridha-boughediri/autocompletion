<?php

abstract Class Model {

    private static $connexion;

    private static function getConnexion(){
        $server = "localhost";
        $user = "root";
        $mdp = "";
        $bdd = "autocompletion";

        $dsn = "mysql:host=$server; dbname=$bdd; charset=UTF8";
        self::$connexion = new PDO($dsn, $user, $mdp);

        return self::$connexion;
    }
    
    public static function selectQuery($sql, $params=null)
    {
        if($params===null)
        {
            $res = self::getConnexion() -> query($sql);
                }
                else {
                    $res = self::getConnexion() -> prepare($sql);
                    $res -> execute($params);
                }
                return $res;
    }
}

?>
