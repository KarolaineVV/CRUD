<?php
include('funciones.php');
session_start();
if (!isset($_SESSION['nusuario']))
{
    $_SESSION['nusuario']=$_POST['usuario'];
    $_SESSION['nclave']=$_POST['clave'];
}

$miconexion=conectar_bd('', 'CBC1');
$resultado=consulta($miconexion,"select * from usuario where nombreuser='{$_SESSION['nusuario']}' and contra='{$_SESSION['nclave']}'");
?>
<!doctype html>
<html>
    <head>
        <title>Menu principal</title>
        <link href="img/favicon.png" rel="icon">
        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1,shrink-to-fit=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href="estilos.css" rel="stylesheet">
        <script src="js/bootstrap.js"></script>
    </head>
    <body >
        <div id="div1" class="container">
            <br>
            <div id="div2">
                <?php if($resultado->num_rows>0) { ?> <img src=""> <?php } ?>
                <div id="div3">
                    <?php
                      if($resultado->num_rows>0)
                      {
                          $fila = $resultado->fetch_object();
                          $_SESSION['Tipo_usuario']=$fila->usutipo;
                        ?>
                        <label class="lgris">Bienvenido <?php echo $_SESSION['nusuario'] ?></label><br><br>

                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='registro_aprendiz.php'" value="Registro de aprendices">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='consulta_aprendiz.php'" value="Consulta de aprendices">
                        <br><br>
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='modificar_aprendiz.php'" value="Actualizacion de aprendices">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='borrar_aprendiz.php'" value="Borar aprendices">
                        <br><br>
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='crear_programa.php'" value="Crear programa">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='consultar_programa.php'" value="Consultar programa">
                        <br><br>
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='modificar_programa.php'" value="Modificar programa">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='borrar_programa.php'" value="Eliminar programa">
                        <br><br>
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='crear_ficha.php'" value="Crear ficha">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='consultar_ficha.php'" value="Consultar ficha">
                        <br><br>
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='modificar_ficha.php'" value="Modificar ficha">
                        <input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='borrar_ficha.php'" value="Eliminar ficha">
                        <br><br>
                        <input style="width: 30%;" class="btn btn-warning" type="button" onclick="location.href ='index.php'" value="salir">
                    <?php
                      }
                      else
                      {
                          echo "Usuario o clave invalido";
                      }
                    $miconexion->close();
                     ?>
                    <br><br>
                    <h1>Yet To Come</h1>
                </div>
            </div>
        </div>
    </body>
</html>