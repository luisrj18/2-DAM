db.clientes.updateMany(
		{nombre:"Luis"},
		{ 
			$set: { nombre: "Juan" } 
		}
	
)