<?php 

	require_once "conexion.php";
	$conexion=conexion();

	$id=$_POST['idusuario'];
	$sql="CALL sp_obtener_regJuego($id)";

	$result=mysqli_query($conexion,$sql);

	$ver=mysqli_fetch_row($result);

	$datos=array(
			'id_usuario'=>$ver[0],
              'cuentanrojU'=>$ver[1],
              'cedulajU'=>$ver[2],
              'valorjU'=>$ver[3]
					);
	echo json_encode($datos);
 ?>