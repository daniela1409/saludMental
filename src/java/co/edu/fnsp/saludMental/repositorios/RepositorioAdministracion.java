/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.repositorios;


import co.edu.fnsp.saludMental.entidades.Perfil;
import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.Rol;
import co.edu.fnsp.saludMental.entidades.Usuario;
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
 * @author jedag
 */
@Repository("repositorioAdministracion")
public class RepositorioAdministracion implements IRepositorioAdministracion{
    
    private SimpleJdbcCall ingresarUsuario;
    private SimpleJdbcCall obtenerUsuarios;
    private SimpleJdbcCall obtenerUsuario;
    private SimpleJdbcCall obtenerPersonas;
    private SimpleJdbcCall obtenerPersona;
    private SimpleJdbcCall obtenerRoles;
    private SimpleJdbcCall crearPerfil;
    private SimpleJdbcCall obtenerIdUsuario;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        
        this.ingresarUsuario = new SimpleJdbcCall(jdbcTemplate).withProcedureName("ingresarUsuario");
        this.obtenerRoles = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerRoles").returningResultSet("roles", BeanPropertyRowMapper.newInstance(Rol.class));
        this.crearPerfil = new SimpleJdbcCall(jdbcTemplate).withProcedureName("crearPerfil");
        /*this.obtenerUsuarios = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerUsuarios").returningResultSet("usuarios", BeanPropertyRowMapper.newInstance(Usuario.class));
        this.obtenerUsuario = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerUsuario");
        this.obtenerPersonas = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerPersonas").returningResultSet("personas", BeanPropertyRowMapper.newInstance(Persona.class));
        this.obtenerPersona = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerPersona");*/
        
        this.obtenerIdUsuario = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerIdUsuario");
    }
    
    
    @Override
    public Usuario ingresarUsuario(Usuario usuario){
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varNombreUsuario", usuario.getNombreUsuario());
        parametros.addValue("varIdPersona", usuario.getIdPersona());
        parametros.addValue("varClave", usuario.getClave());
        
        Map resultado = ingresarUsuario.execute(parametros);
        
        usuario.setIdUsuario((long)resultado.get("varIdUsuario"));

        return usuario;
    }
    
    @Override
    public List<Rol> obtenerRoles(){
        Map resultado = obtenerRoles.execute();
        List <Rol> roles = (List<Rol>) resultado.get("roles");
        return roles;
    }
    
    @Override
    public Perfil crearPerfil(Perfil perfil){
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varUsuario", (long)perfil.getIdUsuario());
        parametros.addValue("varRol", (int)perfil.getIdRol());
        parametros.addValue("varAplicacion",(int) perfil.getIdApp());
        
        Map resultado = crearPerfil.execute(parametros);
        perfil.setIdPerfil((int)resultado.get("varId"));

        return perfil;
    }
    /*
    @Override
    public List<User> obtenerUsuarios() {
        Map resultado = obtenerUsuarios.execute();
        List <User> user = (List<User>) resultado.get("usuarios");
       
        return user;
    }*/
    /*
     @Override
    public User obtenerUsuario(String nombreUsuario) {
        User user = new User();
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varNombreUsuario", nombreUsuario);

        Map resultado = obtenerUsuario.execute(parametros);
        user.setPerfil(nombreUsuario);
        user.setNombres((String)resultado.get("varNombres"));
        user.setApellidos((String)resultado.get("varApellidos"));
        user.setId((String)resultado.get("varIdUsuario"));
        user.setClave((String)resultado.get("varClave"));
        user.setCorreo((String)resultado.get("varCorreoElectronico"));
        return user;
    }
    */
    /*
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
    
    @Override
    public List<Persona> obtenerPersonas() {
        Map resultado = obtenerPersonas.execute();
        List <Persona> personas = (List<Persona>) resultado.get("personas");
        return personas;
    }
    */
    @Override
    public int obtenerIdUsuario(String nombreUsuario, int idUsuario) {
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varNombreUsuario", nombreUsuario);
        parametros.addValue("varCodigoEn", idUsuario);

        Map resultado = obtenerIdUsuario.execute(parametros);
        
        return ((int) resultado.get("varCodigo"));
        
       
    }


   }
