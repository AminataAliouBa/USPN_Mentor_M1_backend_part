<?php
// Assurez-vous que la connexion à la base de données est établie
require("connexion.php");

// Requête pour récupérer les tuteurs et leurs noms depuis la base de données
$req = "SELECT t.numEtu AS id, e.nom AS nom, t.parcours AS parcours
        FROM tuteur t
        INNER JOIN etudiant e ON t.numEtu = e.numEtu";

$result = mysqli_query($con, $req);

// Vérifier si la requête a réussi
if ($result) {
    // Tableau pour stocker les tuteurs
    $tuteurs = array();

    // Parcourir les résultats de la requête et ajouter chaque tuteur au tableau
    while ($row = mysqli_fetch_assoc($result)) {
        $tuteur = array(
            'id' => $row['id'],
            'nom' => $row['nom'],
            'parcours' => $row['parcours']
        );
        array_push($tuteurs, $tuteur);
    }

    // Convertir le tableau en format JSON et l'afficher
    echo json_encode($tuteurs);
} else {
    // En cas d'erreur, renvoyer une réponse JSON avec un message d'erreur
    $response = array('error' => 'Impossible de récupérer la liste des tuteurs.');
    echo json_encode($response);
}
?>

