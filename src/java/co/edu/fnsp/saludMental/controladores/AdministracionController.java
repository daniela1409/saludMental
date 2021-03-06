
package co.edu.fnsp.saludMental.controladores;



import co.edu.fnsp.saludMental.entidades.Perfil;
import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.Privilegio;
import co.edu.fnsp.saludMental.entidades.Rol;
import co.edu.fnsp.saludMental.entidades.Usuario;
import co.edu.fnsp.saludMental.servicios.IServicioAdministracion;
import co.edu.fnsp.saludMental.servicios.IServicioPersona;
import co.edu.fnsp.saludMental.servicios.IServicioSeguridad;
import com.google.gson.Gson;
import java.io.IOException;
import java.text.ParseException;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.validation.Valid;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import static org.springframework.security.core.authority.AuthorityUtils.authorityListToSet;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value = "/administracion")
public class AdministracionController {
    
     private static final Logger logger = LogManager.getLogger(AdministracionController.class.getName());
    
    @Autowired
    private IServicioSeguridad servicioSeguridad;
    
    @Autowired
    private IServicioPersona servicioPersona;
    
    @Autowired
    private IServicioAdministracion servicioAdministracion;
    
    @RequestMapping(value = "/indexUsuario", method = RequestMethod.GET)
    public String userIndex(Model model) {
        
       
        List<Usuario> usuarios = servicioSeguridad.obtenerUsuarios();

        model.addAttribute("usuarios", usuarios);
        
        return "administracion/indexUsuario";
    }
    
    
  
    @RequestMapping(value = "/crearUsuario", method = RequestMethod.GET)
    public String usuarios(Model model) {
        List<Persona> personas = servicioPersona.obtenerPersonas();
        List<Rol> roles = servicioAdministracion.obtenerRoles();
        
        model.addAttribute("personas", personas);
        model.addAttribute("roles", roles);
        
        return "administracion/crearUsuario";
    }
    
    
  @RequestMapping(value = "/crearUsuario", method = RequestMethod.POST)
    public @ResponseBody
    String crearUsuario(@ModelAttribute co.edu.fnsp.saludMental.entidadesVista.User user, Model model) throws ParseException, IOException {
        try {
            Usuario userIngresar = new Usuario();
            userIngresar.setIdPersona((long)user.getPersona());
            userIngresar.setNombreUsuario(user.getNombreUsuario());
            userIngresar.setClave(user.getClave());
            
            Persona persona = servicioPersona.obtenerPersona(user.getPersona());
            
            userIngresar.setNombres(persona.getNombres());
            userIngresar.setApellidos(persona.getApellidos());
            userIngresar.setCorreoElectronico(persona.getEmail());
                       
            
            Usuario usuario = servicioAdministracion.agregarUsuario(userIngresar);
            
            Perfil perfil = new Perfil();
            
            perfil.setIdApp(5);
            perfil.setIdRol(user.getPerfil());
            perfil.setIdUsuario((int)usuario.getIdUsuario());
            
            perfil = (Perfil)servicioAdministracion.crearPerfil(perfil);
            return "redirect:/crearUsuario";
            
            
        } catch (Exception exc) {
            logger.error(exc);
            throw exc;
        }
        
    }
    
    @RequestMapping(value = "/validarUsuario", method = RequestMethod.POST)
    public @ResponseBody
    String validarUsuario(@ModelAttribute co.edu.fnsp.saludMental.entidadesVista.ValidarEdicionUsuario userValidar, Model model) throws ParseException, IOException {
        
        boolean puedeEditar = servicioAdministracion.validarEdicionUsuario(userValidar.getNombreUsuario(), (int)userValidar.getIdUsuario());
        
        if(!puedeEditar) {
            return "El código ingresado no es válido. No se puede editar la oferta de empleo";
        }
        
        return "";
    }
    
    
    @RequestMapping(value = "/mostrarEditarUsuario", method = RequestMethod.POST)
    public String mostrarEditarUsuario(@ModelAttribute co.edu.fnsp.saludMental.entidadesVista.ValidarEdicionUsuario userValidar, Model model) {
        
        
        
        Usuario usuarioEditar = (Usuario)servicioAdministracion.obtenerUsuarioId((long)userValidar.getIdUsuario());
        
        List<Rol> roles = servicioAdministracion.obtenerRoles();
        
        model.addAttribute("roles", roles);
        model.addAttribute("usuario", usuarioEditar);
       
        return "administracion/editar";
    }
    
    
    @RequestMapping(value = "/mostrarEditarUsuario/editar", method = RequestMethod.POST)
    public @ResponseBody
    String editarUsuario(@ModelAttribute co.edu.fnsp.saludMental.entidadesVista.User user, Model model) throws ParseException, IOException {
       
             return "";
        
        
    }
   
    
    @RequestMapping(value = "/{idUsuario}", method = RequestMethod.GET)
    public @ResponseBody
    String obtenerUsuario(@PathVariable long idUsuario, Model model) {
        Usuario usuario = servicioAdministracion.obtenerUsuarioId(idUsuario);
        Gson gson = new Gson();

        return gson.toJson(usuario);
    }
}
