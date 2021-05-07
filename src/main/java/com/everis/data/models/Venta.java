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
@Table(name="ventas")
public class Venta {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private boolean bought; 
	private float total;
	@Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    
    //datos OtM
    @OneToMany(mappedBy="venta",fetch=FetchType.LAZY)
	private List<Seleccion> seleccion;
    	
    //C
    public Venta() {
		super();
	}    
	
	//mtm
	@ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(
    		name = "ventas_productos",
    	joinColumns = @JoinColumn(name= "ventas_id"),
    	inverseJoinColumns = @JoinColumn(name= "productos_id")
    		)
    private List<Producto> productos;
	
	//G&S
    public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}	
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	@PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	public List<Producto> getProductos() {
		return productos;
	}
	public void setProductos(List<Producto> productos) {
		this.productos = productos;
	}
	public boolean isBought() {
		return bought;
	}
	public void setBought(boolean bought) {
		this.bought = bought;
	}
	public List<Seleccion> getSeleccion() {
		return seleccion;
	}
	public void setSeleccion(List<Seleccion> seleccion) {
		this.seleccion = seleccion;
	}
	
	    
}
