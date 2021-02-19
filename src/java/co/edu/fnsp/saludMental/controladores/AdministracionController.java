
package co.edu.fnsp.saludMental.controladores;



import co.edu.fnsp.saludMental.entidades.Persona;
import co.edu.fnsp.saludMental.entidades.Usuario;
import co.edu.fnsp.saludMental.servicios.IServicioAdministracion;
import co.edu.fnsp.saludMental.servicios.IServicioPersona;
import co.edu.fnsp.saludMental.servicios.IServicioSeguridad;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;
import javax.validation.Valid;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
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
        
        //Usuario usuario = (Usuario) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        
        List<Usuario> usuarios = servicioSeguridad.obtenerUsuarios();

        model.addAttribute("usuarios", usuarios);
        
        return "administracion/indexUsuario";
    }
    
    
  
    @RequestMapping(value = "/crearUsuario", method = RequestMethod.GET)
    public String usuarios(Model model) {
        List<Persona> personas = servicioPersona.obtenerPersonas();
        
        model.addAttribute("personas", personas);
        return "administracion/crearUsuario";
    }
    
    
  @RequestMapping(value = "/crearUsuario", method = RequestMethod.POST)
    public @ResponseBody
    String crearUsuario(@ModelAttribute co.edu.fnsp.saludMental.entidadesVista.User user, Model model) throws ParseException, IOException {
        try {
            Usuario userIngresar = new Usuario();
            userIngresar.setIdPersona((long)user.getPersona());
            userIngresar.setNombreUsuario(user.getPerfil());
            userIngresar.setClave(user.getClave());
            
            Persona persona = servicioPersona.obtenerPersona(user.getPersona());
            
            userIngresar.setNombres(persona.getNombres());
            userIngresar.setApellidos(persona.getApellidos());
            userIngresar.setCorreoElectronico(persona.getEmail());
                       
            
            servicioAdministracion.agregarUsuario(userIngresar);
            
            return "redirect:/crearUsuario";
            
            
        } catch (Exception exc) {
            logger.error(exc);
            throw exc;
        }
        
    }
    /*
    @RequestMapping(value = "/validarEdicion", method = RequestMethod.POST)
    public @ResponseBody
    String validarUsuario(@ModelAttribute co.edu.fnsp.spv.entidadesVista.ValidarEdicionUsuario userValidar, Model model) throws ParseException, IOException {
        
        boolean puedeEditar = servicioAdministracion.validarEdicionUsuario(userValidar.getNombreUsuario(), (int)userValidar.getIdUsuario());
        
        if(!puedeEditar) {
            return "El código ingresado no es válido. No se puede editar la oferta de empleo";
        }
        
        return "";
    }
    
    
    @RequestMapping(value = "/editarUsuario", method = RequestMethod.POST)
    public String editarUsuario(Model model) {
        List<User> usuarios = servicioAdministracion.obtenerUsuarios();

        model.addAttribute("usuarios", usuarios);
        
        return "administracion/editarUsuario";
    }*/
}
