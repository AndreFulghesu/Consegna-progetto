/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package unica.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Andrea
 */
           
public class Connessione {
    private static Connessione variabile;
    
    
    private Connessione(){
        try
        {
            
            Class.forName("com.mysql.jdbc.Driver");
        }catch(ClassNotFoundException ex)
        {
            
            Logger.getLogger(Connessione.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static Connessione getInstance(){
      
        if(variabile == null)
        {
            variabile =  new Connessione();
        }
        return variabile;
    }
    
    public Connection getConnection()
    {
        Connection conn=null;
        //Stringa di connessione
        String str_conn = "jdbc:mysql://ec2-52-47-198-123.eu-west-3.compute.amazonaws.com:443/fpw18_Andrea";
        try
        {
            
            conn = DriverManager.getConnection(str_conn, "Andrea", "fpw18");
        }catch(SQLException e)
        {
            e.printStackTrace();
        }
         return conn;
    }
}
    

    

