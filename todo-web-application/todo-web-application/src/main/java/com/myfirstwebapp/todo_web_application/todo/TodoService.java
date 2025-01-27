package com.myfirstwebapp.todo_web_application.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    static{
        todos.add(new Todo(1,"Arunesh","learn Spring MVC",
                LocalDate.now().plusYears(1),false));
        todos.add(new Todo(2,"Arunesh","learn Spring Security",
                LocalDate.now().plusYears(2),false));
        todos.add(new Todo(3,"Arunesh","learn Spring Boot",
                LocalDate.now().plusYears(3),false));
    }
    List<Todo> findByUsername(String username){
        return todos;
    }
}
