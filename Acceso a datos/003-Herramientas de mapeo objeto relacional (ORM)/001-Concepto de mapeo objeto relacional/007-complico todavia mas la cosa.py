import mysql.connector

class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad,nuevosemails):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad
        self.emails = nuevosemails

personas = []

correosjosevicente = [
        {
        'tipo':'personal',
        'valor':'luisroji@correo.com'
        },
        {
        'tipo':'trabajo',
        'valor':['info@luisroji.com','luroji@gmail.com']
        }
    ]

personas.append(Persona("Luis","Rojas Jimenez",36,['luisroji@correo.com','info@luisroji.com']))
personas.append(Persona("Jose","Lopez",40,['jose@lopez.com','info@jolopez.com']))


conexion = mysql.connector.connect(
            host='localhost',  
            database='accesoadatos', 
            user='accesoadatos',  
            password='accesoadatos'  
        )
cursor = conexion.cursor()
for persona in personas:
    correos = ', '.join(persona.emails)
    peticion = f"""
                INSERT INTO personas
                VALUES (
                NULL,
                '{persona.nombre}',
                '{persona.apellidos}',
                {persona.edad},
                '{correos}'
                );
                """
    cursor.execute(peticion)
conexion.commit()
