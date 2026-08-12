package Project;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.*;


/**
 * Servlet implementation class Registry
 */
public class Registry extends HttpServlet {
	private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1>Hello</h1>");
		String phone = request.getParameter("phone");
		String mail = request.getParameter("email");
		String mbi = request.getParameter("meter");
		String name = request.getParameter("name");
		String add = request.getParameter("add");
		
		int count = 0;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			out.println("<h1>Driver is loading</h1>");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity","root","thin");
			out.println("<h2>Connerction is established!</h2>");
			
			Statement st = con.createStatement();
		
			
			ResultSet i = st.executeQuery("select * from users where  meterbox_id='"+mbi+"'");
			while(i.next()) {
				 count++;
			}
			
			if(count>0) {
				RequestDispatcher rd = request.getRequestDispatcher("alreadyRegister.jsp");
				rd.forward(request, response);
			}
			
			else {
				int i1 = st.executeUpdate("insert into users(name,address,email,phone_no,meterbox_id)values('"+name+"' , '"+add+"' ,'"+mail+"' ,  '"+phone+"' , '"+mbi+"' )");
				RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
				rd.forward(request, response);
			}
			
			st.close();
			con.close();
			
				//databaseconnectionIf
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}catch(SQLException e) {
				e.printStackTrace();
			}

	
    }
   
   

}
