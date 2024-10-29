 class Jugador{                                                          // Declaro una clase jugador
        constructor(){                                                        // Define las propiedades de inicio de la instancia
          this.x = 256                                                        // Creo propiedades para ese objeto
          this.y = 256;
          this.vy = 0;
          this.cayendo = false;
          this.direccion = "izquierda"
          
        }
        dibuja(){                                                             // Método que se ejecuta para dibujar al personaje
          if(this.direccion == "izquierda"){                                  // Si la direccion es izquierda, toma la primera mitad de la imagen
            contexto.drawImage(imagenbueno, 
              0, 0, 25, 40,  // Source: x, y, width, height (on the sprite sheet)
              this.x-desfase_global_x, this.y, 25, 40  // Destination: x, y, width, height (on the canvas)
            );
          }else{                                                              // En caso contrario, toma la segunda mitad de la imagen
            contexto.drawImage(imagenbueno, 
              25, 0, 25, 40,  // Source: x, y, width, height (on the sprite sheet)
              this.x-desfase_global_x, this.y, 25, 40  // Destination: x, y, width, height (on the canvas)
            );
          }
        }
        mueve(){                                                              // grstiona el movimiento del personaje
          if(this.cayendo == true){
            jugador.vy += gravedad;
            jugador.y += jugador.vy
          }
            this.colisionaPlataformas() 
            
            if(!this.cayendo){
                this.vy=0;
            }else{
                this.muere();
            }
        
         //this.muere();
         
        }
        muere(){                                                              // Gestiona la muerte del personaje
          if(this.y > 512){
            window.location = window.location;
          }
        }
        colisionaPlataformas(){
          let pixel = contextoplataformas.getImageData(this.x-desfase_global_x,this.y+35,1,1)
          console.log(pixel)
          if(pixel.data[3] > 0){       
            this.cayendo = false;
          }else{
            this.cayendo = true;
            //window.location.reload()  
          }
        }
      }