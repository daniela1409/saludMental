/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.controladores;

import co.edu.fnsp.saludMental.entidades.Video;
import java.util.List;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Carolina
 */

@Controller
@RequestMapping(value = "/videoteca")
public class VideotecaController {
    
    private static final Logger logger = LogManager.getLogger(VideotecaController.class.getName());
    
    
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String obtenerVideos(Model model) {

        //List<Video> videos = servicioVideoteca.obtenerVideos();
        //model.addAttribute("videos", videos);

        return "videoteca/index";
    }
    
}
