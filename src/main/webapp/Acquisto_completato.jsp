<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8" import="java.util.*,Model.*"%>
<!DOCTYPE html>
<html>

	<head>
		<script src="https://unpkg.com/jspdf-invoice-template@1.4.0/dist/index.js"></script>
 		<meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link rel="stylesheet" href="style/acquisto_completato.css">
	    <link rel="shortcut icon" type="image/png" href="logo.png">
		<title>Sito TSW|Acquisto</title>
	</head>
	
	<body>
		<jsp:include page="header.jsp"/>
		
			<div class="grazie">
				<span> Grazie per aver acquistato dal Sito TSW!</span>
			</div>

			<div class="acquisto">
				<img src="./thanks.png" alt="thank you" class="responsive">
			</div>
			
			<div class="torna">
				<button onclick="generatePDF()" class="uname">Scarica Fattura</button>
			</div>
			
			<div class="torna">
				<button onclick="location.href = 'Catalogo.jsp' "class="uname">Torna al Catalogo</button>
			</div>
		

			
		<jsp:include page="footer.jsp"/>
	</body>
	
	<script>
		function generatePDF(){
			var pdfObject = jsPDFInvoiceTemplate.default(props); //returns number of pages created
			
			console.log("Object created: ",pdfObject);
		}
	 
	 var props = {
	 		 
			 
  	 outputType:  jsPDFInvoiceTemplate.OutputType.Save,
   	 returnJsPDFDocObject: true,
   	 fileName: "Fattura 2023",
     orientationLandscape: false,
     compress: true,
     
     logo: {
    	inAllPages: true, 
    	src:"./logo.jpg",
        type: 'JPG', //optional, when src= data:uri (nodejs case)
        width: 30, //aspect ratio = width/height
        height: 40,
        margin: {
            top: 0, //negative or positive num, from the current position
            left: 0 //negative or positive num, from the current position
        }
    },
    stamp: {
        inAllPages: true, //by default = false, just in the last page
        src: "https://raw.githubusercontent.com/edisonneza/jspdf-invoice-template/demo/images/qr_code.jpg",
        type: 'JPG', //optional, when src= data:uri (nodejs case)
        width: 20, //aspect ratio = width/height
        height: 20,
        margin: {
            top: 0, //negative or positive num, from the current position
            left: 0 //negative or positive num, from the current position
        }
    },
    business: {
        name: "Sito TSW",
        address: "indirizzo azienda",
        phone: "telefono azienda",
        email: "email azienda",
        email_1: "informazione 1",
        website: "sito web azienda",
    },
    contact: {
        label: "Fattura per:",
        name: ,
        address: "Indirizzo",
        phone: "numero telefono",
        email: "email cliente",
        otherInfo: "altre infro",
    },
    invoice: {
    	let date = new Date().toLocaleDateString();
        label: "Fattura #: ",
        num: "inserire numero progressivo" ,
        invDate: "Inserire Data acquisto",
        invGenDate: date,
        headerBorder: false,
        tableBodyBorder: false,
        header: [
          {
            title: "#", 
            style: { 
              width: 10 
            } 
          }, 
          { 
            title: "Nome",
            style: {
              width: 30
            } 
          }, 
          { 
            title: "Descrizione",
            style: {
              width: 80
            } 
          }, 
          { title: "Prezzo"},
          { title: "Quantità"},
          { title: "Totale"}
        ],
        table: Array.from(Array(1), (item, index)=>([
            index + 1,
            "Nome prodotto ",
            "Descrizione prodotto",
            "costo prodotto €",
            "Quantità",
            "Costo totale €"
        ])),
        additionalRows: [{
            col1: 'Totale:',
            col2: '145,250.50',
            col3: 'ALL',
            style: {
                fontSize: 14 //optional, default 12
            }
        },
        {
            col1: 'IVA:',
            col2: '22',
            col3: '%',
            style: {
                fontSize: 10 //optional, default 12
            }
        },
        {
            col1: 'Totale senza IVA:',
            col2: '116,199.90',
            col3: 'ALL',
            style: {
                fontSize: 10 //optional, default 12
            }
        }],
        invDescLabel: "Note Fattura",
        invDesc: "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary.",
    },
    footer: {
        text: "Fattura creta digitalmente.",
    },
    pageEnable: true,
    pageLabel: "Pagina ",
};
		
				
	</script>
	
</html>