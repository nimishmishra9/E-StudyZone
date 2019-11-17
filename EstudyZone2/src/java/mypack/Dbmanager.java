/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mypack;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class Dbmanager {
    
        public Connection getCon()
        {
            Connection cn;
            try 
            {
               
                Class.forName("oracle.jdbc.driver.OracleDriver");
              cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","","estudyzone");
            } 
            catch (Exception e) 
            {
                cn=null;
            }
            return cn;
        }
    public boolean  executeNonQuery(String str)
    {
        try 
        {
            PreparedStatement pr=getCon().prepareStatement(str);
           return  (pr.executeUpdate()>0)?true:false;
        } catch (Exception e) 
        {
            return false;
        }
    }
    public ResultSet getRecord(String stre)
    {
        ResultSet rs;
        try {
            PreparedStatement pr=getCon().prepareStatement(stre);
          rs=pr.executeQuery();
        } catch (Exception e) {
            rs=null;
        }
        return rs;
    }
    public int autoIncrement(String fieldName,String tableName)
    {
        ResultSet rs;
        try {
                       rs=getRecord("select nvl(max("+fieldName+"),0)+1 from "+tableName);
          rs.next();
          return rs.getInt(1);
        }
        catch (Exception e)
        {
            
        }
            return 0;
    }
    public String getCurrentDate()
    {
        return  new java.text.SimpleDateFormat("dd/MM/yyyy hh:mm a").format(new java.util.Date());
    }
    public ResultSet selectQuery(String select_nvlmaxid01_from_enquiry) 
    {
        throw new UnsupportedOperationException("Not supported yet.");    //To change body of generated methods, choose Tools | Templates.
    }

   
}
