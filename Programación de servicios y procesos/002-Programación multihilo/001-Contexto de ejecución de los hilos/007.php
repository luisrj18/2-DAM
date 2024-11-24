<?php
    $file = 'tareas.txt';

    // Leer el archivo en un array, donde cada elemento es una línea
    $lines = file($file);
	$tarea = $lines[0];
     // Mostrar la primera línea
    echo $lines[0];

    // Eliminar la primera línea
    array_shift($lines);

    // Guardar las líneas restantes de vuelta en el archivo, usando "\n" para mantener los saltos de línea
    file_put_contents($file, implode('', $lines));
    
    $myfile = fopen("asignaciones.txt", "a");
	$txt = "Al usuario".$_GET['usuario']." le ha tocado la tarea: ".$tarea."\n";
	fwrite($myfile, $txt);
	fclose($myfile);

?>