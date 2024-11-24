import mysql.connector
###################################### CREO UNA CLASE QUE ES EL MODELO DE DATOS
class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad,
                     nuevoemail,
                 nuevadireccion):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad
        self.email =  nuevoemail
        self.direccion = nuevadireccion

##################################### PREPARO UNA CONEXIÓN CON EL SERVIDOR

conexion = mysql.connector.connect(
            host='localhost',  
            database='accesoadatos', 
            user='accesoadatos',  
            password='accesoadatos'  
        )

cursor = conexion.cursor() 

##################################### CREO UNA LISTA DE PERSONAS

personas = []

personas.append(Persona("Luis","Rojas Jimenez",36,'info@luisroji.com','La calle de Luis'))
personas.append(Persona("Jose","Lopez",26,'jolopez@gmail.com','La calle de Jose'))

##################################### BORRAMOS LA TABLA ANTERIOR POR SI ACASO HAY DATOS ANTERIOR

peticion = "DROP TABLE Persona"
cursor.execute(peticion)

##################################### CREACIÓN DINÁMICA DE LA TABLA EN LA BASE DE DATOS

peticion = "CREATE TABLE IF NOT EXISTS Persona ("                                       # Preparo el principio de la petición

atributos = [attr for attr in dir(personas[0]) if not callable(getattr(personas[0], attr)) and not attr.startswith("__")]   # Listo los atributos de la clase

for atributo in atributos:                                                              # Para cada uno de los atributos
    peticion += atributo+" VARCHAR(255) NOT NULL ,"                                     # Los encadeno a la peticion

peticion = peticion[:-1]                                                                # Me como la ultima coma porque si no da error

peticion += ")"                                                                         # Cierro el parentesis de la peticion

                                                             # Creo un cursor
cursor.execute(peticion)                                                                # Ejecuto la peticion

##################################### INSERCIÓN DINÁMICA DE REGISTROS EN LA BASE DE DATOS

for persona in personas:                                                                # PAra cada una de las personas hago un insert
    peticion = "INSERT INTO Persona VALUES("                                            # Empiezo a preparar la insercion

    for atributo in atributos:                                                          # Para cada uno de los atributos
        peticion += "'"+str(getattr(persona, atributo))+"',"                            # Encadeno ese atributo a la peticion de insert
    peticion = peticion[:-1]                                                            # Le quito la ultima coma
    peticion += ");"                                                                    # Le encadeno el parentesis final
    cursor.execute(peticion)                                                            # Ejecuto la peticion
    
conexion.commit()                                                                       # Lo lanzo todo contra el servidor


































