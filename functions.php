<?php
// fonction de connexion à la base de données
function connectToDB()
{
    $server = "localhost";
    $dbname = "evaluation_imsp";
    $mdp = "";
    $user = "root";

    try {
        $pdo = new PDO("mysql:host=$server;dbname=$dbname", $user, $mdp);
    } catch (PDOException $e) {
        echo $e->getMessage();
    }

    return $pdo;
}

function phpRedirect($url, $statusCode = 302)
{
    header('Location: ' . $url, true, $statusCode);
    exit();
}
