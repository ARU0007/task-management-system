package com.myfirstwebapp.todo_web_application.todo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ThriveController {

    @GetMapping("/thrive")
    public String showThrivePage() {
        return "thrive"; // This will map to WEB-INF/views/thrive.jsp
    }
}
