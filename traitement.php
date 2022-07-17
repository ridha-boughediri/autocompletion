<?php
include_once('race.php');
$race = Race:: getAllRaces();
$raceJSON = json_encode($race);
echo $raceJSON;
?>