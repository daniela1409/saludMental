/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;

import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.Usuario;
import java.util.List;

/**
 *
 * @author jedag
 */
public interface IServicioAdministracion {
    void agregarUsuario(Usuario usuario);
    //List<User> obtenerUsuarios();
    //User obtenerUsuario(String id);
    //List<Persona> obtenerPersonas();
    //Persona obtenerPersona(long id); 
    //boolean validarEdicionUsuario(String nombreUsuario, int idUsuario);
}
