



let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function () {

        return this.nombre + ' ' + this.apellido;
        
    }

}

//Concatenar cada valor de cada propiedad


//console.log(persona.nombre + "  " + persona.apellido);



// for in

/*for (nombrePropiedad in persona) {
    
    console.log(persona[nombrePropiedad]);
    
}*/


/*/let = personaArray = Object.values(persona);

console.log(personaArray);*/

let = personaString = JSON.stringify(persona);

console.log(personaString);













