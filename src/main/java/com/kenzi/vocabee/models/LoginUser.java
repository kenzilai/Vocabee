package com.kenzi.vocabee.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
	
	@NotEmpty
	@Email(message="Enter a valid email.")
	private String email;
	
	@NotEmpty
	@Size(min=8, max=50, message="Password must be between 8 and 50 characters.")
	private String password;
	
	public LoginUser() {}
}
