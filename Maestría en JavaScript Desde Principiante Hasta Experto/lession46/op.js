



let persona = {

    nombre: "luis",
    apellido: "bueno",
    email: "luis@gmail",
    edad: 28,
    idioma: 'es',
    get lang() {

        return this.idioma.toUpperCase();
        
    },

    set lang(lang) {

        this.idioma = lang.toUpperCase();
        

    },

    get nombrecompleto() {

        return this.nombre + ' ' + this.apellido;
        
    }

}

console.log(persona.lang);

persona.lang = 'en';

console.log(persona.lang);

console.log(persona.idioma);






















