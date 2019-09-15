/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.test;

import asd.demo.model.Item;
import asd.demo.model.Users;
import asd.demo.model.dao.MongoDBConnector;
import java.net.UnknownHostException;
import java.util.ArrayList;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.BeforeClass;
import org.junit.Test;
/**
 *
 * @author George
 */
public class UnitTest {
   private static MongoDBConnector mdb;
       
    public UnitTest() {  }

    @BeforeClass //Create an instance of MongoDBConnector using admin credentials for mLab
    public static void setUpClass() throws UnknownHostException {
        System.out.println("\n<-- Starting Unit test -->");  
        mdb = new MongoDBConnector();    
    }
    
    @Test
    public void testMongoDBConnect() throws UnknownHostException {
        Assert.assertNotNull("Cannot establish connection to MDB",mdb);        
        System.out.println("\n- Connecting to MongoDB ");
    }
       
    @Test 
    public void fetchItems(){
        ArrayList<Item> items = mdb.getItemList();
        Assert.assertNotNull("Cannot fetch ASD items",items);
        System.out.println("\nFetching ASD items...");
        System.out.println("-------------------------------------");
        mdb.showitems(items);
    }
    
    @AfterClass
    public static void tearDownClass() {
        System.out.print("\n<-- Unit Test Finished : ");        
    }     
}
