package com.everis.data.models;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="users")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;	    
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	private String firstName;
	private String lastName;
	private String rut;
	private String email;
	private String password;
	
	//datos OtM
	@OneToMany(mappedBy="user",fetch=FetchType.LAZY)
	private List<Seleccion> seleccion;
	
	//datos MtM
    @ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(
    		name="users_roles", 
    	joinColumns = @JoinColumn(name= "user_id"),
    	inverseJoinColumns = @JoinColumn(name= "rol_id")
    		)
    private List<Rol> roles;
	
	//C	
	public User() {
		super();
	}		
	//G&S	
	@PrePersist
	protected void onCreate(){
	    this.createdAt = new Date();
	}		
	@PreUpdate
	protected void onUpdate(){
	    this.updatedAt = new Date();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getRut() {
		return rut;
	}
	public void setRut(String rut) {
		this.rut = rut;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Seleccion> getSeleccion() {
		return seleccion;
	}
	public void setSeleccion(List<Seleccion> seleccion) {
		this.seleccion = seleccion;
	}
	public List<Rol> getRoles() {
		return roles;
	}
	public void setRoles(List<Rol> roles) {
		this.roles = roles;
	}		
}
