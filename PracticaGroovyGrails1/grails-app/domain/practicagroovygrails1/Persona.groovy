package practicagroovygrails1

class Persona {

    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String email
    Date fechaNacimiento
    Integer edad
    String descripcion

    static constraints = {
        nombre nullable: false, blank: false
        apellidoPaterno nullable: false, blank: false
        apellidoMaterno nullable: true
        email email: true
        fechaNacimiento nullable: true
        edad nullable: true
        descripcion nullable: false
    }
}
