<?php

include_once("../functions.php");

$pdo = connectToDB();
$id = $_GET["id"];

$sql = 'SELECT * FROM etudiant WHERE codfil=' . $id . '';
$req = $pdo->prepare($sql);
$req->execute();
$reqs = $req->fetchAll(PDO::FETCH_ASSOC);

$jsonData = json_encode($reqs);

header('Content-Type: application/json');
echo $jsonData;
