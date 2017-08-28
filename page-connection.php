<!DOCTYPE html>
<html>
       <head>
        <meta charset="utf-8" />
       <link rel="icon" href="img/parking.ico" />
		<link rel="stylesheet" href="css/style.css" />
	<title>Parking League</title>
	<h1> Parking League </h1>
    </head>

    <?php include("menu.php"); ?>
    <body>
        <h2> Se connecter </h2>
        <form method="post" action="post-connection.php">
            <p>
                <h3>Vos identifiants</h3><br />
                <label>Identifiant</label> : <input type="text" name="identifiant" maxlength="20" /><br /><br />
                <label>Mot de Passe</label> : <input type="password" name="mdp" maxlength="20" /><br /><br />
                <input type="submit" value="Valider" /> <a href="mdp-perdu.php">Mot de passe perdu ?</a>
            </p>
        </form>
    </body>
    <?php include("footer.php"); ?>
</html>