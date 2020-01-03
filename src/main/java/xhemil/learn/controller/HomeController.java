package xhemil.learn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/home")
    public String homePage(){
        return "home";
    }

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @RequestMapping("/leaders")
    public String leaders(){
        return "leaders";
    }

    @RequestMapping("/system")
    public String admin(){
        return "system";
    }
}
