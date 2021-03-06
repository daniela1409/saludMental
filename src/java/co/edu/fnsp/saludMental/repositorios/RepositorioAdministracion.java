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
    
    
    private SimpleJdbcCall obtenerRoles;
    private SimpleJdbcCall crearPerfil;
    private SimpleJdbcCall obtenerIdUsuario;
    private SimpleJdbcCall obtenerUsuarioId;
    private SimpleJdbcCall ingresarUsuario;

    @Autowired
    public void setDataSource(DataSource dataSource) {
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.setResultsMapCaseInsensitive(true);
        
        this.ingresarUsuario = new SimpleJdbcCall(jdbcTemplate).withProcedureName("ingresarUsuario");
        this.obtenerRoles = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerRoles").returningResultSet("roles", BeanPropertyRowMapper.newInstance(Rol.class));
        this.crearPerfil = new SimpleJdbcCall(jdbcTemplate).withProcedureName("crearPerfil");
        
        this.obtenerIdUsuario = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerIdUsuario");
        this.obtenerUsuarioId = new SimpleJdbcCall(jdbcTemplate).withProcedureName("obtenerUsuarioId");
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
    
    
    @Override
    public long obtenerIdUsuario(String nombreUsuario, long idUsuario) {
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varNombreUsuario", nombreUsuario);
        parametros.addValue("varCodigoEn", idUsuario);

        Map resultado = obtenerIdUsuario.execute(parametros);
        
        return ((int) resultado.get("varCodigo"));
        
       
    }
    
    @Override
    public Usuario obtenerUsuarioId(long idUsuario) {
        MapSqlParameterSource parametros = new MapSqlParameterSource();
        parametros.addValue("varCodigoEn", idUsuario);

        Map resultado = obtenerUsuarioId.execute(parametros);
        
        Usuario usuario = new Usuario();
        usuario.setNumeroIdentificacion((String) resultado.get("varNumeroIdentificacion"));
        usuario.setNombreUsuario((String) resultado.get("varNombreUsuario"));
        usuario.setNombres((String) resultado.get("varNombres"));
        usuario.setApellidos((String) resultado.get("varApellidos"));
        usuario.setClave((String) resultado.get("varClave"));
        usuario.setCorreoElectronico((String) resultado.get("varCorreoElectronico"));
        usuario.setIdUsuario(Integer.parseInt(resultado.get("varIdUsuario").toString()));
        usuario.setIdPersona((long) resultado.get("varIdPersona"));

        
       return usuario;
    }

   }
