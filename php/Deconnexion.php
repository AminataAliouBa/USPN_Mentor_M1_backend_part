<?php
	session_start();
	session_destroy();
	header("location:../index.html?error=Deconexion reussie!!!");
	exit();
?>
