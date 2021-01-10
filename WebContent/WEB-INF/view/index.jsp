<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
</head>
<body>
<h1>Bienvenue dans mon app de Chat </h1>
<form action="/Chat/"  method ="post">
<label>Entrez votre pseudo pour vous connecter</label><br/>
<input type="text" name="pseudo"/>
<input type="submit" value="connecter"/>

</form>
</body>
</html>