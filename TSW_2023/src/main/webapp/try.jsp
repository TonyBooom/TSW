<!DOCTYPE html>
<html lang="it">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Homepage con Video in Background</title>
  <style>
    /* Reset dei margini e del padding */
    * {
      margin: 0;
      padding: 0;
    }
    
    /* Stile del body */
    body {
      font-family: Arial, sans-serif;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }
    
    /* Stile della navbar */
    .navbar {
      background-color: #333;
      color: #fff;
      padding: 10px;
    }
    
    .navbar ul {
      list-style-type: none;
      margin: 0;
      padding: 0;
      overflow: hidden;
    }
    
    .navbar li {
      float: left;
    }
    
    .navbar li a {
      display: block;
      color: #fff;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }
    
    .navbar li a:hover {
      background-color: #111;
    }
    
    /* Stile del contenitore del video */
    .video-container {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
      overflow: hidden;
    }
    
    /* Stile del video */
    video {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    
    /* Stile del contenitore del contenuto principale */
    .content {
      margin-top: 100px;
      text-align: center;
      flex-grow: 1;
      position: relative;
      z-index: 1;
    }
    
    /* Stile del footer */
    .footer {
      background-color: #333;
      color: #fff;
      padding: 20px;
      text-align: center;
    }
    
    /* Media query per il layout responsive */
    @media screen and (max-width: 768px) {
      .navbar {
        position: fixed;
        width: 100%;
      }
      
      .navbar li {
        float: none;
        display: inline-block;
      }
      
      .content {
        margin-top: 70px;
      }
      
      .footer {
        position: fixed;
        width: 100%;
        bottom: 0;
      }
    }
  </style>
</head>
<body>
  <div class="navbar">
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">About</a></li>
      <li><a href="#">Services</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </div>

  <div class="video-container">
    <video autoplay loop muted>
      <source src="video1.mp4" type="video/mp4">
    </video>
  </div>

  <div class="content">
    <h1>Welcome to our website</h1>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
  </div>

  <div class="footer">
    <p>&copy; 2023 Your Website.</p>
  </div>
 </body>
 </html>
    