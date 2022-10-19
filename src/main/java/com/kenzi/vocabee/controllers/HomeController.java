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
    
    @GetMapping("/register")
    public String signUp(Model model) {
        model.addAttribute("newUser", new User());
        return "register.jsp";
    }

    @PostMapping("/register/validation")
    public String register(@Valid @ModelAttribute("newUser") User newUser, BindingResult result, Model model, HttpSession session) {
    	User user = this.userServ.register(newUser, result);
        if(result.hasErrors()) {
        	model.addAttribute("newLogin", new LoginUser());
            return "register.jsp";
        }
        session.setAttribute("loggedInUserId", user.getId());
        return "redirect:/home";
    }
    
    @GetMapping("/login")
    public String login(Model model) {
        model.addAttribute("newLogin", new LoginUser());
        return "login.jsp";
    }
    
    @PostMapping("/login/validation")
    public String login(@Valid @ModelAttribute("newLogin") LoginUser newLogin, BindingResult result, Model model, HttpSession session) {
        User user = userServ.login(newLogin, result);
        if(result.hasErrors()) {
            model.addAttribute("newUser", new User());
            return "login.jsp";
        }
        session.setAttribute("loggedInUserId", user.getId());
        return "redirect:/home";
    }
    
    @GetMapping("/home")
    public String dashboard(HttpSession session, Model model) {
        Long id = (Long) session.getAttribute("loggedInUserId");        
        if(id == null) {
        	return "redirect:/login";
        }
        User loggedInUser = this.userServ.findOneUser(id);
        model.addAttribute("loggedInUser", loggedInUser);
    	return "dashboard.jsp";
    }
    
    @GetMapping("/logout")
    public String logout(HttpSession session) {
    	session.invalidate();
    	return "redirect:/";
    }
}
