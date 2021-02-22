/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.entidades;

import java.io.Serializable;
import java.util.ArrayList;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author Carolina
 */

public class Webinar implements Serializable {

    private long idWebinar;
    private String fecha;
    private String tema;
    private String descripcion;
    private String palabrasClave;
    private String fechaRegistro;
    private String usuarioRegistra;
    private String lineaAccion;
    private String invitados;
    private String horaInicio;
    private String horaFin;
    private String url;

    public long getIdWebinar() {
        return idWebinar;
    }

    public void setIdWebinar(long idWebinar) {
        this.idWebinar = idWebinar;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getTema() {
        return tema;
    }

    public void setTema(String tema) {
        this.tema = tema;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getPalabrasClave() {
        return palabrasClave;
    }

    public void setPalabrasClave(String palabrasClave) {
        this.palabrasClave = palabrasClave;
    }

    public String getFechaRegistro() {
        return fechaRegistro;
    }

    public void setFechaRegistro(String fechaRegistro) {
        this.fechaRegistro = fechaRegistro;
    }

    public String getUsuarioRegistra() {
        return usuarioRegistra;
    }

    public void setUsuarioRegistra(String usuarioRegistra) {
        this.usuarioRegistra = usuarioRegistra;
    }

    public String getLineaAccion() {
        return lineaAccion;
    }

    public void setLineaAccion(String lineaAccion) {
        this.lineaAccion = lineaAccion;
    }

    public String getHoraInicio() {
        return horaInicio;
    }

    public void setHoraInicio(String horaInicio) {
        this.horaInicio = horaInicio;
    }

    public String getHoraFin() {
        return horaFin;
    }

    public void setHoraFin(String horaFin) {
        this.horaFin = horaFin;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
       

    
}
