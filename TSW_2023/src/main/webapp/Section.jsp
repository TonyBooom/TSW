<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8" import="java.util.*,Model.*"%>

<%  CategoriaBean var = (CategoriaBean) request.getAttribute("section");
	request.setAttribute("section", null);
	%>

<!DOCTYPE html>

<html>

	<head>
	
    	<meta charset="utf-8">
	 	<link href = "style/description.css" rel = "stylesheet">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    	<link rel="shortcut icon" type="image/png" href="logo.png">
    	<title><%= var.getNome()%></title>
    	
	</head>
	
	
	<body>
	
		<jsp:include page="header.jsp" />

		<p class = "product-title-nascosto"><%= var.getNome() %></p>
		
		<div class="padre"> 
		
			<div class = "container">
			      
				<div class ="item_descr_pagina">
					<img class="image" src="<%= var.getImmagine().getPath()%>">
				</div>
			            
				</div>
			
			</div>
    	<jsp:include page="footer.jsp" />	
    
	</body>
	
</html>