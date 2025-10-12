let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function () {

        return this.nombre + ' ' + this.apellido;
        
    }

}

let persona2 = {

    nombre: "alberto",
    apellido: "sanchez",
   

}


console.log(persona.nombrecompleto());



console.log(persona.nombrecompleto.call(persona2));




















