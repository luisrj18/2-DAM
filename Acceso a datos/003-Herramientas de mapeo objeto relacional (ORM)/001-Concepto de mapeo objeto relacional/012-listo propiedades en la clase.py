class Persona:
    def __init__(self,
                    nuevonombre,
                    nuevosapellidos,
                    nuevaedad):
        self.nombre = nuevonombre
        self.apellidos = nuevosapellidos
        self.edad = nuevaedad

personas = []

personas.append(Persona("Luis","Rojas Jimenez",36))
personas.append(Persona("Jose","Lopez",26))

atributos = [attr for attr in dir(personas[0]) if not callable(getattr(personas[0], attr)) and not attr.startswith("__")]

print(atributos)

