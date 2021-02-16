/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;


import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.User;
import co.edu.fnsp.saludMental.repositorios.IRepositorioAdministracion;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author jedag
 */
@Service("servicioAdministracion")
public class ServicioAdministracion implements IServicioAdministracion{
    
    @Autowired
    private IRepositorioAdministracion repositorioAdministracion;
    
    @Override
    public void agregarUser(User user){
        repositorioAdministracion.ingresarUser(user);
    }
    
    @Override
    public List<User> obtenerUsuarios() {
        return repositorioAdministracion.obtenerUsuarios();
        
    }
    /*
    @Override
    public User obtenerUsuario(String id){
        return repositorioAdministracion.obtenerUsuario(id);
    }
    */
    @Override
    public List<Persona> obtenerPersonas() {
        return repositorioAdministracion.obtenerPersonas();
        
    }
    
    @Override
    public Persona obtenerPersona(long id){
        return repositorioAdministracion.obtenerPersona(id);
    }
    /*
    @Override
    public boolean validarEdicionUsuario(String nombreUsuario, int idUsuario) {
        int codigoOfertaEmpleo = repositorioAdministracion.obtenerIdUsuario(nombreUsuario, idUsuario);
        
        return codigoOfertaEmpleo!=0;
        
    }*/
}
