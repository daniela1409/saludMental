/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;

import co.edu.fnsp.saludMental.entidades.Persona;
import java.util.ArrayList;

/**
 *
 * @author William Ortiz
 */
public interface IServicioPersona {

    public ArrayList<Persona> obtenerPersonas(String filtro);

    public Persona obtenerPersona(long idPersona);
    
}
