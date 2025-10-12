
class Persona{


    static contadorPersona = 0;

    email = "mi correo  actual";

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

    get apellido() {
        
        return this._apellido;
    }


    set apellido(apellido) {

        this._apellido = apellido;
    }

    nombreCompleto() {

        return this._nombre + ' ' + this._apellido;
        

    }


    static saludar() {

        console.log('saludos desde método static');
        

    }

    static saludar2(persona) {

        console.log(persona.nombre + '   ' + persona.apellido)
        

    }




}

class empleado extends Persona{

    constructor(nombre, apellido, departamento) {
        super(nombre, apellido); //llamar al constructor de la clase padre
        this._departamento = departamento;
        
    }

    get departamento() {
        
        return this._departamento;
    }

    set departamento(departamento) {

        this._departamento = departamento;
        
    }

    //Sobreescritura

       nombreCompleto() {

        return super.nombreCompleto() + ' , ' + this._departamento;
        

    }



}



let persona2 = new empleado('ana', 'lopez', 'desarrollo');

console.log(persona2.email);

//console.log(persona2.nombreCompleto());


//Persona.saludar();

//empleado.saludar();

//Persona.saludar2(persona2);

console.log(Persona.contadorPersona);










