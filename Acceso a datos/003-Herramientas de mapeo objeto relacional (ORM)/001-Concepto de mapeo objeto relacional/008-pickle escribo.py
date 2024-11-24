import pickle

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

correosluis = [
        {
        'tipo':'personal',
        'valor':'luisroji@correo.com'
        },
        {
        'tipo':'trabajo',
        'valor':['info@luisroji.com','luroji@gmail.com']
        }
    ]

personas.append(Persona("Luis","Rojas Jimenez",36,correosluis))

archivo = open('binario.bin', 'wb')
pickle.dump(personas, archivo)
archivo.close()


