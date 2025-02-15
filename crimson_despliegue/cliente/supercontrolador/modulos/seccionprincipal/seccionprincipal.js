function cargaGraficas(){
 console.log("Vamos a por las graficas") 
    fetch("../../servidor/?o=estadisticastablas")
    .then(function(result){
    		return result.json()
    })
    .then(function(datos){
    console.log("el servidor dice ok")
    let nuevografico = new JVGrafica(datos,"#6495ED","table tbody","Registros en cada tabla");
    nuevografico.anillo()
    })  
}

function cargoAplicaciones(){
   ////////////////////////////////// CARGO LAS APLICACIONES /////////////////////////////////////////////
    
    fetch("apps/apps.json")
    .then(function(response){
    	return response.json()
    })
    .then(function(datos){
    	console.log(datos)
    	aplicaciones = datos
    })  
    
}