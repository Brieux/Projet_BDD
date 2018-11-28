<!doctype html>
<html lang="fr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div id="MenuIC">
    Inscription:
    <form action="inscription.php"method="post">
      Email:<input type = "email" id="email" value="Email here"><br/>
      Pseudo:<input type = "text" id="pseudo" value="Pseudo"><br/>
      Password:<input type="password" id="pass" value="meh"><br/>
      <input type="submit" value="S'inscrire">
    </form>
    <br/>
    Connexion:
    <form action="connexion.php"method="post">
      Pseudo:<input type = "text" id="pseudo" value="Pseudo"><br/>
      Password:<input type="password" id="pass" value="meh"><br/>
      <input type="submit" value="Se connecter">   
    </form>
  </div>
  <div id="Menu">
    <ul>
      <li><a href="propService.php">Proposer un service</a></li>
      <li><a href="propBien.php">Proposer un bien</a></li>
      <li><a href="service.php">Utiliser un service</a></li>
      <li><a href="bien.php">Utiliser un bien</a></li>
      <li><a href="aled.php">ALED</a></li>
    </ul>
  </div>

</body>
</html>