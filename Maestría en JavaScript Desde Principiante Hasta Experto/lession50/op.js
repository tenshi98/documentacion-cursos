let persona = {
    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function (profesion , telefono) {

        return profesion +  ";" +this.nombre + ' ' + this.apellido + " , " +telefono;
        
    }

}



let persona2 = {

    nombre: "alberto",
    apellido: "sanchez",
   

}


console.log(persona.nombrecompleto("programador" , "55555555"));



console.log(persona.nombrecompleto.call(persona2 ,"ingeniero" ,"898484785474"));




















