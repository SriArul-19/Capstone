package com.project.mediverse.entity;

import jakarta.persistence.*;

@Entity
public class Admin 
{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long adminId;  // Unique ID for each admin
    @Column(nullable=false)
    private String firstName;  // Admin's first name
    @Column(nullable=false)
    private String lastName;   // Admin's last name
    @Column(nullable=false)
    private String email;      // Admin's email address
    @Column(nullable=false)
    private String phoneNumber;
    @Column(nullable=false)
    private String username;   // Admin's username
    @Column(nullable=false)
    private String password;   // Admin's password (hashed in real implementation)
    
    private String role = "Admin";  // Set role to Admin by default

    // Getters and Setters
    public Long getAdminId() {
        return adminId;
    }

    public void setAdminId(Long adminId) {
        this.adminId = adminId;
    }

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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
}
