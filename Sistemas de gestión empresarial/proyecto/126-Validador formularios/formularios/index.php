
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
            echo "<input type='hidden' name='formulario' value='" . $_GET['f'] . "'>";
            $archivo = 'forms/'.$_GET['f'].'.json';
            $datos = file_get_contents($archivo);
            $coleccion = json_decode($datos, true);
            foreach($coleccion as $clave=>$valor){
                echo "
                <article>
						<div class='texto'>
							<p><strong>".$valor['titulo']."</strong></p>
							<p>".$valor['descripcion']."</p>
						</div>
                
                <input 
                    type='".$valor['tipo']."'
                    name='".$valor['nombre']."'
                    placeholder='".$valor['valorejemplo']."'
                    minlength='".$valor['min']."'
                    maxlength='".$valor['max']."'";
						if($valor['jvvalidador'] != ""){
						 echo "jvvalidador='".$valor['jvvalidador']."'";
						}
						echo "
						>
                </article>";
            }
        }
        ?>
<input type="submit">
</form>
<script src="lib/jvvalidador/jvvalidador.js"></script>
<link rel="Stylesheet" href="lib/jvvalidador/jvvalidador.css"    
</body>
</html>