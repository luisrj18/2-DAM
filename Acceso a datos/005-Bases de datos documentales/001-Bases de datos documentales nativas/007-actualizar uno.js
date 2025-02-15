db.clientes.updateOne(
		{nombre:"Luis"},
		{ 
			$set: { nombre: "Juan" } 
		}
	
)