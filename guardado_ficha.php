<?php
include('funciones.php');   
  $vnombre=$_POST['nombre'];
  $vprograma=$_POST['progra'];
  
  
  $miconexion=conectar_bd('', 'CBC1');
  $resultado=consulta($miconexion,"insert into fichas (id_ficha	,fichapro) values ('{$vnombre}','{$vprograma}')");

  if ($resultado)
    {
        echo "Guardado exitoso";
    }
  ?>