package Controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import model.User;
import model.unittablechange;
import util.daoconnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import dao.userdao;

import java.sql.*;

public class unitControl extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
   
  

    RequestDispatcher dispatcher = null;
    userdao studentDAO = null;

    
  
    public unitControl() {
       // super();
        studentDAO = new userdao();
        // TODO Auto-generated constructor stub
    }

//    static Connection connection = null;
//    static ResultSet resultSet = null;
//    static Statement st = null;
    static PreparedStatement preparedStatement = null;
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    response.getWriter().append("Served at: ").append(request.getContextPath());
    
    try {
    	Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
		String sql = "SELECT * FROM unitchange";
		 
	      Statement st =   con.createStatement();
	      ResultSet rs = st.executeQuery(sql);
	      while(rs.next()) {
	    	  System.out.println(rs.getInt("id"));
	    	

	    	  System.out.println(rs.getString("unit"));

	    	  System.out.println(rs.getInt("cost"));
	      }
        
        
	} catch (Exception e) {
		// TODO: handle exception
	}
  
    
    
    String action = request.getParameter("action");
      if(action == null) {
      action = "LIST1";
      }
      switch(action) {
      
      
     case "LIST1":
          listUnitRate(request, response);
          break;
//      
      case "EDIT":
          getUnitRate(request, response);
          break;

//     case "DELETE":
//      deleteUser(request, response);
//      break;

//      default:
//      listUsers(request, response);
//      break;
//      
//      }
      }  }
//  private void listUsers(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      List<User> userList = userdao.get();
//      request.setAttribute("userlist", userList);
//      dispatcher = request.getRequestDispatcher("user-list.jsp");
//      dispatcher.forward(request, response);
//    }
//  
  private void listUnitRate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      List<unittablechange> userList = userdao.get1();
      request.setAttribute("unitratelist", userList);
      dispatcher = request.getRequestDispatcher("/unit-ratelist.jsp");
      dispatcher.forward(request, response);
    }
  
  
//      private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String id = request.getParameter("id");
//        if(studentDAO.delete(Integer.parseInt(id))) {
//          request.setAttribute("MSG", "Successfully Deleted");
//        }
//        
//        listUsers(request, response);
//      }
//      
      private void getUnitRate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String id = request.getParameter("id");
        unittablechange unit = userdao.get(Integer.parseInt(id));
        request.setAttribute("unit", unit);
        dispatcher = request.getRequestDispatcher("/unit-changeform.jsp");
        dispatcher.forward(request, response);
      }

  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
   
    String id = request.getParameter("id");
      unittablechange unit = new unittablechange();
      unit.setcost(Integer.parseInt(request.getParameter("cost")));
    
      
      if(  id != null)  {
        unit.setId(Integer.parseInt(id));
        if(userdao.update(unit)) {
        request.setAttribute("MSG", "Successfully Updated!");
        }
      }
      listUnitRate(request, response);
       }
  }