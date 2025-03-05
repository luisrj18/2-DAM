<?php
$host = "51.20.253.247";  // IP privada de la base de datos de AWS
$user = "root";          // Usuario de la base de datos
$pass = "root";          // Contraseña de la base de datos
$db = "crimson";         // Nombre de la base de datos
 
$conn = mysqli_connect($host, $user, $pass, $db);
 
if (!$conn) {
    die("❌ Error de conexión: " . mysqli_connect_error());
} else {
    echo "✅ Conexión exitosa a MySQL desde PHP";
}
?>