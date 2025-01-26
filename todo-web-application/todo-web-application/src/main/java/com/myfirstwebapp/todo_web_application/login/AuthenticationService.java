package com.myfirstwebapp.todo_web_application.login;

public class AuthenticationService {
    public boolean authentication(String username, String password){
        boolean isUserAuthenticated =username.equalsIgnoreCase("in28minutes");
        boolean isPasswordAuthenticated =password.equalsIgnoreCase("dummy");
        return isUserAuthenticated && isPasswordAuthenticated;
    }
}
