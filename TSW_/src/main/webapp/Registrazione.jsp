<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
      
	
<!DOCTYPE html>
<html>
<head>
 <!-- <link rel="stylesheet" href="reg.css">   -->
<meta charset="ISO-8859-1">
<title>Registrati</title>
</head>
<body class="stile">

	<div class="imgBox">
	
	</div>
    <form class="formBox" action= RegistrazioneC method="post" id="registerForm">
    	<div id="form1">
        	<h1 id="accedi">Registrati</h1>
        	<table>
            		<tr><td>
            			<div>
                			<input type="email" placeholder="Email" id="emailInput" name="email" required>
                			  <% 
   								   if(request.getAttribute("utente") == "esiste")
								   response.getWriter().append("<h1>Utente già presente nel DB</h1>");
						      %>
            			</div>
            		</td></tr>
            		<tr><td><input type="password" placeholder="Password" id="passwordInput" name="password" required></td></tr>
            		
    				<tr><td><input type="text" placeholder="Nome" id="nome" name="nome" required></td></tr>
            		
                	<tr><td><input type="text" placeholder="Cognome" id="cognome" name="cognome" required></td></tr>
					            	
                	<tr><td><input type="text" placeholder="Indirizzo" id="indirizzo" name="indirizzo" required></td></tr>
                	
                	<tr><td><input type="text" placeholder="Citta" id="citta" name="citta" required></td></tr>
                	
                	<tr><td><input type="text" placeholder="Provincia" id="provincia" name="provincia" required></td></tr>
                	
                	<tr><td><input type="text" placeholder="Cap" id="cap" name="cap" required></td></tr>
            		
            </table>
        	<br><br>
        	<div>
            	<input type="submit" value=Registrati>
            	<input type=reset>
        	</div>
        	
        </div>
    	</form>

</body>
</html>