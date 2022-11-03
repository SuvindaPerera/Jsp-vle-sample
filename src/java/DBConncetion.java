
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author FASUSER
 */
public class DBConncetion {
    public static Connection getConnection(){
        Connection con = null;
        String db_url="jdbc:mysql://localhost:3306/vle";
        String db_user="root";
        String db_password="";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(db_url, db_user,db_password);
        } catch (Exception ex) {
            Logger.getLogger(DBConncetion.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    
}
