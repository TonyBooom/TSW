<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logout</title>
</head>
<body>
<%session.getAttribute("utente");
  session.invalidate();%>
  
  <h1>Hai effettuato il logout!</h1>
  
  <a href="./Login.jsp" >Torna alla pagina d'accesso</a>
  
 

</body>
</html>