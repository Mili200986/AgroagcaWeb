<%-- 
    Document   : Purchaseform
    Created on : 16/09/2023, 9:35:31 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario</title>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #f0f0f0; /* Cambiar el color de fondo a gris claro */
                font-family: Arial, sans-serif;
            }
            .container {
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
            }
            .title {
                font-family: "Cascadia Mono", monospace;
                font-size: 24px;
                font-weight: bold;
            }
            .form-group {
                margin-bottom: 15px;
            }
            label {
                display: block;
                font-weight: bold;
                margin-bottom: 5px;
            }
            input, select {
                width: 100%;
                padding: 8px;
                border: 1px solid #ccc;
                border-radius: 4px;
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
            .button.green {
                background-color: #2ecc71;
                color: #fff;
            }
        </style>
    </head>
    <body>
        <style>
            .imagen {
                position: absolute;
                top: 0;
                right: 50px;
                width: 210px;
                height: 210px;
            }
        </style>
        <img class="imagen" src="imagenes/logo.png" alt="logo"

             />
        <div class="container">
            <center><div class="title"><h1>Purchase Form</h1></div></center>
            <p><h3>To send to verify offers please fill out the following form, wich will help you effectively to carry out searches more similar to your need.</h3></p>
        <div class="form-group">
            <label for="first-name">First Name</label>
            <input type="text" id="first-name" name="first-name">
        </div>
        <div class="form-group">
            <label for="average-quantity">Average Quantity</label>
            <select id="average-quantity" name="average-quantity">
                <option value="low">Between 1 and 50 kg</option>
                <option value="medium">Between 51 and 350 kg</option>
                <option value="high">Between 351 and 500 kg</option>
                <option value="more">Others</option>
            </select>
        </div>
        <div class="form-group">
            <label for="phone-number">Phone Number</label>
            <input type="tel" id="phone-number" name="phone-number" inputmode="numeric">
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <input type="text" id="price" name="price">
        </div>
        <div class="form-group">
            <label for="address">Address</label>
            <input type="text" id="address" name="address">
        </div>
        <div class="button-container">
            <!-- Botón "Return" como un formulario que redirige a StartPage.jsp -->
            <form action="StartPage.jsp" method="post">
                <button type="submit" class="button red">Return</button>
            </form>

            <!-- Botón "Next" como un formulario que redirige a SellerResults.jsp -->
            <form action="SellerResults.jsp" method="post">
                <button type="submit" class="button green">Next</button>
            </form>
        </div>

    </div>
</body>
</html>
