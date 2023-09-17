<!DOCTYPE html>
<html>
    <head>
        <title>Agroagca : Asociacion de aguacateros</title>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <style>
            body {
                background-image: url("Imagen de WhatsApp 2023-06-16 a las 14.27.04.jpg");
            }
            .imagen {
                position: absolute;
                top: 0;
                right: 50px;
            }
            h1 {
                font-family: Arial, monospace;
                font-size: 80px;
            }
            .login,
            .register {
                margin: 10px;
                padding: 10px;
                border-radius: 5px;
                text-align: center;
            }
            img {
                width: 400px;
                height: 400px;
                position: absolute;
                top: 90px;
                left: 120px;
            }

            footer {
                background-color: #f2f2f2;
                padding: 5px;
                text-align: center;
            }
            body {
                background-image: url('imagenes/imagen.jpg');
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                text-align: center;
            }
            .container {
                padding: 20px;
            }
            h2 {
                font-family: Arial Black, monospace;
                font-size: 50px;
                color:darkblue;
            }
        </style>
        <div>
            <center>
                <h1><big><strong>Welcome</strong></big></h1>
                <h2>El mejor aguacate de <br> nuestras montañas</h2>
            </center>
        </div>
        <div class="container">
            <div class="container">
                <img class="logo" src="imagenes/logo.png" alt="Tu Logo"> 
                <form action="Login.jsp" method="post">
                    <input class="button-form" type="submit" value="Login" style="background-color: green; color: black; font-size: 40px;margin: 10px;
                           padding: 10px;border: 1px solid #ccc; border-radius: 15px; text-align: center;padding: 10px 20px;
                           border: none;border-radius: 15px;cursor: pointer; width: 400px;height: 60px;font-weight: bold;">
                </form>
                <form action="Register.jsp" method="post">
                    <input class="button-form" type="submit" value="Sign In" style="background-color: green; color: black; font-size: 40px; margin: 10px;
                           padding: 10px;border: 1px solid #ccc;border-radius: 15px;text-align: center;padding: 10px 20px;
                           border: none;border-radius: 15px;cursor: pointer;width: 400px;height: 60px;font-weight: bold;">
                </form>
                
                
            </div>
        </div>
        <footer>
            <p>© 2023 Agroagca. All rights reserved.</p>
        </footer>
    </body>
</html>