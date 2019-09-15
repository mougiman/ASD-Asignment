/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.model;

/**
 *
 * @author sean
 */


public class History {
    String id;
    String name;
    String datelisted;
    String qty;
    String desc;
    String category;
    String yearMade;
    String sellerId;
    String color;
    String CusID;
    String price;

        

        
        
     public History(String id, String name, String datelisted, String qty,String desc, String category, String yearMade, String sellerId, String color,String CusID,String price)
 {
this.id=id;
this.name= name;
this.datelisted=datelisted;
this.qty=qty;
this.desc=desc;
this.category= category;
this.yearMade=yearMade;
this.sellerId=sellerId;
this.color=color;
this.CusID=CusID;
this.price=price;

 }
     
     // Get & Set functions
    public String getID() {
        return id;
    }
    
    public void setID(String ID) {
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    
    public String getQty() {
        return qty;
    }
    
    public void setQty(String qty) {
        this.qty = qty;
    }
    
    public String getDesc() {
        return desc;
    }
    
    public void setDesc(String desc) {
        this.desc = desc;
    }
    
    public String getCategory() {
        return category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    
        public String getYearMade() {
        return yearMade;
    }
    
    public void setYearMade(String yearMade) {
        this.yearMade = yearMade;
    }
    
    public String getSellerId() {
        return sellerId;
    }
    
    public void setSellerId(String sellerId) {
        this.sellerId = sellerId;
    }
    
    public String getColor() {
        return color;
    }
    
    public void setColor(String color) {
        this.color = color;
    }   
    
    public String getCusID() {
        return CusID;
    }
    
    public void setCusID(String CusID) {
        this.CusID = CusID;
    }   
     public String getPrice() {
        return price;
    }
    
    public void setPrice(String price) {
        this.price = price;
    }   
    
}
