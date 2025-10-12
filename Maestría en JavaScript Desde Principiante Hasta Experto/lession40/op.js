



let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    nombrecompleto: function () {

        return this.nombre + ' ' + this.apellido;
        
    }

}


let persona2 = new Object();

persona2.nombre = "carlos";
persona2.apellido = "ramirez";


console.log(persona2.apellido);
