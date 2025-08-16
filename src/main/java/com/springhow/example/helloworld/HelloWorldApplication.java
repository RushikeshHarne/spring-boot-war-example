package com.springhow.example.helloworld;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@SpringBootApplication
@Controller
@SessionAttributes("userEmail")
public class HelloWorldApplication extends SpringBootServletInitializer {

    // In-memory "database" for demo
    private Map<String, String> users = new HashMap<>();

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(HelloWorldApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(HelloWorldApplication.class, args);
    }

    @GetMapping("/")
    public String home() {
        return "home";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @PostMapping("/login")
    public String loginUser(@RequestParam String email,
                            @RequestParam String password,
                            Model model) {
        if(users.containsKey(email) && users.get(email).equals(password)){
            model.addAttribute("userEmail", email);
            return "redirect:/dashboard";
        } else {
            model.addAttribute("error", "Invalid email or password");
            return "login";
        }
    }

    @GetMapping("/register")
    public String register() {
        return "register";
    }

    @PostMapping("/register")
    public String registerUser(@RequestParam String name,
                               @RequestParam String email,
                               @RequestParam String password,
                               Model model) {
        if(users.containsKey(email)){
            model.addAttribute("error", "Email already registered!");
            return "register";
        }
        users.put(email, password);
        model.addAttribute("userEmail", email);
        return "redirect:/dashboard";
    }

    @GetMapping("/dashboard")
    public String dashboard(@ModelAttribute("userEmail") String email, Model model) {
        model.addAttribute("userEmail", email);
        return "dashboard";
    }

    @GetMapping("/contact")
    public String contact() {
        return "contact";
    }
}
