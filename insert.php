<?php
    // Connexion à la base de données
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "chat";

    $conn = new mysqli($servername, $username, $password, $dbname);

    // Vérifier la connexion
    if ($conn->connect_error) {
        die("Connexion échouée: " . $conn->connect_error);
    }

    // Récupérer le texte et l'utilisateur envoyé par AJAX
    $texte = $_POST['texte'];
    $user_id = $_POST['user_id']; // Peut être une chaîne de caractères ou un entier

    // Préparer et exécuter la requête d'insertion
    $stmt = $conn->prepare("INSERT INTO textes (texte, user_id) VALUES (?, ?)");
    $stmt->bind_param("ss", $texte, $user_id); // Utilisez "si" si user_id est un entier

    if ($stmt->execute()) {
        echo "Nouveau texte ajouté avec succès.";
    } else {
        echo "Erreur lors de l'ajout du texte: " . $conn->error;
    }

    $stmt->close();
    $conn->close();
?>
