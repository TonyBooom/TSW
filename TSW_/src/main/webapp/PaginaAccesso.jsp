<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Area Privata</title>
</head>
<body>

	<h1> Benvenuto <%=session.getAttribute("utente") %></h1>
	
	<p> Login effettuato </p>
	
	<form method=post action=Logout.jsp>
	<button type="submit">Logout</button>
	</form>
	

</body>
</html>