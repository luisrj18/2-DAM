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
    peticion = f"""
                INSERT INTO personas
                VALUES (
                NULL,
                '{persona.nombre}',
                '{persona.apellidos}',
                {persona.edad}
                {persona.emails}
                );
                """
    cursor.execute(peticion)
conexion.commit()
