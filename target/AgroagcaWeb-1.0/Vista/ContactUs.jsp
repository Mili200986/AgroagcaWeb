<%-- 
    Document   : ContactUs
    Created on : 16/09/2023, 9:36:09 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Contact Us</title>
        <style>
            body {
                background-color: #f0f0f0; /* Cambiar el color de fondo a gris claro */
                margin: 0;
                padding: 0;
                font-family: Arial, sans-serif;
            }
            .container {
                display: flex;
                align-items: flex-start;
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }
            .column {
                flex: 1;
                padding: 20px;
            }
            .title {
                text-align: center;
                font-family: "Cascadia Mono", monospace;
                font-size: 50px;
                margin-bottom: 20px;
            }
            .paragraph {
                font-size: 25px;
                line-height: 1.5;
            }
            .contact-icons {
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 20px;
                padding: 30px;
            }
            .contact-icon {
                width: 50px;
                height: 50px;
                border-radius: 50%;
                background-color: none;
                color: white;
                display: flex;
                justify-content: center;
                align-items: center;
                margin: 5px;
                font-size: 20px;
            }
            .image-column {
                flex: 1;
                padding: 150px;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .image-column {
                flex: 1;
                padding: 20px;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 350px;
                width: 350px;
            }
            .large-image {
                max-width: 100%;
                height: auto;
                max-height: 500px;
            }
            .bottom-text {
                text-align: center;
                margin-top: 20px;
                font-size: 14px;
            }
            .avocado-icon {
                font-size: 14px;
                margin-left: 5px;
            }
            .return-button {
                background-color: #ff0000;
                color: white;
                border: none;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                border-radius: 5px;
                margin-top: 20px;
                cursor: pointer;
            }
        </style>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Cascadia+Mono&display=swap" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
    </head>
    <body>
        <h1 class="title">Contact Us</h1>

        <div class="container">
            <div class="column">
                <p class="paragraph">
                    For complaints, requests, claims, or congratulations regarding the page, you can contact us at:
                    <br />Email: agroagca@gmail.com
                    <br />WhatsApp: 3204838668
                    <br />Facebook: AGROAGCA
                    <br />Instagram: AgroAGCA
                    <br />Text messaging: 3204838668
                </p>
            </div>
            <div class="contact-icons">
                <img class="contact-icon" src="imagenes/telefono.png" alt="Teléfono" />
                <img class="contact-icon" src="imagenes/whatsapp_icon.png" alt="WhatsApp" />
                <img class="contact-icon" src="imagenes/correo.png" alt="Correo" />
                <img class="contact-icon" src="imagenes/facebook.png" alt="Facebook" />
                <img class="contact-icon" src="imagenes/instagram.png" alt="Instagram" />
            </div>
            <div class="column">
                <div class="image-column">
                    <img class="large-image" src="imagenes/logo.png" alt="Imagen" />
                </div>
            </div>
        </div>

        <div class="bottom-text">
            <h2>The best avocado from our mountains</h2>
            <i class="fas fa-imagenes/aguacate.png"></i>
        </div>

        <!-- Botón "Back" como un formulario que redirige a StartPage.jsp -->
        <form action="StartPage.jsp" method="post">
            <button type="submit" class="return-button">Back</button>
        </form>
    </body>
</html>
