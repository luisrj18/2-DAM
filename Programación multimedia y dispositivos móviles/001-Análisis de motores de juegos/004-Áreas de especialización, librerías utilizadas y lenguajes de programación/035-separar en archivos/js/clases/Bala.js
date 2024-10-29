 class Bala{
         constructor(){
           this.x = jugador.x;                              
           this.y = jugador.y;                              // La posición y inicial de la bala es la misma posición del jugador
           this.vx = 10;                                    // A la bala se le da una velocidad inicial
           if(jugador.direccion == "izquierda"){            // Si el jugador va hacia la izquierda
             this.direccion = -1                            // En ese caso la velociad de la bala es negativa
            } else {                                         // Si el personaje va hacia la derecha
              this.direccion = 1
            }
            this.ancho = 20;                                 // Ajusta el ancho según la imagen
            this.alto = 20;                                  // Ajusta la altura según la imagen
          }
          mueve(){                                           // Método que mueve la bala
            this.x += this.direccion * this.vx               // Actualiza su posición
          }
          dibuja(){                                          // Método que dibuja la bala
            if(balaCargada){
              contexto.drawImage(imagenBala, this.x-desfase_global_x, this.y, this.ancho, this.alto);
            }
          }
        }
