
package controller;

import model.PersonaModel;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author Acer_White
 */
@Controller
public class PersonaController {
    
    @RequestMapping("index")
    public String redireccion(){
        ModelAndView MV = new ModelAndView();
        MV.setView("index");
        return "index";
    }
    
    @RequestMapping(value= "getAll",method = RequestMethod.GET)
    public String getAll(Model m){
        PersonaModel model = new PersonaModel();
        m.addAttribute("lst", model.getAll());
        return "data";
    }
}
