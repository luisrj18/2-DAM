<?php

	ini_set('display_errors', 1);
	ini_set('display_startup_errors', 1);
	error_reporting(E_ALL);

	class ConectaMongo{
			private $servidor;																	// creo una serie de propiedades privadas																								
			private $basededatos;																									
			private $conexion;	
			
			public function __construct() {														// Creo un constructor
				  $this->servidor = "mongodb://localhost:27017";								// Le doy los datos de acceso a la base de datos
				  
				  $this->basededatos = "empresa";																
				  
				  $this->conexion = new MongoDB\Driver\Manager($this->servidor);																														// Establezco una conexión con la base de datos
			 }
			 
			 public function listar($coleccion){
				$query = new MongoDB\Driver\Query([]);
				$namespace = $this->basededatos.".".$coleccion;
				$cursor = $this->conexion->executeQuery($namespace, $query);
				$resultado = [];
				foreach ($cursor as $document) {
					 $resultado[] = $document;
				}
				$json = json_encode($resultado, JSON_PRETTY_PRINT);
				return $json;	
			}
	}

$conexion = new ConectaMongo();

echo $conexion->listar("productos");

?>