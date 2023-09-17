<%-- 
    Document   : UploadAcciono
    Created on : 10/09/2023, 12:15:01 p. m.
    Author     : USER
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Upload Documents</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-XXX" crossorigin="anonymous" />
    <style>
        /* Estilos generales del modal */
        .modal-content {
            background-color: #f5f5f5;
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
        }

        .modal-content h2 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        /* Estilos para las secciones de carga de documentos */
        .document-upload {
            margin: 10px 0;
            text-align: left;
        }

        .document-upload label {
            font-size: 18px;
            display: block;
            margin-bottom: 5px;
            color: #666;
        }

        .document-upload input[type="file"] {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            width: 100%;
            background-color: #fff;
            font-size: 16px;
        }

        /* Estilos para el botón de carga */
        .upload-button button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            font-size: 18px;
            border-radius: 5px;
            cursor: pointer;
        }

        .upload-button button:hover {
            background-color: #0056b3;
        }

        /* Estilos para los mensajes de carga */
        #upload-status {
            margin-top: 20px;
        }

        #upload-status p {
            font-size: 18px;
            color: #28a745; /* Color verde para carga exitosa */
        }

        /* Estilo para mensaje de carga fallida (puedes ajustarlo según tu preferencia) */
        #upload-status .error {
            color: #dc3545; /* Color rojo para carga fallida */
        }

        #error-message {
            color: red;
        }
    </style>
</head>
<body>
    <div class="modal-content">
        <h2>Upload Documents</h2>

        <!-- Cargar cédula -->
        <div class="document-upload">
            <label for="cedula">Por favor, cargue su cédula:</label>
            <input type="file" id="cedula" name="cedula" />
        </div>

        <!-- Cargar Rut -->
        <div class="document-upload">
            <label for="rut">Por favor, cargue su Rut (si lo tiene):</label>
            <input type="file" id="rut" name="rut" />
        </div>

        <!-- Botón de carga -->
        <div class="upload-button">
            <button type="button" onclick="uploadDocuments()">Upload</button>
        </div>

        <!-- Mensajes de carga -->
        <div id="upload-status">
            <!-- Los mensajes de carga exitosa o fallida se mostrarán aquí -->
        </div>

        <!-- Mensaje de error -->
        <div id="error-message"></div>
    </div>

    <script>
        function uploadDocuments() {
            // Obtener los archivos seleccionados
            var cedulaFile = document.getElementById('cedula').files[0];
            var rutFile = document.getElementById('rut').files[0];

            // Verificar si se seleccionaron archivos
            if (!cedulaFile && !rutFile) {
                // Mostrar un mensaje de error si no se seleccionaron documentos
                var uploadStatus = document.getElementById('upload-status');
                uploadStatus.innerHTML = '<p class="error">Por favor, seleccione al menos un documento.</p>';
                return;
            }

            // Crear un objeto FormData para enviar los archivos al servidor
            var formData = new FormData();
            if (cedulaFile) {
                formData.append('cedula', cedulaFile);
            }
            if (rutFile) {
                formData.append('rut', rutFile);
            }

            // Crear una solicitud AJAX para enviar los archivos al servidor
            var xhr = new XMLHttpRequest();
            xhr.open('POST', 'upload', true); // Reemplaza 'upload' con la URL correcta del servlet
            xhr.onload = function () {
                if (xhr.status === 200) {
                    // La carga fue exitosa, muestra un mensaje de éxito
                    var uploadStatus = document.getElementById('upload-status');
                    uploadStatus.innerHTML = '<p>Carga exitosa de documentos.</p>';
                } else {
                    // La carga falló, muestra un mensaje de error
                    var uploadStatus = document.getElementById('upload-status');
                    uploadStatus.innerHTML = '<p class="error">Hubo un error durante la carga del archivo.</p>';
                }
            };

            // Enviar la solicitud al servidor con los archivos
            xhr.send(formData);
        }
    </script>
</body>
</html>
