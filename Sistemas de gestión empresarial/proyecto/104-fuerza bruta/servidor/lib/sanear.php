<?php
function sanear($elemento) {
    // Log inicial para ver qué recibe la función
    error_log("Sanear recibió: " . print_r($elemento, true));
    if ($elemento === null || !is_array($elemento)) {
        error_log("Elemento no es array o es null");
        return;
    }
    $coleccion = [
        'delete',
        'drop',
        'truncate',
        'table'
    ];
    if (empty($elemento)) {
        error_log("Elemento está vacío");
        return;
    }
    foreach ($elemento as $clave => $valor) {
        // Log de cada iteración
        error_log("Procesando - Clave: $clave, Valor: " . print_r($valor, true));
        if (is_string($clave)) {
            $claveLower = strtolower($clave);
            // Log de comprobación de clave
            error_log("Comprobando clave: $claveLower");
            if (array_filter($coleccion, fn($elemento) => strpos($claveLower, $elemento) !== false)) {
                error_log("Palabra prohibida encontrada en clave: $claveLower");
                header('Content-Type: application/json');
                echo json_encode(['resultado' => 'error 2', 'detalle' => "Palabra prohibida en clave: $claveLower"]);
                exit;
            }
        }
        if (is_string($valor)) {
            $valorLower = strtolower($valor);
            // Log de comprobación de valor
            error_log("Comprobando valor: $valorLower");
            if (array_filter($coleccion, fn($elemento) => strpos($valorLower, $elemento) !== false)) {
                error_log("Palabra prohibida encontrada en valor: $valorLower");
                header('Content-Type: application/json');
                echo json_encode(['resultado' => 'error 2', 'detalle' => "Palabra prohibida en valor: $valorLower"]);
                exit;
            }
        }
    }
}

?>

