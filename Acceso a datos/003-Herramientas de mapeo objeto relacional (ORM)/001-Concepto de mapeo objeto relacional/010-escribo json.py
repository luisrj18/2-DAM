import json

class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad,nuevosemails):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad
        self.emails = nuevosemails
    def to_dict(self):
        return {
            'nombre': self.nombre,
            'apellidos': self.apellidos,
            'edad': self.edad,
            'emails': self.emails
        }

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

diccionario = [persona.to_dict() for persona in personas]


archivo =  open('personas.json', 'w', encoding='utf-8')
json.dump(diccionario, archivo, ensure_ascii=False, indent=4)
archivo.close()

