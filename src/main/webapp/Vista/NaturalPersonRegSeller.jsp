<%-- 
    Document   : NaturalPersonRegSeller
    Created on : 9/09/2023, 7:24:07 p. m.
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Registro Vendedor Persona Natural</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-XXX" crossorigin="anonymous" />
    <style>
        .imagen {
            position: absolute;
            top: 0;
            right: 10px;
            width: 250px;
        }

        h1 {
            font-family: "Cascadia Mono", monospace;
            font-size: 50px;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: space-between;
        }

        .column {
            flex: 1;
            padding: 10px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"],
        select {
            width: 100%;
            height: 40px;
            border-radius: 10px;
        }

        .get-into {
            text-align: center;
            margin-top: 20px;
        }
        .upload-button {
            background-color: orange;
            border: none;
            color: black; 
            padding: 15px 0;
            font-size: 20px;
            border-radius: 20px;
            cursor: pointer;
            width: 200px; 
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto; 
        }

        .clip-icon {
            margin-right: 10px;
        }

        .back {
            text-align: left;
            margin-top: auto;
            margin-bottom: 20px;
        }

        .back-button {
            background-color: red;
            border-color: blue;
            color: black;
            height: 50px;
            width: auto;
            padding: 10px 20px;
            font-size: 16px;
            border-radius: 20px;
            cursor: pointer;
        }

            .save-button {
            background-color: green;
            border: none;
            color: white;
            padding: 15px 10px; 
            font-size: 20px;
            border-radius: 20px;
            cursor: pointer;
            position: absolute;
            bottom: 20px; 
            right: 20px;
            width: 100px;
        }
    </style>
</head>

<body>
    <img class="imagen" src="imagenes/logo.png" alt="logo">

    <h1>Natural Person Registration - Seller</h1>

    <div class="container">
        <div class="column">
            <label for="nombre"><h2>First Name:</h2></label>
            <input type="text" id="nombre" placeholder=" " />

            <label for="apellido"><h2>Last Name:</h2></label>
            <input type="text" id="apellido" placeholder=" " />

            <label for="tipo-doc"><h2>Document Type:</h2></label>
            <select id="tipo-doc">
                <option value="seleccion">--Select--</option>
                <option value="dni">Nit</option>
                <option value="pasaporte">Passport</option>
                <option value="cedula">Identification card</option>
                <option value="otros">Others</option>
            </select>

            <label for="num-doc"><h2>Document number:</h2></label>
            <input type="text" id="num-doc" placeholder=" " />
        </div>

        <div class="column">
            <label for="direccion"><h2>Adress:</h2></label>
            <input type="text" id="direccion" placeholder=" " />

            <label for="direccion"><h2>Number phone:</h2></label>
            <input type="text" id="telefono" placeholder=" " />

            <label for="email"><h2>Email:</h2></label>
            <input type="text" id="email" placeholder=" " />

            <label for="ubicacion"><h2>Location:</h2></label>
            <input type="text" id="ubicacion" placeholder=" " />
        </div>
    </div>

    <div class="get-into">
        <form action="guardar_datos.jsp" method="post">
            <label for="documentos" class="upload-button">
                <i class="fas fa-paperclip clip-icon"></i><strong> Upload Documents</strong>
                <input type="file" id="documentos" name="documentos" style="display: none;" />
            </label>
        </form>
    </div>

    <div class="back">
        <form action="Register.jsp" method="post">
            <input type="submit" value="Return" class="back-button" />
        </form>
    </div>

    
    <button type="submit" value="Save" class="save-button">Save
        <i class="fas fa-save"></i> 
    </button>
</body>

</html>

