//Funcion constructor de objetos de tipo Persona
function Personas(nombre, apellido, email) {
    
    this.nombre = nombre;
    this.apellido = apellido;
    this.email = email;
    
}

let padre = new Personas("orlando", "suarez", "orlando@gmail.com");
console.log(padre);


let madre = new Personas("maria", "galvez", "maria@gmail.com");
console.log(madre);






























