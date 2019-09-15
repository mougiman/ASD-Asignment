/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.model;

import java.io.Serializable;
import java.awt.Image;

/**
 *
 * @author Calvin
 */
public class Item implements Serializable {

    private String ID;
    private String name;
    private String dateListed;
    private int stock;
    private int soldQuantity;
    private double price;
    private String description;
    private String category;
    //private String yearMade;
    private String sellerID;
    private String expdate;
    private String cusID;
    private String img;
    //private String condition;
    //private String color;

    public Item() {
    }

    public Item(String ID, String name, String dateListed, int stock, /*int soldQuantity,*/ double price, String description, String category, String sellerID, String expdate, String img) {
        this.ID = ID;
        this.name = name;
        this.dateListed = dateListed;
        this.stock = stock;
        //this.soldQuantity = soldQuantity;
        this.price = price;
        this.description = description;
        this.category = category;
        this.sellerID = sellerID;
        this.expdate = expdate;
        this.img = img;
    }    
    
    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDateListed() {
        return dateListed;
    }

    public void setDateListed(String dateListed) {
        this.dateListed = dateListed;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getSellerID() {
        return sellerID;
    }

    public void setSellerID(String sellerID) {
        this.sellerID = sellerID;
    }

    public String getExpdate() {
        return expdate;
    }

    public void setExpdate(String expdate) {
        this.expdate = expdate;
    }

    public String getCusID() {
        return cusID;
    }

    public void setCusID(String cusID) {
        this.cusID = cusID;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getSoldQuantity() {
        return soldQuantity;
    }

    public void setSoldQuantity(int soldQuantity) {
        this.soldQuantity = soldQuantity;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

   

}
