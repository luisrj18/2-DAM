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

print(persona1)
