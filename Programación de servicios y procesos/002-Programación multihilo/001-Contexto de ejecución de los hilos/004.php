<?php
    $file = 'tareas.txt';

    // Leer el archivo en un array, donde cada elemento es una línea
    $lines = file($file);

    // Mostrar la primera línea
    echo $lines[0];

    // Eliminar la primera línea
    array_shift($lines);

     // Guardar las líneas restantes de vuelta en el archivo, usando "\n" para mantener los saltos de línea del archivo
    file_put_contents($file, implode('', $lines));

?>