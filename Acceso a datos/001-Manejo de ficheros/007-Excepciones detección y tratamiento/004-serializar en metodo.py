import json

class Cliente:
    def __init__(self):
        self.nombre = None
        self.apellidos = None
        self.emails = {"personal":[],"profesional":[]}
    def to_dict(self):
        return {
            "nombre": self.nombre,
            "apellidos": self.apellidos,
            "emails": self.emails
        }

class Producto:
    def __init__(self):
        self.nombre = None
        self.precio = None
        self.peso = None
        self.dimensiones = {"x":None,"y":None,"z":None}

clientes = []
clientes.append(Cliente())

clientes[-1].nombre = "José Luis"
clientes[-1].apellidos = "Rojas Jiménez"
clientes[-1].emails['profesional'].append("info@luisrojasjimenez.com")
clientes[-1].emails['profesional'].append("info@luisroji.com")
clientes[-1].emails['personal'].append("luisroji.10@gmail.com")

print(clientes[-1].emails)

archivo = open("clientes.json",'w')
json.dump(clientes[-1].to_dict(),archivo,indent=4)
archivo.close()

        


        
