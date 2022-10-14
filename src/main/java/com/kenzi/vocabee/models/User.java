package com.kenzi.vocabee.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="users")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
	@Size(min=3, max=30, message="Username must be between 3 and 30 characters.")
	private String userName;
	
	@NotEmpty
	@Email(message="Enter a valid email.")
	private String email;
	
	
	@NotEmpty
	@Size(min=8, max=50, message="Password must be between 8 and 50 characters.")
	private String password;
	
	@Transient
	@Size(min=8, max=50, message="Confirm Password does not match.")
	private String confirm;
	
	// This will not allow the createdAt column to be updated after creation
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	
    
	public User() {}
	
	
}
