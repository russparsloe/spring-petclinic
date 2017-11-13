package org.springframework.samples.petclinic.system;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.Model;

@Controller
class WelcomeController {

    @RequestMapping("/")
        public String welcome(Model model) {
        model.addAttribute("hostname", System.getenv("HOSTNAME") );
        return "welcome";
    }
}
