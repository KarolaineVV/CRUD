<?php
  include('funciones.php');
  session_start();
  $vnombre=$_POST['nombre'];
  $vfp=$_POST['fp'];


  $miconexion=conectar_bd('', 'CBC1');
  $resulado=consulta($miconexion,"update fichas set id_ficha='{$vnombre}',fichapro='{$vfp}'");

  if ($miconexion->affected_rows>0)
  {
      echo "Actualizacion exitosa";
  }
?>

<input style="width: 40%;" class="btn btn-warning" type="button" onclick="location.href ='menu.php'" value="↺">
