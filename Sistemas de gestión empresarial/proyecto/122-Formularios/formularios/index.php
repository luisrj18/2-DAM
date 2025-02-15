
<!doctype html>
<html>
<head>
<link rel="Stylesheet" href="estilo.css">
</head>
<body>
<form method="POST" action="envia.php">
<?php 
        if(isset($_GET['f'])) {
            echo "<h1>" . $_GET['f'] . "</h1>";
            echo "<input type='hidden' name='token' value='" . base64_encode(date('U')) . "'>";
            $archivo = 'forms/'.$_GET['f'].'.json';
            $datos = file_get_contents($archivo);
            $coleccion = json_decode($datos, true);
            foreach($coleccion as $clave=>$valor){
                echo "<input 
                    type='".$valor['tipo']."'
                    name='".$valor['nombre']."'
                    placeholder='".$valor['nombre']."'
                    minlength='".$valor['min']."'
                    maxlength='".$valor['max']."'>";
            }
        }
        ?>
<input type="submit">
</form>
</body>
</html>