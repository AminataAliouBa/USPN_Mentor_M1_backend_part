<?php

$host = 'localhost'; // toujours 
$dbname = 'uspn_mentor'; // le nom de ma database sur phpmyadmin 
$user = 'root'; // l'identifiant de mon phpmyadmin
$pass = '';  // j'ai pas de mdp sur phpmyadmin

$conn = new mysqli($host, $dbname, $user, $pass);

// Vérifiez la connexion
if ($conn->connect_error) {
    die("La connexion a échoué : " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupérez les données du formulaire
    $tutor_id = $_POST['tutor']; // ID du tuteur sélectionné
    $message = $_POST['message']; // Message saisi par l'étudiant

    // Récupérez les détails du tuteur
    $sql = "SELECT email FROM tuteurs WHERE id = $tutor_id";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $email = $row['email'];

        // Envoyez un e-mail au tuteur avec le message
        $subject = "Message de l'étudiant";
        $headers = "From: noreply@uspmentor.com"; // Adresse e-mail de l'expéditeur

        if (mail($email, $subject, $message, $headers)) {
            echo "Votre message a été envoyé avec succès!";
        } else {
            echo "Une erreur s'est produite lors de l'envoi du message.";
        }
    } else {
        echo "Le tuteur sélectionné n'existe pas.";
    }
}

$conn->close(); // Fermez la connexion à la base de données
?>
