/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.servicios;

import co.edu.fnsp.saludMental.entidades.TipoIdentificacion;
import java.util.List;

/**
 *
 * @author William
 */
public interface IServicioMaestro {

    List<TipoIdentificacion> obtenerTiposIdentificacion();

}
