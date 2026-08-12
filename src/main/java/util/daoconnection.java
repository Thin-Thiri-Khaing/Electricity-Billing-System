package util;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class daoconnection extends HttpServlet {
  private static final long serialVersionUID = 1L;

  private static Connection connection = null;
  public static Connection openConnection() {
  try{
	  Class.forName("com.mysql.cj.jdbc.Driver");
		 connection = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } 
            return connection;
     }

}