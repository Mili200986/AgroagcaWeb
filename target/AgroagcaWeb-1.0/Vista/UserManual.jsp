<%-- 
    Document   : UserManual
    Created on : 16/09/2023, 9:35:52 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>User Manual</title>
<style>
  body {
    background-color: #f0f0f0; /* Cambiar el color de fondo a gris claro */
    margin: 0;
    padding: 0;
    font-family: 'Cascadia Mono', monospace, sans-serif;
  }
  .container {
    display: flex;
    align-items: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
  }
  .column {
    flex: 1;
    padding: 20px;
    
  }
  .image {
    max-width: 100%;
    height: auto;
  }
  textarea {
    width: 100%;
    resize: vertical;
  }

  .button-container {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
  }
  .button {
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-weight: bold;
  }
  .button.red {
    background-color: #e74c3c;
    color: #fff;
  }
  h1 {
    font-family: 'Cascadia Mono', monospace;
  }
  /* Estilo para la imagen */
  .imagen {
    position: absolute;
    top: 0;
    right: 50px;
    width: 210px;
    height: 210px;
  }
</style>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Cascadia+Mono&display=swap">
</head>
<body>
  <img class="imagen" src="imagenes/logo.png" alt="logo.png" />

<h1>User Manual</h1>

<div class="container">
  <div class="column">
    <img class="image" src="imagenes/usermanual.png" alt="Imagen">
  </div>
  <div class="column">
    <p><strong><h1>El manual de usuario es el documento que permite a las personas que utilizan los sistemas de información su entendimiento y uso de las funcionalidades que este posee. Además, es una guía de asistencia para el usuario final sobre el funcionamiento de los aplicativos y de solución a los problemas más comunes.</p>
    </h1></strong>
  </div>
</div>
<div class="button-container">
  <!-- Botón "Return" como un formulario que redirige a StartPage.jsp -->
  <form action="StartPage.jsp" method="post">
    <button type="submit" class="button red">Return</button>
  </form>
</div> 

</body>
</html>


