package Project;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class userFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public userFeedback() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("");
		String name1 = request.getParameter("name");
		String email1 = request.getParameter("email");
		String phone1 = request.getParameter("phone");
		String message1 = request.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			pw.println("Connection is established <br>");
			pw.println(name1);
			pw.println(email1);
			pw.println(phone1);
			pw.println(message1);
			
			
			int id=0; int count=0; int monthCount=0;
			Statement st = con.createStatement();
			
			int i = st.executeUpdate("insert into user_feedback(name,email,phone,message)values('"+name1+"' , '"+email1+"' ,'"+phone1+"' ,  '"+message1+"')");
			RequestDispatcher rd = request.getRequestDispatcher("feedbackOK.jsp");
			rd.forward(request, response);
			
			
//			int i1 = st.executeUpdate("insert into user_feedback(name,email,phone,message)values('Thin' , 'thin@gmail.com' , '0987687' , 'asljfl')");
//			
//			if(i>0) {
//				
//					}
					
					
			
		}catch(SQLException e) {
				e.printStackTrace();
			}catch(ClassNotFoundException e) {
				e.printStackTrace();
			}catch(IllegalStateException e) {
				e.printStackTrace();
			}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
