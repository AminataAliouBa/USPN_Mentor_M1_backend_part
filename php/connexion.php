<?php
$servername = "localhost"; // Nom du serveur de la base de données (généralement localhost)
$username = "uspn"; // Nom d'utilisateur de la base de données
$password = "root"; // Mot de passe de la base de données
$dbname = "uspn_mentor"; // Nom de la base de données

// Créez une connexion à la base de données
$con = mysqli_connect($servername, $username, $password, $dbname);

// Vérifiez la connexion
if (!$con) {
    die("Erreur de connexion : " . mysqli_connect_error());
}
/*
$verif  = "SELECT * FROM etudiant"; // Notez la correction de la requête

// Exécution de la requête de vérification
$result = mysqli_query($con, $verif);
echo mysqli_num_rows($result)." Enregistrements retournés";
while($tab=mysqli_fetch_array($result))
{
    echo $tab['prenom'].', '.$tab['nom']."\n";
}
*/
?>
