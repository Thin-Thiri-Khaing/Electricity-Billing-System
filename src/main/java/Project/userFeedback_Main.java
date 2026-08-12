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

public class userFeedback_Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public userFeedback_Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("");
		String name2 = request.getParameter("name");
		String email2 = request.getParameter("email");
		String phone2 = request.getParameter("phone");
		String message2 = request.getParameter("message");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			pw.println("Connection is established <br>");
			pw.println(name2);
			pw.println(email2);
			pw.println(phone2);
			pw.println(message2);
			
			
			int id=0; int count=0; int monthCount=0;
			Statement st = con.createStatement();
			
			int i = st.executeUpdate("insert into user_feedback(name,email,phone,message)values('"+name2+"' , '"+email2+"' ,'"+phone2+"' ,  '"+message2+"')");
			RequestDispatcher rd = request.getRequestDispatcher("feedbackOK_Main.jsp");
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
