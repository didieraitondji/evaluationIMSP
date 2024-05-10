<?php

include_once("../functions.php");

$pdo = connectToDB();
$idu = $_GET["idu"];
$idd = $_GET["idd"];

$sql = 'SELECT * FROM etudiant JOIN releve WHERE etudiant.codfil=' . $idu . ' AND etudiant.numma = releve.numma AND releve.codmat=' . $idd . '';
$req = $pdo->prepare($sql);
$req->execute();
$reqs = $req->fetchAll(PDO::FETCH_ASSOC);

$jsonData = json_encode($reqs);

header('Content-Type: application/json');
echo $jsonData;
