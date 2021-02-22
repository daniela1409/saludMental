/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.fnsp.saludMental.controladores;

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
@RequestMapping(value = "/educacion")
public class EducacionController {
     private static final Logger logger = LogManager.getLogger(EducacionController.class.getName());
     
     
    @RequestMapping(value = "/index", method = RequestMethod.GET)
    public String obtenerCursos(Model model) {

        //List<Webinar> webinars = servicioWebinar.obtenerWebinars();
        //model.addAttribute("webinars", webinars);

        return "educacion/index";
    }     
}