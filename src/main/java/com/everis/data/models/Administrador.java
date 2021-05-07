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
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="administradores")
public class Administrador {
	
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
	
	//datos MtM
	@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(
    		name="stocks_administradores",
    	joinColumns = @JoinColumn(name= "administrador_id"),
    	inverseJoinColumns = @JoinColumn(name= "stock_id")
    		)
    private List<Stock> stocks;	
	
	//C	
	public Administrador() {
		super();
	}		
	public Administrador(String firstName, String lastName, String rut, String password, String email) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.rut = rut;
		this.password = password;
		this.email = email;
	}

	@ManyToMany(fetch=FetchType.LAZY)
	@JoinTable(
    		name="administradores_ventas",
    	joinColumns = @JoinColumn(name= "administrador_id"),
    	inverseJoinColumns = @JoinColumn(name= "venta_id")
    		)
    private List<Venta> ventas;
	
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
	public List<Venta> getVentas() {
		return ventas;
	}
	public void setVentas(List<Venta> ventas) {
		this.ventas = ventas;
	}	
}
