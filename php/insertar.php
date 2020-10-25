<?php 

	require_once "conexion.php";

	$conexion=conexion();

	$cuentanro=$_POST['cuentanroj'];
	$cedula=$_POST['cedulaj'];
	$valor=$_POST['valorj'];

	$sql="CALL sp_insertar_datos('$cuentanro','$cedula','$valor')";

	echo mysqli_query($conexion,$sql);

 ?>