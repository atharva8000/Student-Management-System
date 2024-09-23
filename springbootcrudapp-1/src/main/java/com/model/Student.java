package com.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;

@Entity
public class Student {
    @Id
    @GeneratedValue
	private int rollno;
	private String name;
	private String username;
	private String password;
	@Column(length=3000000)
	private String photo;
	public int getRollno() {
		return rollno;
	}
	public void setRollno(int rollno) {
		this.rollno = rollno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
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
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String image) {
		this.photo = image;
	}
	@Override
	public String toString() {
		return "Student [rollno=" + rollno + ", name=" + name + ", username=" + username + ", password=" + password
				+ ", image=" + photo + "]";
	}
	
	
}
