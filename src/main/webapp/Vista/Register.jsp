<!DOCTYPE html>
<html>

<head>
    <title>User Registration</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-XXX" crossorigin="anonymous" />
    <style>
        .imagen {
            display: block;
            margin: 0 auto; 
            margin-top: 20px; 
        }

        h1 {
            font-family: "Cascadia Mono", monospace;
            font-size: 50px;
            text-align: center;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column; 
            height: 50px;
        }

        .options {
            text-align: center;
        }

        
        .register-button {
            background-color: green;
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 20px;
            border-radius: 20px;
            cursor: pointer;
            margin: 10px; 
        }

        .register-button:hover {
            background-color: darkgreen; 
        }

        
        .back-button {
            background-color: red;
            border: none;
            color: white;
            padding: 15px 20px;
            font-size: 20px;
            border-radius: 20px;
            cursor: pointer;
        }

        .back-button:hover {
            background-color: darkred; 
        }

        
        .person-type-button {
            background-color: lightblue;
            border: none;
            padding: 15px 20px;
            font-size: 18px;
            border-radius: 20px;
            cursor: pointer;
            margin: 10px; 
            display: none; 
        }

        .person-type-button:hover {
            background-color: dodgerblue; 
        }

        h2 {
            font-size: 24px;
        }
    </style>
</head>

<body>
    <h1>User Registration</h1>
    <img src="imagenes/logo.png" alt="imagenes/logo.png" class="imagen" />

    <div class="container">
        <div class="options">
            <p><h2>Select the type of registration:</h2></p>
            <form action="" method="post">
                <input type="hidden" id="userType" name="user_type" value="" />
                <button type="button" class="register-button" onclick="selectUserType('buyer')">Register as Buyer</button>
                <button type="button" class="register-button" onclick="selectUserType('seller')">Register as Seller</button>
            </form>
            <p><h2>Select the type of person:</h2></p>
            <form action="" method="post" id="personTypeForm">
                <input type="hidden" id="personType" name="user_type" value="" />
                <button type="button" class="person-type-button" id="naturalPersonButton" onclick="selectPersonType('natural')">Natural Person</button>
                <button type="button" class="person-type-button" id="juridicPersonButton" onclick="selectPersonType('juridic')">Juridic Person</button>
            </form>
        </div>
    </div>

    <script>
        function selectUserType(userType) {
            document.getElementById('userType').value = userType;
            
            if (userType === 'buyer') {
                document.getElementById('naturalPersonButton').style.display = 'block';
                document.getElementById('juridicPersonButton').style.display = 'block';
            } else if (userType === 'seller') {
                document.getElementById('naturalPersonButton').style.display = 'block';
                document.getElementById('juridicPersonButton').style.display = 'block';
            }
        }

        function selectPersonType(personType) {
            document.getElementById('personType').value = personType;

            if (document.getElementById('userType').value === 'buyer') {
                if (personType === 'natural') {
                    window.location.href = 'NaturalPersonRegBuyer.jsp';
                } else if (personType === 'juridic') {
                    window.location.href = 'JuridicPersonRegBuyer.jsp';
                }
            } else if (document.getElementById('userType').value === 'seller') {
                if (personType === 'natural') {
                    window.location.href = 'NaturalPersonRegSeller.jsp';
                } else if (personType === 'juridic') {
                    window.location.href = 'JuridicPersonRegSeller.jsp';
                }
            }
        }
    </script>
</body>

</html>




