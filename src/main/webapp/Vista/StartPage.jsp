<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Start page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: gray;
            margin: 50;
            padding: 40;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        #content {
            display: flex;
            padding: 20px;
            border-radius: 10px;
            position: relative;
        }

        .column {
            flex: 1;
            padding: 10px;
            width: 50;
            display: flex;
            flex-direction: column;
        }

        #menu {
            display: flex;
            flex-direction: column;
            gap: 10px;
            text-align: center;
            margin-right: 10px;
        }

        #menu button {
            background-color: #555;
            color: white;
            border: none;
            padding: 15px 30px; /* Tamaño estándar para todos los botones */
            cursor: pointer;
        }

        #profile-pic {
            max-width: 50%;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        #small-profile-pic {
            position: absolute;
            top: 10px;
            left: 10px;
            max-width: 50px;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: white;
            font-size: 12px;
        }

        #small-profile-pic img {
            max-width: 30px;
            margin-bottom: 5px;
        }

        #news-section {
            margin-top: 70px;
            padding: 40px 20px;
        }

        .news-item {
            border-bottom: 1px solid #ccc;
            padding: 10px 0;
        }

        .news-item:last-child {
            border-bottom: none;
        }

        #new-post-button {
            background-color: green;
            color: white;
            border: none;
            padding: 15px 30px; /* Tamaño estándar para el botón "New Post" */
            cursor: pointer;
            margin-top: auto;
        }

        #upload-button {
            background-color: blue;
            color: white;
            border: none;
            padding: 15px 30px; /* Tamaño estándar para el botón "Charge Image" */
            cursor: pointer;
            width: 150px;
            height: 50px;
        }

        /* Estilo específico para la imagen */
        .imagen {
            position: absolute;
            top: 0;
            right: 50px;
            width: 210px;
            height: 210px;
        }
    </style>
</head>
<body>
<img class="imagen" src="imagenes/logo.png" alt="logo"/>

<div id="content">
    <div class="column" id="menu">
        <form action="CreateProfile.jsp" method="post">
            <button type="submit">User profile</button>
        </form>
        <form action="Salesform.jsp" method="post">
            <button type="submit">Bid</button>
        </form>
        <form action="Purchaseform.jsp" method="post">
            <button type="submit">Buy</button>
        </form>
        <form action="UserManual.jsp" method="post">
            <button type="submit">User manual</button>
        </form>
        <form action="ContactUs.jsp" method="post">
            <button type="submit">Contact Us</button>
        </form>
        
    </div>

    <div class="column">
        <div id="profile-pic">
            <img id="avatar-image" class="imagen" src="imagenes/avatar_man_people_person_profile_user_icon_123385.png"
                 alt="Foto de Perfil"/>
        </div>
        <form action="UploadAvatar.jsp" method="post" enctype="multipart/form-data">
            <label for="avatar-upload" id="upload-label">Upload Avatar</label>
            <input type="file" id="avatar-upload" accept="image/*" style="display: none" onchange="updateAvatarImage()">
        </form>
    </div>

    <div class="column">
        <div id="news-section">
            <div class="news-item">
                <h3>Noticia 1</h3>
                <p>Contenido de la noticia 1.</p>
                <p>Fecha: 10 de agosto de 2023</p>
            </div>
            <div class="news-item">
                <h3>Noticia 2</h3>
                <p>Contenido de la noticia 2.</p>
                <p>Fecha: 15 de agosto de 2023</p>
            </div>
            <!-- Más noticias aquí... -->
        </div>
    </div>
</div>
<div id="small-profile-pic">
    <img id="small-avatar-image" class="imagen" src="imagenes/perfil.png" alt="Foto pequeña de Perfil">
    User
</div>
<form action="NewPost.jsp" method="post">
    <button type="submit" id="new-post-button">New Post</button>
</form>

<script>
    function updateAvatarImage() {
        const avatarImage = document.getElementById("avatar-image");
        const smallAvatarImage = document.getElementById("small-avatar-image");
        const uploadInput = document.getElementById("avatar-upload");

        if (uploadInput.files && uploadInput.files[0]) {
            const reader = new FileReader();

            reader.onload = function (e) {
                avatarImage.src = e.target.result;
                smallAvatarImage.src = e.target.result;
            };

            reader.readAsDataURL(uploadInput.files[0]);
        }
    }
</script>
</body>
</html>

