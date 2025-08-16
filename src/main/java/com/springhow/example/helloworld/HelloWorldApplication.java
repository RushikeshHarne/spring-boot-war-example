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
        SpringApplication.run(HelloWorldApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "home";   // loads home.jsp
    }

    @GetMapping("/login")
    public String login() {
        return "login";  // loads login.jsp
    }

    @GetMapping("/register")
    public String register() {
        return "register"; // loads register.jsp
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard"; // loads dashboard.jsp
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact"; // loads contact.jsp
    }
}
