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
        <h2> Inscription </h2>
        <form method="post" action="post-inscription.php">
            <p>
                <h3>Vos identifiants</h3><br />
                <label>Identifiant</label> : <input type="text" name="identifiant" maxlength="20"/><br /><br />
                <label>Mot de Passe</label> : <input type="password" name="mdp" maxlength="20" /><br />

                <h3>Pour vous connaitre un peu plus: </h3><br />
                <label>Votre Nom</label> : <input type="text" name="nom" maxlength="20" /><br /><br />
                <label>Votre Prenom</label> : <input type="text" name="prenom" maxlength="20" /><br /><br />
                <label>Votre Adresse</label> : <input type="text" name="adresse" placeholder="Ex : rue de charrone "maxlength="50" /><br /><br />
                <label>Votre Code Postal</label> : <input type="text" name="cp" placeholder="Ex : 77000" maxlength="5" /><br /><br />
                <label>Votre Numero de tel</label> : <input type="text" name="tel" placeholder="Ex : 0754126987" maxlength="10" /><br /><br />
                <label>Votre Adresse Mail</label> : <input type="email" name="mail" placeholder="Ex : prenom.nom@gmail.com" maxlength="50" /><br /><br />
                <label>Mot Clé (en cas de perte de mdp)</label> : <input type="text" name="motcle" placeholder="Ex : surnom" maxlength="20" /><br /><br />
                <input type="submit" value="Valider" />
            </p>
        </form>
    </body>
    <?php include("footer.php"); ?>
</html>