<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="utf-8" import="java.util.*,Model.*"%>

<%	ProdottoBean var = (ProdottoBean) request.getAttribute("description");
	request.setAttribute("description", null);
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
			            
				<div class="item-descrizione">
					<p class = "product-title"><%= var.getNome() %></p>
					<p class = "descrizione"><%= var.getDescrizione()%></p>
					<p class = "product-title-price">&euro; <%= String.format("%.02f", var.getPrezzo()) %> <span style="font-size:0.85rem;">iva inc.</span></p>
					<p class = "container-bottone">
						<button class="aggiungi">
							<a href="Cart?action=add&id=<%=var.getCodprodotto()%>&qnt=1&provenienza=catalogo">Aggiungi al carrello</a>
							<img src="Aggiunta-Carrello.png">
							</button>
					</p>
				</div>
			
			</div>
		</div>
    	<jsp:include page="footer.jsp" />	
    
	</body>
	
</html>
