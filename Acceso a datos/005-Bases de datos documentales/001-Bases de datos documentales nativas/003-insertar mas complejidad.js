db.clientes.insertOne(
	{
		nombre:"Luis",
		apellidos:"Rojas Jimenez",
		correos:[
            {
                tipo:'personal',
                correo:'luisroji.10@gmail.com'
            },{
                tipo:'trabajo',
                correo:'info@luroji.com'
            }]
	}
)