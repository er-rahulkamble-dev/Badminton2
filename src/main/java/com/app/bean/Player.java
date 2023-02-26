package com.app.bean;

import javax.validation.constraints.Size;

public class Player {

	
	@Size(min = 3, max = 20, message = "Username must be between 3 and 20 characters long.")
	public String firstName;


	public String lastName;

	public String gender;

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int age;

}
