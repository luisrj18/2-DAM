import mysql.connector

class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad,
                     nuevoemail):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad
        self.email =  nuevoemail

conexion = mysql.connector.connect(
            host='localhost',  
            database='accesoadatos', 
            user='accesoadatos',  
            password='accesoadatos'  
        )

personas = []

personas.append(Persona("Luis","Rojas Jimenez",36,'info@luisroji.com'))
personas.append(Persona("Jose","Lopez",26,'jolopez@gmail.com'))

peticion = "CREATE TABLE IF NOT EXISTS Persona ("

atributos = [attr for attr in dir(personas[0]) if not callable(getattr(personas[0], attr)) and not attr.startswith("__")]

for atributo in atributos:
    peticion += atributo+" VARCHAR(255) NOT NULL ,"

peticion = peticion[:-1]

peticion += ")"
print(peticion)


cursor = conexion.cursor()
cursor.execute(peticion)
conexion.commit()
