/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.entidadesVista;

/**
 *
 * @author jedag
 */
public class User {
    private long persona;
    private int perfil;
    private String nombreUsuario;
    private String clave;

    public User() {
    }

        
    public long getPersona() {
        return persona;
    }

    public void setPersona(long persona) {
        this.persona = persona;
    }

    public int getPerfil() {
        return perfil;
    }

    public void setPerfil(int perfil) {
        this.perfil = perfil;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }
    
    
}
