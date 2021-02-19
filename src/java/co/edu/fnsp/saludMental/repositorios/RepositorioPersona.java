/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.repositorios;

import co.edu.fnsp.saludMental.entidades.Persona;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

/**
 *
 * @author William Ortiz
 */
@Repository("repositorioPersona")
public class RepositorioPersona implements IRepositorioPersona {
    private SimpleJdbcCall obtenerPersonas;
    private SimpleJdbcCall obtenerPersona;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.setResultsMapCaseInsensitive(true);

        this.obtenerPersonas = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerPersonas").
                returningResultSet("personas", BeanPropertyRowMapper.newInstance(Persona.class));
        this.obtenerPersona = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerPersona");
    }
    
    /*
    @Override
    public ArrayList<Persona> obtenerPersonas(String filtro) {
     MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varFiltro", filtro);
        Map resultado = obtenerPersonas.execute(parametros);
        ArrayList<Persona> coleccion = (ArrayList<Persona>) resultado.get("personas");

        return coleccion;
    }*/
    
    @Override
    public List<Persona> obtenerPersonas() {
        Map resultado = obtenerPersonas.execute();
        List <Persona> personas = (List<Persona>) resultado.get("personas");
        return personas;
    }

    /*@Override
    public Persona obtenerPersona(long idPersona) {
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varIdPersona", idPersona);
        Map resultado = obtenerPersona.execute(parametros);

        Persona persona = new Persona();
        persona.setIdPersona(idPersona);
        persona.setNumeroDocumento((String) resultado.get("varNumeroDocumento"));
        persona.setNombres((String) resultado.get("varNombres"));
        persona.setApellidos((String) resultado.get("varApellidos"));

        return persona;
    }*/
    @Override
    public Persona obtenerPersona(long id) {
        Persona persona = new Persona();
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varIdPersona", id);
        
        Map resultado = obtenerPersona.execute(parametros);
        persona.setIdPersona(id);
        persona.setNombres((String)resultado.get("varNombres"));
        persona.setApellidos((String)resultado.get("varApellidos"));
        persona.setNumeroDocumento((String)resultado.get("varNumeroDocumento"));
        persona.setTipoDocumento((String)resultado.get("varTipoDocumento"));
        persona.setEmail((String)resultado.get("varEmail"));
        persona.setTelefono((String)resultado.get("varTelefono"));
        return persona;
    }
}
