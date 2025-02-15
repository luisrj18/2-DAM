window.onload = function(){
	fetch("http://192.168.56.1/2DAM/Sistemas%20de%20gesti%C3%B3n%20empresarial/proyecto/114-endpoint%20publico/endpointpublico/")
	.then(function(result){
		return result.json()
	})
	.then(function(datos){
	console.log(datos)
	let contenedor = document.querySelector("body")
	let plantilla = document.querySelector("#plantillacoche")
		datos.forEach(function(dato){
			let instancia = plantilla.content.cloneNode(true)
			instancia.querySelector("h3").textContent = dato.nombre
			instancia.querySelector(".descripcion").textContent = dato.descripcion
			instancia.querySelector(".precio").textContent = dato.precio
			contenedor.appendChild(instancia)
		})
	})
	.catch(function(error) {
	            console.error("Error fetching or processing data:", error);
	            let errorMessage = document.createElement("p");
	            errorMessage.textContent = error;
	            document.querySelector("body").appendChild(errorMessage);
	         });