<?php
// Assurez-vous que la connexion à la base de données est établie
require("connexion.php");

// Vérification si le formulaire est soumis
if(isset($_POST["envoie"])){
    // Récupération des valeurs des champs du formulaire
    $username = $_POST["username"];
    $password = $_POST["password"];
    
    // Requête pour vérifier si l'utilisateur existe déjà dans la base de données
    $verif  = "SELECT password, prenom, nom FROM user join etudiant on etudiant.numEtu=user.identifiant  WHERE identifiant='$username'";
    $verif1  = "SELECT password, prenom, nom FROM tuteur join etudiant on etudiant.numEtu=tuteur.numEtu  WHERE tuteur.numEtu='$username'";
    
    // Exécution de la requête de vérification
    $result = mysqli_query($con, $verif);
    $result1 = mysqli_query($con, $verif1);
	
	// Vérification si la requête a réussi
	if(mysqli_num_rows($result) > 0)
	{
		$row = mysqli_fetch_assoc($result);
		if($row['password']==$password){
			// Redirection vers la page des demandeurs de tutorat
			$prenom = $row['prenom'];
			$nom = $row['nom'];
			header("location:../PageEtudiant.html?nom=$nom&prenom=$prenom");
			exit(); // Terminer le script après la redirection
		}
		else{
			// Redirection vers la page de connexion car mot de passe incorrect
			header("location:../Connexion.html?error=Password incorrect!!!");
			exit(); // Terminer le script après la redirection
		}
	}
	if(mysqli_num_rows($result1) > 0){
		$row = mysqli_fetch_assoc($result1);
		if($row['password']==$password){
		    	// Redirection vers la page des Tuteur
		    	$prenom = $row['prenom'];
			$nom = $row['nom'];
			header("location:../PageTuteur.html?nom=$nom&prenom=$prenom");
			exit(); // Terminer le script après la redirection
		}
		else{
			// Redirection vers la page de connexion car mot de passe incorrect
			header("location:../Connexion.html?error=Password incorrect!!!");
			exit(); // Terminer le script après la redirection
		}
	}
	// Si l'utilisateur n'existe pas, redirection vers la page de d'inscription
	header("location:../index.html?error=veillez-vous inscrire soit en tuteur ou en demandeur!!!");
	exit();
}

if(isset($_POST["envoieIE"])){
    // Récupération des valeurs des champs du formulaire
    $username = $_POST["identifiant"];
    $password1 = $_POST["password1"];
    $password2 = $_POST["password2"];
    if($password1 != $password2){
    	header("location:../Inscription-etudiant.html?error=Les deux mot de passes sont different!!!");
    }
    else{
    	// inserer le user sur la base des etudiants qui veulent prendre des cours
    	$req = "INSERT INTO user (identifiant, password) VALUES ('$username', '$password1')";
    	if($resulte = mysqli_query($con, $req))
        { 
          header("location:../ListeDispo.html");
        }else{
          header("location:../index.html?error=erreur serveur!!!");
        }
    }
}

if(isset($_POST["envoieIT"])){
    // Récupération des valeurs des champs du formulaire
    $username = $_POST["identifiant"];
    $password1 = $_POST["password1"];
    $password2 = $_POST["password2"];
    if($password1 != $password2){
    	header("location:../Inscription-tuteur.html?error=Les deux mot de passes sont different!!!");
    }
    else{
    	// Récupérer les informations de l'étudiant
    	$info = "SELECT niveau, parcours FROM etudiant WHERE numEtu='$username'";
    	$result = mysqli_query($con, $info);
    	if($result){
		$row = mysqli_fetch_assoc($result);
		$niveau = $row['niveau'];
		$parcours = $row['parcours'];
		if($niveau <= 1){
			header("location:../index.html?error=vous ne pouvez pas etre tuteur!!!");
		}
		else{
			// Insérer le tuteur dans la base de données
			$req = "INSERT INTO tuteur VALUES ('$username', '$niveau', '$parcours', '$password1')";
			if(mysqli_query($con, $req)){
				header("location:../Calendrier.html");
			}
			else{
				header("location:../Inscription-tuteur.html?error=erreur serveur!!!");
			}
		}
        }
    	else{
            // Gérer les erreurs de requête SQL
            header("location:../Inscription-tuteur.html?error=erreur serveur!!!");
        }
    }
}


?>

