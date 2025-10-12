



let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function () {

        return this.nombre + ' ' + this.apellido;
        
    }

}


persona.telefono = "6754324423";
persona.telefono = "67444444423";

delete persona.telefono;
delete persona.nombrecompleto;

console.log(persona);







