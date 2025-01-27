package com.myfirstwebapp.todo_web_application.login;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("name")
public class LoginController {

    public LoginController(AuthenticationService authenticationService) {
        this.authenticationService = authenticationService;
    }

    private AuthenticationService authenticationService;
    @RequestMapping(value = "login", method = RequestMethod.GET)
    public String gotoLoginPage() {
        return "login";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public String gotoWelcomePage(@RequestParam String name, @RequestParam String password, ModelMap model) {
        if (authenticationService.authentication(name, password)) {
            model.put("name", name);
            model.put("password", password);
            return "welcome";
        }
        model.put("errorMessage","Incalid Credentials! Please try again.");
        return "login";
    }
}
// http://localhost:8080/login?name=John
//req param and model
//    @RequestMapping("login")
//    public String gotoLoginPage(@RequestParam String name , ModelMap model) {
//        model.put("name",name);
//        return "login";