import mysql.connector

class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad

persona1 = Persona("Luis","Rojas Jimenez",36)
persona2 = Persona("Jose","Lopez",40)


conexion = mysql.connector.connect(
            host='localhost',  
            database='accesoadatos', 
            user='accesoadatos',  
            password='accesoadatos'  
        )
cursor = conexion.cursor()

peticion = f"""
            INSERT INTO personas VALUES (NULL,'{persona1.nombre}','{persona1.apellidos}',{persona1.edad});
            """
cursor.execute(peticion)
conexion.commit()
