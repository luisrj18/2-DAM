<?php

$contrasena = "Luis";

for($i = 0;$i<strlen($contrasena);$i++){
	echo $contrasena[$i]." - ".ord($contrasena[$i])."<br>";
}

?>
