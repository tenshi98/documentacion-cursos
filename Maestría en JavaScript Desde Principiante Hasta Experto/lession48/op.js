
//Funcion constructor de objetos de tipo Persona
function Personas(nombre, apellido, email) {
    
    this.nombre = nombre;
    this.apellido = apellido;
    this.email = email;
    this.nombreCompleto = function () {
        
        return this.nombre + " " + this.apellido;
        

    }
    
}


Personas.prototype.telefono = "34343433343";

let padre = new Personas("orlando", "suarez", "orlando@gmail.com");
padre.telefono = "454000000";
console.log(padre.telefono);


let madre = new Personas("maria", "galvez", "maria@gmail.com");
console.log(madre.telefono);





















