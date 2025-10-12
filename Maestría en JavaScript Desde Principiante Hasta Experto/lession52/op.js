

class Persona{

    constructor(nombre, apellido) {
        
        this._nombre = nombre;
        this._apellido = apellido;
        
    }


    get nombre() {
        
        return this._nombre;
        

    }


    set nombre(nombre) {

        this._nombre = nombre;
        

    }




}






let persona1 = new Persona('luisa', 'bueno');

//persona1.nombre = "juan carlos";


console.log(persona1.nombre);





