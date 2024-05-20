/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package za.ac.tut.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author sibus
 */
@Entity
public class Car implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "Registration",length = 255)
    private String id;
    @Column(length = 255)
    private String manufacturer;
    @Column(length = 255)
    private String model;
    @Column(name = "MODELYR",length = 4)
    private int modelYear;
    public Car() {
    }

    public Car(String registration, String manufacturer, String model, int modelYear) {
        
        this.id = registration;
        this.manufacturer = manufacturer;
        this.model = model;
        this.modelYear = modelYear;
    }
    

//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }

    public String getRegistration() {
        return id;
    }

    public void setRegistration(String registration) {
        this.id = registration;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getYear() {
        return modelYear;
    }

    public void setYear(int modelYear) {
        this.modelYear = modelYear;
    }

    
    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Car)) {
            return false;
        }
        Car other = (Car) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.entity.Car[ id=" + id + " ]";
    }
    
}
