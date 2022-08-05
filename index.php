<!doctype html>
<html>
    <head>
        <title>Login</title>
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
        <meta http-equiv="content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="estilos.css" rel="stylesheet"/>
        <script src="js/bootstrap.js"></script>
    </head>
    <body >
        <div id="div1" class="container">
            <br>
            <div id="div2">
                <section class="pantalla1">
                <img src="img/images-removebg-preview.png">
                </section>
                <div id="div3">
                    <form id="formulario" method="post" action="menu.php">
                        <h1>Bienvenido</h1>
                        <br>
                        <strong class="lgris">Ingrese su usuario y contraseña para iniciar sesión</strong>
                        <br>
                        <label class="lgris">Nombre de Usuario:</label>
                        <br>
                        <input class="btn btn-outline-warning" style="text-transform: uppercase;" type="text" name="usuario" value="" required/>
                        <br>
                        <label class="lgris">Contraseña:<div class="ub1">
                        <input type="checkbox" onclick="verpassword()" >Mostrar contraseña</div></label>
                        <br>
                        <input class="btn btn-outline-warning" type="password" name="clave" value="" required/>
                        <br><br>
                        <input class="btn btn-success" type="submit" value="Iniciar sesión">
                    
                        <br><br>
                    </form>
                </div>
            </div>  
        </div>
        <br><br>
    </body>
</html>