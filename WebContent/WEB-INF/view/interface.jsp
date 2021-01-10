<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chat</title>
</head>
<body>


	<iframe src="messages.jsp" 
		width="700px" height="400px"> </iframe>
	<form action="messages.jsp" method="post" target ="_self" >
		<label>Envoyer Votre message</label> <input type="text" name="message" /> <input
			type="submit" value="Envoyer" />
	</form>
</body>
</html>