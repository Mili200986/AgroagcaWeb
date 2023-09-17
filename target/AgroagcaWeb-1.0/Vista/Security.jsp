<%-- 
    Document   : Seguridad
    Created on : 10/09/2023, 3:53:56 p. m.
    Author     : USER
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Acceso</title>
    <link rel="stylesheet" href="style.css" type="text/css" />
    <style>
        .imagen {
            position: absolute;
            top: 0;
            right: 50px;
        }

        h1 {
            font-family: "Cascadia Mono", monospace;
            font-size: 50px;
        }

        .form-group {
            text-align: center;
        }

        label {
            font-family: "Cascadia Mono", monospace;
            font-weight: bold;
        }

        .input-field {
            width: 300px;
            padding: 10px;
            margin-bottom: 20px;
        }

        .button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
            color: white;
        }

        .button-back {
            background-color: red;
            position: absolute;
            bottom: 10px;
            left: 10px;
        }

        .button-next {
            background-color: green;
            position: absolute;
            bottom: 10px;
            right: 10px;
        }
    </style>
</head>

<body>
    <img class="imagen" src="imagenes/logo.png" alt="logo.png" />

    <h1><center>Security</center></h1>

    <div class="form-group">
        <form action="procesar_registro.jsp" method="post">
            <label for="username">Username:</label><br>
            <input class="input-field" type="text" id="username" name="username" placeholder=" " /><br>

            <label for="password">Contraseña:</label><br>
            <input class="input-field" type="password" id="password" name="password" onkeyup="previewPassword()" /><br>

            <label for="confirmPassword">Confirmar Contraseña:</label><br>
            <input class="input-field" type="password" id="confirmPassword" name="confirmPassword" onkeyup="checkPasswordMatch()" /><br>

            <span id="passwordMatch"></span><br>

            <span id="passwordPreview"></span><br>

            <button class="button button-back" type="button" onclick="window.location.href='login.jsp'">Back</button>
            <button class="button button-next" type="submit">Next step</button>
        </form>
    </div>

    <script>
        function checkPasswordMatch() {
            const passwordInput = document.getElementById("password");
            const confirmPasswordInput = document.getElementById("confirmPassword");
            const passwordMatch = document.getElementById("passwordMatch");

            if (passwordInput.value === confirmPasswordInput.value) {
                passwordMatch.textContent = "Las contraseñas coinciden";
                passwordMatch.style.color = "green";
            } else {
                passwordMatch.textContent = "Las contraseñas no coinciden";
                passwordMatch.style.color = "red";
            }
        }

        // Función de ejemplo para mostrar vista previa de la contraseña
        function previewPassword() {
            // Implementa la lógica según tus necesidades
        }
    </script>
</body>
</html>
