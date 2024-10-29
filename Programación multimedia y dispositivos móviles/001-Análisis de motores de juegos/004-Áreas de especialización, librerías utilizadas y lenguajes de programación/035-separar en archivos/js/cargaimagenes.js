/*//////////////////////////////IMAGENES////////////////////////////////*/
      
      var imagenbueno = new Image();                                          // Creo una nueva imagen como objeto de Javascript
      imagenbueno.src = "./img/spritesheetgoku.png";                                     // Le pongo el origen de la imagen
      var imagenmalo = new Image()
      imagenmalo.src = "./img/freezer.png"
    
      
      var imagenfondo = new Image();
      imagenfondo.src = "./img/fondonamek.jpg"
      imagenfondo.onload = function(){                                  // Cuando la imagen de las plataformas ha cargado desde el disco duro
        contextofondo.drawImage(imagenfondo,0,0)                  // La pinto sobre el lienzo del fondo
      }
      
      var imagenBala = new Image(); // Imagen de la bala
      imagenBala.src = "./img/ondavital.png"; // Ruta de la imagen de la bala
      var balaCargada = false;
      imagenBala.onload = function() {
        balaCargada = true;
        }
      
      var imagennivel = new Image();
      imagennivel.src = "./img/nivel1.png"    
      imagennivel.onload = function(){
        contextoplataformas.imageSmoothingEnabled = false;       
        console.log("imagen cargada")
        contextoplataformas.drawImage(imagennivel,0,0,2048,512)   
      }