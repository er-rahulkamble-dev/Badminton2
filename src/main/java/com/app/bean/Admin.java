package com.app.bean;

import javax.validation.constraints.Pattern;

public class Admin {
	
	@Pattern(regexp = "Admin", message="Username Incorrect ")
	private String username;
	
	@Pattern(regexp = "admin459", message=" Password Incorrect")
	private String password;
	
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
