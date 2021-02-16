/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.repositorios;

import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.User;
import java.util.List;

/**
 *
 * @author jedag
 */
public interface IRepositorioAdministracion {
    User ingresarUser(User user);
    List<User> obtenerUsuarios();
    //User obtenerUsuario(String nombreUsuario);
    Persona obtenerPersona(long id);
    List<Persona> obtenerPersonas();
    //int obtenerIdUsuario(String nombreUsuario, int idUsuario);
}
