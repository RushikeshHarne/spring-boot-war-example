package com.springhow.example.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@SpringBootApplication
@Controller
public class HelloWorldApplication extends SpringBootServletInitializer {

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(HelloWorldApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(HelloWorldApplication.class);
    }

    // Default route → show login page
    @GetMapping("/")
    public String index() {
        return "login.html";   // serves from src/main/resources/static/
    }

    // Login route
    @GetMapping("/login")
    public String login() {
        return "login.html";
    }

    // Register route
    @GetMapping("/register")
    public String register() {
        return "register.html";
    }

    // Dashboard route
    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard.html";
    }
}
