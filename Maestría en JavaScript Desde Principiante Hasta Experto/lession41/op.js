



let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function () {

        return this.nombre + ' ' + this.apellido;
        
    }

}


//console.log(persona.nombre);
//console.log(persona['apellido']);


//for in

for (nomprePropiedad in persona) {
    
    //console.log(nomprePropiedad);
    console.log(persona[nomprePropiedad]);
    

}





