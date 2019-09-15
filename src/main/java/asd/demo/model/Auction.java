/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor. 
package asd.demo.model;

/**
 *
 * @author Cai weize
 */
package asd.demo.model;

public class Auction {
    String id;
    String name;
    String datelisted;
    int qunatity;
    Double bid;
    String desc;
    String category;
    String yearMade;
    String sellerId;
    String condition;
    String color;
    String expdate;
    String CusID;
     public Auction(String id, String name, String datelisted, int qunatity,  Double bid, String desc, String category, String yearMade, String sellerId, String condition, String color,String expdate,String CusID)
    {
this.id=id;
this.name= name;
this.datelisted=datelisted;
this.qunatity=qunatity;
this.bid=bid;
this.desc=desc;
this.category= category;
this.yearMade=yearMade;
this.sellerId=sellerId;
this.condition= condition;
this.color=color;
this.expdate= expdate;
this.CusID=CusID;

        }
}
