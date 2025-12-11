package com.project.mediverse.entity;

import jakarta.persistence.*;

@Entity
@Table(name="Credential")
public class Credential 
{
	@Id
	private String userId;
	@Column
	private String password;
	@Column
	private String userType;
	@Column
	private int loginStatus=0;
	
	// getter and setter
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	public int getLoginStatus() {
		return loginStatus;
	}
	public void setLoginStatus(int loginStatus) {
		this.loginStatus = loginStatus;
	}	
}
