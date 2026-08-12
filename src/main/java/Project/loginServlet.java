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
import java.sql.*;

/**
 * Servlet implementation class loginServlet
 */
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("Hello");
		
		String name = request.getParameter("name");
		String mail = request.getParameter("email");
		String mbi = request.getParameter("meter");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			out.println("Connection is established");
			
			PreparedStatement st = con.prepareStatement("select name from users where name=? and email=? and meterbox_id=?");
			st.setString(1, name);
			st.setString(2, mail);
			st.setString(3, mbi);
			
			ResultSet i = st.executeQuery();
			
			if(i.next()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("name" , name);
//				session.setAttribute("umail", mail);
				session.setAttribute("mbi", mbi);
				RequestDispatcher rd = request.getRequestDispatcher("userHome.jsp");
				rd.forward(request, response);
				
			}
			
			else {
				RequestDispatcher rd = request.getRequestDispatcher("fail.jsp");
				rd.forward(request, response);
//				out.println("<font color=red size=20>Login Fail!");
//				out.println("<a href=LoginForm.jsp>Try Again</a>");
			}
		
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(IllegalStateException e) {
			e.printStackTrace();
		}
		
		
	}

}
