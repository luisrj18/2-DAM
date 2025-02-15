let a = document.querySelector("#a")
let b = document.querySelector("#b")

a.onclick = function(){
    revela("a")
}
b.onclick = function(){
    revela("b")
}

function revela(identificador){
console.log("#"+identificador+" .estadisticas")
    document.querySelector("#"+identificador+" .estadisticas").style.display = "block"
    fetch("https://jocarsa.com/go/pruebaclaseaob/dame.php")
    .then(function(result){
        console.log(datos)
    })
    .then(function(datos){
        console.log(datos)
    })
   }