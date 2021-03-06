/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;

import co.edu.fnsp.saludMental.entidades.Perfil;
import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.Rol;
import co.edu.fnsp.saludMental.entidades.Usuario;
import java.util.List;

/**
 *
 * @author jedag
 */
public interface IServicioAdministracion {
    Usuario agregarUsuario(Usuario usuario);
    List<Rol> obtenerRoles();
    Perfil crearPerfil(Perfil perfil);
    boolean validarEdicionUsuario(String nombreUsuario, long idUsuario);
    Usuario obtenerUsuarioId(long idUsuario);
}
