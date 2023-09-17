<%-- 
    Document   : NewPost
    Created on : 16/09/2023, 8:32:21 p. m.
    Author     : USER
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Post</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            background-color: gray;
            font-family: "Cascadia Mono", sans-serif;
        }

        .container {
            padding: 150px;
            text-align: center;
        }

        .title-large {
            font-size: 76px;
            margin-bottom: 10px;
            font-family: "Cascadia Mono", sans-serif;
        }

        .title-medium {
            font-size: 54px;
            margin-bottom: 10px;
        }

        .text-small {
            font-size: 36px;
            margin-bottom: 20px;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .button {
            display: inline-block;
            padding: 10px 20px;
            margin: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
        }

        .button img {
            margin-right: 10px;
            width: 20px;
            height: 20px;
        }

        .button label {
            white-space: nowrap;
            margin-left: 5px;
        }

        .button.red {
            background-color: #e74c3c;
            color: #ffffff;
            position: fixed;
            bottom: 20px;
            left: 20px;
        }

        .button.green {
            background-color: #2ecc71;
            color: #ffffff;
            position: fixed;
            bottom: 20px;
            right: 20px;
        }

        input[type="text"] {
            font-size: 36px; /* Aumentar el tamaño del texto */
            padding: 10px;
            border: none;
            border-bottom: 2px solid #333;
            background-color: transparent;
            text-align: center;
            width: 80%; /* Centrar y ajustar el ancho */
            margin: 0 auto;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #3498db;
            outline: none;
        }

        .imagen {
            position: absolute;
            top: 0;
            right: 50px;
            width: 300px; /* Aumentar el tamaño del logo */
            height: auto; /* Mantener la relación de aspecto */
        }
    </style>
</head>
<body>
    <img class="imagen" src="imagenes/logo.png" alt="logo.png" />
    <div class="container">
        <div class="title-large">New Post</div>
        <div class="title-medium"><input type="text" placeholder="Escribe aquí el título de tu noticia" onclick="this.value=''"></div>
        <p class="text-small"><input type="text" placeholder="Escribe aquí tu noticia" onclick="this.value=''"></p>
        <div class="button-container">
            <form action="procesar_noticia.jsp" method="post" enctype="multipart/form-data">
                <input type="file" name="documento" accept=".pdf, .doc">
                <input type="file" name="imagen" accept=".jpg, .png">
                <input type="submit" class="button" value="Post">
            </form>
            <button class="button red" onclick="window.location.href='StartPage.jsp'">Back</button>
        </div>
    </div>
</body>
</html>
