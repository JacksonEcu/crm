<?php 

	require_once "conexion.php";

	$conexion=conexion();

	$id_usuario=$_POST['id_usuario'];
	$cuentanrojU=$_POST['cuentanrojU'];
	$cedulajU=$_POST['cedulajU'];
	$valorjU=$_POST['valorjU'];

	$sql="CALL sp_actualizar_datos('$cuentanrojU',
									'$cedulajU',
									'$valorjU',
									'$id_usuario')";
									
	echo mysqli_query($conexion,$sql);
 ?>