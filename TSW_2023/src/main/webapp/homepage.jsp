<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*,Model.*"%>
<!DOCTYPE html>

<html>

<head>
 	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link rel="stylesheet" href="./style/homepage.css">
	<link rel="shortcut icon" type="image/png" href="logo.jpg">
	<link href="https://fonts.google.com/specimen/Ubuntu?sort=popularity&noto.lang=en_Latn" rel="stylesheet" type="text/css">
	
	<title>Sito TSW|Homepage</title>
    
</head>



	<body>
	
		<jsp:include page="header.jsp"/>	
		
	    <div class="center">
	        
	        <div class="video"> 
	        <video autoplay muted loop id="myVideo">
  			<source src="video1.mp4" type="video/mp4">
			</video>
			</div>
	  	 	
	        <span class="spanHome" id="testo">Sito TSW</span>
	         <hr class="wave-sx" > 
	    </div>		
		
		<div class="parteFinaleHome">
			<button onclick="location.href = 'Catalog.jsp' "class="uname">Vai al Catalogo</button>
		</div>
		
		
		<br><br><br><br><br><br><br>
		<jsp:include page="footer.jsp"/>
	</body>

</html>