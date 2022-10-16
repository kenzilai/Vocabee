package com.kenzi.vocabee.controllers;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.kenzi.vocabee.models.LoginUser;
import com.kenzi.vocabee.models.User;
import com.kenzi.vocabee.services.UserService;

@Controller
public class HomeController {
	
     @Autowired
     private UserService userServ;
    
    @GetMapping("/")
    public String index() {
        return "index.jsp";
    }
    
    @GetMapping("/sign_up")
    public String signUp(Model model) {
        model.addAttribute("newUser", new User());
        model.addAttribute("newLogin", new LoginUser());
        return "register.jsp";
    }
    
    @PostMapping("/register")
    public String register(@Valid @ModelAttribute("newUser") User newUser, 
            BindingResult result, Model model, HttpSession session) {
        
    	this.userServ.register(newUser, result);
        if(result.hasErrors()) {
        	model.addAttribute("newLogin", new LoginUser());
            return "register.jsp";
        }
        return "redirect:/home";
    }
}
