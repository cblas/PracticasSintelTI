package practicagroovygrails1

import grails.transaction.Transactional

@Transactional
class UtilService {

    def serviceMethod() {

    }

    Integer calcularEdad(Date date)
    {
        Integer edad = new Date().year - date.year
        edad
    }
}
