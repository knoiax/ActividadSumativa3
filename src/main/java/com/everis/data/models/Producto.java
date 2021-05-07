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
@Table(name="productos")
public class Producto {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String description;
	private float price;
	private String imagePngRoute;
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;    
    
    //dtos MtM
    @ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(
    		name = "categorias_productos",
    	joinColumns = @JoinColumn(name= "producto_id"),
    	inverseJoinColumns = @JoinColumn(name= "categoria_id")
    		)
    private List<Categoria> categorias;
    
    //datos OtM
    @OneToMany(mappedBy="producto",fetch=FetchType.LAZY)
	private List<Stock> stocks;
    
    @OneToMany(mappedBy="producto",fetch=FetchType.LAZY)
	private List<Seleccion> seleccion;
    
    //C
    public Producto() {}
    
    //G&S
	public Long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public String getDescription() {
		return description;
	}
	public float getPrice() {
		return price;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public void setName(String nombre) {
		this.name = nombre;
	}
	public void setDescription(String descripcion) {
		this.description = descripcion;
	}
	public void setPrice(float precio) {
		this.price = precio;
	}    
    @PrePersist
    protected void onCreate(){
        this.createdAt = new Date();
    }
    @PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	public List<Categoria> getCategorias() {
		return categorias;
	}
	public void setCategorias(List<Categoria> categorias) {
		this.categorias = categorias;
	}

	public List<Stock> getStocks() {
		return stocks;
	}

	public void setStocks(List<Stock> stocks) {
		this.stocks = stocks;
	}

	public List<Seleccion> getSeleccion() {
		return seleccion;
	}

	public void setSeleccion(List<Seleccion> seleccion) {
		this.seleccion = seleccion;
	}

	public String getImagePngRoute() {
		return imagePngRoute;
	}

	public void setImagePngRoute(String imagePngRoute) {
		this.imagePngRoute = imagePngRoute;
	}
}