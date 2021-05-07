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
@Table(name="categorias")
public class Categoria {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private String imagePngRoute;
	private String description;
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;
    //datos MtM
    @ManyToMany(fetch=FetchType.LAZY)
    @JoinTable(
    		name="categorias_productos",
    	joinColumns = @JoinColumn(name= "categoria_id"),
    	inverseJoinColumns = @JoinColumn(name= "producto_id")
    		)
    private List<Producto> productos;
    
    //C
    public Categoria() {}

    
    //S6G
	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
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


	public String getImagePngRoute() {
		return imagePngRoute;
	}


	public void setImagePngRoute(String imagePngRoute) {
		this.imagePngRoute = imagePngRoute;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}
    
}