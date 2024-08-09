<?php
    // Connexion à la base de données
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "chat";

    $conn = new mysqli($servername, $username, $password, $database);

    // Vérifier la connexion
    if ($conn->connect_error) {
        die("Erreur de connexion : " . $conn->connect_error);
    }

    // Récupérer les données de la table "textes"
    $sql = "SELECT texte, user_id FROM textes ORDER BY id ASC";  // Assurez-vous que les messages sont dans l'ordre chronologique
    $result = $conn->query($sql);

    $texts = array();
    while ($row = $result->fetch_assoc()) {
        $texts[] = $row;
    }

    echo json_encode($texts);

    $conn->close();
?>
