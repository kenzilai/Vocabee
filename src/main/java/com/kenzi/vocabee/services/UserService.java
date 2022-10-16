package com.kenzi.vocabee.services;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.kenzi.vocabee.models.LoginUser;
import com.kenzi.vocabee.models.User;
import com.kenzi.vocabee.repositories.UserRepository;

@Service
public class UserService {
	
	  @Autowired
	    private UserRepository userRepo;
	  
	    public User register(User newUser, BindingResult result) {
    	Optional<User> potentialUser = this.userRepo.findByEmail(newUser.getEmail());
	    	if(!potentialUser.isPresent()) {
	    		result.rejectValue("email", "EmailExist", "Email already exist.");
	    	}
	    	if(!newUser.getPassword().equals(newUser.getConfirm())) {
	    	    result.rejectValue("confirm", "PasswordNotMatch", "Password does not match.");
	    	}
	    	if(result.hasErrors()) {
	    		return null;
	    	} else {
	    		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
	    		newUser.setPassword(hashed);
	    		return this.userRepo.save(newUser);
	    	}
    	}
	    
	    public User login(LoginUser newLoginObject, BindingResult result) {
	        // TO-DO: Additional validations!
	        return null;
	    }
}
