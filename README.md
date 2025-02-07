# USPN-mentor
  ` plateforme intra-universitaire pour tout les étudiants.`
 
 ## Backend
 * Mysql
 * PHP
 * Apache2
 
 # Execution
 * Installer Mysql, PHP, Apache2. 
 * Deplacer le dossier dans /var/www/html/. 
 * Taper sur le navigateur http://localhost/index.hmtl. 
 
 ## Version
 * 1.2
 
 ## Description
 * Nous avons une base de données de tous les étudiants. 
 * soit un etudiant décide de devenir tuteur et s'incrit. 
 * soit un étudiant souhaite avoir un tuteur et s'inscrit pour faire la demande et accéder à la liste de tous les tuteurs disponible. 
 * Soit l'etudiant ou le tuteur est déjà inscrit et dans ce cas, il s'authentifit....
 
 ## Schéma de la base de données
 <img src=database/schema.png alt="schema"/>
 
 ## En cours de développement
 - Reste à faire: 
 * Afficher la liste de tous les tuteur sur la page ListeDispo.html (boutton reserver de la page d'accueil des etudiants). 
 * Afficher la liste de tous les étudiant désirant prendre des tutorats sur la page ListeEtudiant.html qu'on va ajouter. 
 * Protéger les mots de passe avec un algorithme de chiffrement comme sha256 ou md5. 
 * Afficher les mails reçus et envoyés. (suppression, spam non implémenté)
 * Enrégistrer les creneaux pris sur le calendrier et les afficher...	
 

 
