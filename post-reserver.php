<?php
	session_start();
?>
<!DOCTYPE html>
<html>
		<head>
		<meta charset="utf-8" />
		<link rel="icon" href="img/parking.ico" />
		<link rel="stylesheet" href="css/style.css" />
	<title>Parking League</title>
	<h1> Parking League </h1>
	</head>

	<?php include("menu.php");
		  include("connection.php");  ?>

	<body>
		<h2> Réservation </h2><br/>

		<?php
		$id_uti = $_SESSION['id_uti'];
		$dated = $_POST['dated'];
		$datef = $_POST['datef'];
		$statut = 0;


			$req = $bdd->prepare('INSERT INTO attente(id_uti, dateDebut, dateFin, statut) VALUES (:id_uti, :dateDebut, :dateFin, :statut)');
			$req -> execute(array(
				'id_uti'=> $id_uti,
				'dateDebut'=> $dated,
				'dateFin'=> $datef,
				'statut' => $statut));

			echo 'Votre réservation a bien été prit en compte, veuillez attendre l\'acceptation de l\'admin. <a href="index.php">Retour à l\'accueil</a>';

		?>
		</p>
	</body>
    <?php include("footer.php"); ?>
</html>
