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
          include("connection.php") ?>
    <body>
        <h2> Réservation </h2>
        <form method="post" action="post-reserver.php">
            <p>
                <h3>Choisir le numero de la place à reserver</h3>
                <h3>Période de réservation </h3><br />
                <label>Date de début</label> : <input type="date" name="dated" /><br /><br />
                <label>Date de fin</label> : <input type="date" name="datef" /><br /><br />
                <input type="submit" value="Valider" />
            </p>
        </form>
    </body>
    <?php include("footer.php"); ?>
</html>