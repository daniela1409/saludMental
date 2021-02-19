/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;

import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.repositorios.IRepositorioPersona;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author William Ortiz
 */

@Service("servicioPersona")
public class ServicioPersona implements IServicioPersona {

    @Autowired
    private IRepositorioPersona repositorioPersona;
    
    @Override
    public List<Persona> obtenerPersonas() {
       return repositorioPersona.obtenerPersonas();
    }

    @Override
    public Persona obtenerPersona(long idPersona) {
        return repositorioPersona.obtenerPersona(idPersona);
    }
    
}
