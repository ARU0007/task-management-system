package com.myfirstwebapp.todo_web_application.security;

import static org.springframework.security.config.Customizer.withDefaults;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

import java.util.function.Function;

@Configuration
public class SpringSecurityConfiguration {
    //LDAP or Database
    //InMemory
    //InMemoryUserDetailsManager

    @Bean
    public InMemoryUserDetailsManager createUserDetailsManager() {
        UserDetails userDetails1 = createNewUser("in28minutes", "dummy");
        UserDetails userDetails2 = createNewUser("ranga", "dummydummy");
        UserDetails userDetails3 = createNewUser("harish ojha", "777111");
        UserDetails userDetails4 = createNewUser("arunesh", "999000");


        return new InMemoryUserDetailsManager(userDetails1,userDetails2,userDetails3,userDetails4);
    }

    private UserDetails createNewUser(String username, String password) {
        Function<String, String> passwordEncoder= input -> passwordEncoder().encode(input);
        UserDetails userDetails =  User.builder()
                .passwordEncoder(passwordEncoder)
                .username(username)
                .password(password)
                .roles("USER", "ADMIN")
                .build();
        return userDetails;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(
                auth -> auth.anyRequest().authenticated());
        http.formLogin(withDefaults());
        http.csrf(csrf -> csrf.disable());
        http.headers(httpHeaders -> httpHeaders.frameOptions(frameOptions -> frameOptions.sameOrigin()));
        return http.build();
    }



}
