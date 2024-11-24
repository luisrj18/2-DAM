let contenedores = []
let selectores = document.querySelectorAll("select");                     // Selecciono todos los selectores de la pagina
selectores.forEach(function(selector){                                    // Para cada uno de los selectores               
contenedores.push(document.createElement("div"))                         // Creo un div
contenedores[contenedores.length-1].classList.add("selectjv")                                    // Le pongo una clase
contenedores[contenedores.length-1].onclick = function(e){
  e.stopPropagation()
}

document.querySelector("body").appendChild(contenedores[contenedores.length-1])                  // En el body añado el contenedor
//contenedor.innerHTML = selector.outerHTML                             // En el contenedor pongo el contenido del select
selector.remove()                                                       // Y elimino el select original
let caja = document.createElement("div")                                // Creo una caja
caja.classList.add("caja")                                              // Le pongo una clase
caja.textContent = selector.querySelector("option:first-child").value   // Le pongo el texto del primero option
contenedores[contenedores.length-1].appendChild(caja)                                            // Lo añado al contenedor
caja.onclick = function(e){                                              // Cuando haga click en la caja
  e.stopPropagation();
  caja.classList.add("radio2")                                          // Le cambio la clase del radio
  let resultados = document.createElement("div")                        // Creo un div de resultados
  resultados.classList.add("resultados")                                // Le pongo la clase
  contenedores[contenedores.length-1].appendChild(resultados)                                    // Lo añado al contenedor
  
  let buscador = document.createElement("input")                        // Creo un campo input de busqueda
  buscador.setAttribute("type","search")                                // LE digo que el tipo de input es search
  buscador.setAttribute("placeholder","busca...")                       // Le pongo un placeholder
  resultados.appendChild(buscador)                                      // Lo añado al buscador
  buscador.onkeyup = function(){                                        // Cuando pulse una tecla en el buscador
    let busca = this.value                                              // Pongo el contenido en una variable
    contieneresultados.innerHTML = ""                                         // Vacío los resultados
    opciones.forEach(function(opcion){                                    // Y para cada una de las opciones
      if(opcion.value.includes(busca)){                                 // Si la opcion contiene lo que se esta buscando
        let texto = document.createElement("p")                             // Creo un elemento de texto
        texto.textContent = opcion.value                                    // Les pongo el texto
        contieneresultados.appendChild(texto)                                       // Y las añado a los resultados
      }
    })
  }
  
  let contieneresultados = document.createElement("div")              // Creo un contenedor intermedio
 
  
  let opciones = selector.querySelectorAll("option")                    // Selecciono las opciones
  opciones.forEach(function(opcion){                                    // Y para cada una de las opciones
    let texto = document.createElement("p")                             // Creo un elemento de texto
    texto.textContent = opcion.value                                    // Les pongo el texto
    contieneresultados.appendChild(texto)                                       // Y las añado a los resultados
  })
  
  resultados.appendChild(contieneresultados)                            // A los resultados les añado el contenedor intermedio
}

})
document.onclick = function(){
  console.log("ok body")
  contenedores.forEach(function(contenedor){
  console.log(contenedor)
  try{
    contenedor.querySelector(".resultados").remove()
    contenedor.querySelector(".caja").classList.remove("radio2") 
  }catch(error){
    console.log("error pero no pasa nada")
  }
    
  })
} 