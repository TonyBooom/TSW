<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
   <meta name="viewport" content="width=device-width">
   <!--  <link rel="stylesheet" href="log.css">--> 
     <title>Login</title>
   
   <% 
   	   if(request.getAttribute("utente") == "assente")
	   response.getWriter().append("<h1> Utente non registrato! </h1>");
   	   else if(request.getAttribute("utente") == "fallito")
	   response.getWriter().append("<h1> Credenziali Errate </h1>");
   	   
	%>
</head>

	<body class="stile">
    <section>
        <div class="">
        </div>

        <div class="contentBox">
            <div class="formBox">
                <h2>Accedi</h2>
                <form action="Login" method="post">
                    <div class="inputBox">
                        <span>Username</span>
                        <input type="text" name = "username">
                    </div>
                    <div class="inputBox">
                        <span>Password</span>
                        <input type="password" name = "password">
                    </div>
                    
                    <div class="inputBox">
                        <input type="submit" value="Invia">
                    </div>
                    <div class="inputBox">
                        <p>Non hai un account? <a href="Registrazione.jsp">Registrati</a></p>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>
</html>