/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.repositorios;

import co.edu.fnsp.saludMental.entidades.Privilegio;
import co.edu.fnsp.saludMental.entidades.Usuario;
import java.util.List;

/**
 *
 * @author William
 */
public interface IRepositorioSeguridad {

    Usuario obtenerUsuario(String nombreUsuario);

    Usuario obtenerUsuario(long idUsuario);

    String obtenerClaveUsuario(long idUsuario);

    void crearUsuario(Usuario usuario);

    void actualizarUsuario(Usuario usuario);

    void actualizarClaveUsuario(long idUsuario, String clave);

    List<Privilegio> obtenerPrivilegios();

    List<Usuario> obtenerUsuarios();

    void actualizarPrivilegiosUsuario(long idUsuario, List<Privilegio> privilegios);

    List<Privilegio> obtenerPrivilegiosUsuario(long idUsuario);

    Privilegio obtenerPrivilegio(int idPrivilegio);

    void eliminarPrivilegio(int idPrivilegio);

    void crearPrivilegio(Privilegio privilegio);

    boolean existePrivilegio(String codigo);
}
