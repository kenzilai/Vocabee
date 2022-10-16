package com.kenzi.vocabee.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
	
	@NotEmpty
	@Email(message="Email is not vaild.")
	private String email;
	
	@NotEmpty
	@Size(min=8, max=50, message="Password must be between 8 and 50 characters.")
	private String password;
	
	public LoginUser() {}

//	Getters & Setters
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
