package com.myfirstwebapp.todo_web_application.todo;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.validation.constraints.Size;

import java.time.LocalDate;

//Database(MySQL)
//Static List of todos => Database(H2, MySQL)
@Entity
public class Todo {


    @Id
    @GeneratedValue
    private int id;
    private String username;
    @Size(min = 10, message = "Description should be minimum of 10 characters")
    private String description;
    private LocalDate targetDate;
    private boolean done;

    public Todo(int id, String username, String description, LocalDate targetDate, boolean done) {
        super();
        this.id = id;
        this.username = username;
        this.description = description;
        this.targetDate = targetDate;
        this.done = done;
    }

    public Todo() {

    }

    @Override
    public String toString() {
        return "Todo{" + "id=" + id + ", username='" + username + '\'' + ", description='" + description + '\'' + ", targetDate=" + targetDate + ", isDone=" + done + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public LocalDate getTargetDate() {
        return targetDate;
    }

    public void setTargetDate(LocalDate targetDate) {
        this.targetDate = targetDate;
    }

    public boolean isDone() {
        return done;
    }

    public void setDone(boolean done) {
        this.done = done;
    }
}
