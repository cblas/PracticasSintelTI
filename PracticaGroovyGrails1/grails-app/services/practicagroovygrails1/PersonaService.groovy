package practicagroovygrails1

import grails.transaction.Transactional
import java.text.SimpleDateFormat;
import java.text.ParseException;

@Transactional
class PersonaService
{
    def utilService
    Persona guardarPersona(params)
    {

        println params
        Persona persona = new Persona(params)
        SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yy");
        try
        {
            persona.fechaNacimiento = formato.parse(params.fecha)
        }
        catch (ParseException ex)
        {
            System.out.println(ex);
        }
        persona.save(flush:true, failOnError:true)
        persona
    }
    Persona consultarPersona(Long id)
    {
        Persona persona=persona.get(id)
        persona.edad=utilService.calcularEdad(persona.fechaNacimiento)
        persona
    }

    List<Persona> listarPersona(params)
    {
        println params
        List<Persona> listaPersonas=Persona.findAll()
        println "listaPersonas "+listaPersonas
        listaPersonas
    }
}
