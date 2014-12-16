package com.app.adviseJ.users.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.*;
import org.hibernate.validator.*;

@Entity
@Table(name = "users", catalog = "radca_spring")

public class User {
	@NotBlank(message = "Pole nazwa użytkownika nie może być puste.") @Length (min = 5, max = 20, message = "Długość nazwy użytkownika musi mieścić się miedzy 5 a 20 znaków.") private String username;
	@NotBlank(message = "Pole hasło nie może być puste.") @Length (min = 5, max = 100, message = "Długość hasła musi mieścić się miedzy 5 a 100 znaków.") private String password;
	@NotBlank(message = "Pole email nie może być puste.")@Email(message = "Podany adres email jest nieprawidłowy.") private String email;
	@AssertTrue(message ="Musisz zaakceptować regulamin.") private boolean enabled;
	private Set<UserRole> userRole = new HashSet<UserRole>(0);
	private String passwordConfirm;
 
	public User() {
	}
 
	public User(String username, String password, boolean enabled,String email,String passwordConfirm) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.email = email;
		this.passwordConfirm = passwordConfirm;
	}
 
	public User(String username, String password, 
		boolean enabled,String email, Set<UserRole> userRole) {
		this.username = username;
		this.password = password;
		this.enabled = enabled;
		this.email = email;
		this.userRole = userRole;
	}

	@Column(name = "email", unique = true, 
		nullable = false, length = 45)
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Id
	@Column(name = "username", unique = true, 
		nullable = false, length = 45)
	public String getUsername() {
		return this.username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
 
	@Column(name = "password", 
		nullable = false, length = 60)
	public String getPassword() {
		return this.password;
	}
 
	public void setPassword(String password) {
		this.password = password;
	}
 
	@Column(name = "enabled", nullable = false)
	public boolean isEnabled() {
		return this.enabled;
	}
 
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
 
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "user")
	public Set<UserRole> getUserRole() {
		return this.userRole;
	}
 
	public void setUserRole(Set<UserRole> userRole) {
		this.userRole = userRole;
	}

 
}
