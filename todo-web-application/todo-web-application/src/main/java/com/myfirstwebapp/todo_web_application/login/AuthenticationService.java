package com.myfirstwebapp.todo_web_application.login;

import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authentication(String username, String password){
        boolean isUserAuthenticated =username.equalsIgnoreCase("in28minutes");
        boolean isPasswordAuthenticated =password.equalsIgnoreCase("dummy");
        return isUserAuthenticated && isPasswordAuthenticated;
    }
}
