<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Registro Persona Juridica</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>
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

        h2 {
            font-family: "Cascadia Mono", monospace;
            font-size: 24px;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: flex-start;
            flex-direction: row;
            margin-top: 20px;
        }

        .column1,
        .column2 {
            display: flex;
            flex-direction: column;
            margin: 10px;
            padding: 30px;
        }

        .column2 {
            margin-left: 20px;
        }

        label {
            margin-bottom: 5px;
        }

        select,
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .get-into {
            text-align: center;
            margin-top: 20px;
        }

        .upload-button {
            background-color: orange;
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
        }

        .upload-button:hover {
            background-color: darkorange;
        }

        .back-and-save {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .back {
            text-align: center;
            width: 45%;
        }

        .back-button {
            background-color: red;
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
            width: 200px;
        }

        .back-button:hover {
            background-color: darkred;
        }

        .save {
            text-align: center;
            width: 45%;
        }

        .save-button {
            background-color: green;
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
            width: 200px;
        }

        .save-button:hover {
            background-color: darkgreen;
        }

        #file-input {
            display: none;
        }
    </style>
    <img class="imagen" src="imagenes/logo.png" alt="logo">
    <h1>Juridic Person Registration - Buyer</h1>
    <div class="container">
        <div class="column1">
            <h2>Company Name:</h2>
            <input type="text" id="nombre" placeholder=" " />
            <h2>Company Acronim:</h2>
            <input type="text" id="apellido" placeholder=" " />
            <h2>Document Type:</h2>
            <select id="tipo-doc">
                <option value="seleccion">--Select--</option>
                <option value="nit">Nit national company</option>
                <option value="nitex">Nit foreign company</option>
                <option value="otros">Others</option>
            </select>
            <h2>Document number:</h2>
            <input type="text" id="num-doc" placeholder=" " />
        </div>
        <div class="column2">
            <h2>Adress:</h2>
            <input type="text" id="direccion" placeholder=" " />
            <h2>Contact phone:</h2>
            <input type="text" id="telefono" placeholder=" " />
            <h2>Email:</h2>
            <input type="text" id="email" placeholder=" " />
            <h2>Location:</h2>
            <input type="text" id="ubicacion" placeholder=" " />
        </div>
    </div>
    <div class="get-into">
        <input type="file" id="file-input" />
        <label for="file-input" class="upload-button"><strong>Upload Documents</strong></label>
        <span id="file-name"></span>
    </div>
    <div class="back-and-save">
        <div class="back">
            <form action="Register.jsp">
                <button class="back-button" type="submit"><strong>Return</strong></button>
            </form>
        </div>
        <div class="save">
            <form action="guardar_datos.jsp">
                <button class="save-button" type="submit"><strong>Save</strong></button>
            </form>
        </div>
    </div>
    <script>
        document.getElementById("file-input").addEventListener("change", function () {
            var fileInput = document.getElementById("file-input");
            var fileName = document.getElementById("file-name");
            fileName.textContent = fileInput.value;
        });
    </script>
</body>

</html>

