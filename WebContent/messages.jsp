<%@page import="org.apache.catalina.connector.RequestFacade"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page
	import="com.model.Message,  java.util.List, java.util.ArrayList , javax.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Messages</title>
</head>
<body>
	<h3>Mon chat à moi que j'ai</h3>
	<%!List<Message> listDesMessages = new ArrayList<>();
	Message message = new Message();%>
	<%
		String message = (String) request.getParameter("message");
		String pseudo = (String) session.getAttribute("pseudo");
		listDesMessages.add(new Message(message, pseudo));
		for (Message m : listDesMessages) {
			if (m.getMessage() != null)
				out.print(m.getAuteur() + ":" + m.getMessage());
	%><br>
	<%
		}
	%>

</body>
</html>