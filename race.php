<?php 
require_once 'Model.php';

Class Race extends Model 
{
    public static function getAllRaces(){
        $sql = "SELECT * FROM race_chien";
        $res = self::selectQuery($sql);
        $search_result = $res -> fetchAll(PDO::FETCH_ASSOC);
        return $search_result;
    }

    public static function getRaceBySearch($search){
        $sql = "SELECT * FROM race_chien
                WHERE id LIKE ?
                OR nom LIKE ?
                OR nbre_inscri LIKE ?
                OR images LIKE ?";

                $params = array("%". $search. "%", "%". $search. "%", "%". $search. "%", "%". $search. "%");

                $res = self::selectQuery($sql, $params);
                $search_result = $res -> fetchAll(PDO::FETCH_ASSOC);
                return $search_result;
    }

    public static function getRaceById($id) {
        $params = array($id);
        $sql = "SELECT * FROM race_chien WHERE id LIKE ?";
        $res = self::selectQuery($sql, $params);
        $search_result = $res ->fetch(PDO::FETCH_ASSOC);
        return $search_result;
    }
}
?>

