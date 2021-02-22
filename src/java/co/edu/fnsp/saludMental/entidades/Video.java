/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.entidades;

import java.io.Serializable;

/**
 *
 * @author Carolina
 */

public class Video implements Serializable {
    
    private long idVideo;
    private String fecha;
    private String tema;
    private String descripcion;
    private String palabrasClave;
    private String fechaRegistro;
    private String usuarioRegistra;
    private String productor;
    private String lineaAccion;
    private String url;

    public long getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(long idVideo) {
        this.idVideo = idVideo;
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

    public String getProductor() {
        return productor;
    }

    public void setProductor(String productor) {
        this.productor = productor;
    }

    public String getLineaAccion() {
        return lineaAccion;
    }

    public void setLineaAccion(String lineaAccion) {
        this.lineaAccion = lineaAccion;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

}
