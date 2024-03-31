package com.user.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.ui.Model;

import javax.servlet.http.HttpSession;

import com.user.web.model.User;
import com.user.web.repository.UserInfo;

@Controller
public class UserController {
    
    @Autowired
    private UserInfo emprepo;
    
    @GetMapping("/")
    public String home() {
        return "redirect:/homepage.jsp"; // Redirect to dashboard.jsp when hitting localhost
    }
    
    @PostMapping("/register")
    public String register(@ModelAttribute User employee) {
        emprepo.save(employee);
        return "redirect:/dashboard.jsp"; // Redirect to dashboard.jsp after successful registration
    }
    
    @PostMapping("/login") // Assuming login form submits to /login with POST method
    public String login(@RequestParam String email, @RequestParam String password, HttpSession session, RedirectAttributes redirectAttributes) {
        User user = emprepo.findByEmail(email);
        if (user != null && user.getPassword().equals(password)) {
            // Set the logged-in user's email in the session attribute
            String userEmail = user.getEmail(); // Assuming getEmail() returns the user's email
            session.setAttribute("loggedInUserEmail", userEmail);
            return "redirect:/dashboard.jsp"; // Redirect to dashboard page upon successful login
        } else {
            // Add an error message to be displayed on the login page
            redirectAttributes.addFlashAttribute("error", "Invalid email or password");
            return "redirect:/login.jsp"; // Redirect to login page again if login fails
        }
    }
    
}
