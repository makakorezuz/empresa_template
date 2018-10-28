<?php
/*****************************************************************
Christian Peralta Guzmán
Octubre 2018
Conector de PHP para interactuar con la base de datos POSTGRESQL
******************************************************************/

$dbconn = pg_connect("host=localhost dbname=empresa-dai user=makako")
    or die('Could not connect: ' . pg_last_error());    


/*Recogemos del array POST o GET los valores mandados por AJAX de Jquery-validator*/
$nombre     = $_REQUEST['nombre'];
$email      = $_REQUEST['email'];
$telefono   = $_REQUEST['telefono'];
$mensaje    = $_REQUEST['mensaje'];

if(!empty($nombre) && !empty($email) && !empty(mensaje)){
	$query = "INSERT INTO contacto (contacto_nombre, contacto_email, contacto_telefono, contacto_mensaje) 
	          VALUES ('$nombre','$email','$telefono','$mensaje')";
	$result = pg_query($query);
	//echo "Registro ingresado con los datos: $nombre, $email, $telefono, $mensaje";
	}
else {
        echo "No están declaradas las variables minimas para insertarse en la base de datos.";
}

?>