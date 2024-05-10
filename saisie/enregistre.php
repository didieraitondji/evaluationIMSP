<?php
session_start();

include_once("../functions.php");

$t = intval($_POST['total']);

$pdo = connectToDB();

for ($i = 0; $i < $t; $i++) {
    $etuNote = "etudiantnote" . $i;
    $etuNote = $_POST[$etuNote];
    $etuMat = "etudiant" . $i;
    $etuMat = $_POST[$etuMat];
    $etumatiere = $_POST['matiere'];

    $sql = "INSERT INTO releve (numma, codmat, note) VALUES (?,?,?)";
    $req = $pdo->prepare($sql);

    try {
        $req->execute([$etuMat, $etumatiere, $etuNote]);
        echo "Note bien stocké !";
    } catch (PDOException $e) {
        echo "Erreur ! " . $e->getMessage();
    }
}

phpRedirect("/saisie/");
