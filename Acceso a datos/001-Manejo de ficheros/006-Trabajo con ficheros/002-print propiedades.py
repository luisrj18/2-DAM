import random
import math
import json
# Declaro una clase Npc y le pongo dos sencillas propiedades x e y
class Npc:
    def __init__(self):
        self.x = random.randint(0,512)
        self.y = random.randint(0,512)
        self.angulo = random.random()*math.pi*2
# Creo una lista de 50 npcs
npcs = []
numero = 50
# Recorro la lista y a cada elemento le meto una instancia de la clase Npc
for i in range(0,numero):
    npcs.append(Npc())

cadena = []

for i in range(0,numero):
    cadena.append({"x":npcs[i].x,"y":npcs[i].y,"angulo":npcs[i].angulo})


json_formatted_str = json.dumps(cadena, indent=2)
print(json_formatted_str)
mibasededatos = open("basededatos.json",'w')
mibasededatos.write(json_formatted_str)
mibasededatos.close()
