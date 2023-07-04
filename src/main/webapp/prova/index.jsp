
<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8">
  <title>Registrazione Utente</title>
  <link rel="stylesheet" href="styles.css">
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="script.js"></script>
</head>
<body>
  <h1>Registrazione Utente</h1>
  <form id="registration-form">
    <div>
      <label for="name">Nome:</label>
      <input type="text" id="name" name="name">
    </div>
    <div>
      <label for="email">Email:</label>
      <input type="email" id="email" name="email">
    </div>
    <div>
      <label for="password">Password:</label>
      <input type="password" id="password" name="password">
    </div>
    <div>
      <input type="submit" value="Registrati">
    </div>
  </form>
  <div id="result"></div>
  
  <script>
  $(document).ready(function() {
	  // Gestione dell'invio del modulo
	  $('#registration-form').submit(function(e) {
	    e.preventDefault(); // Impedisci il comportamento predefinito del modulo
	    
	    // Effettua la chiamata AJAX per verificare la validità del modulo
	    $.ajax({
	      url: 'verifica_registrazione.php', // Indirizzo dello script PHP per la verifica del modulo
	      type: 'POST',
	      data: $(this).serialize(), // Serializza i dati del modulo
	      success: function(response) {
	        // Mostra il risultato della verifica
	        $('#result').html(response);
	      },
	      error: function(xhr, status, error) {
	        console.log(error); // Stampa eventuali errori nella console
	      }
	    });
	  });
	});
  </script>
</body>
</html>