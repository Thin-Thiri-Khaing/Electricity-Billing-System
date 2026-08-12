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

public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Payment() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("");
		String name = request.getParameter("name");
		String mbi = request.getParameter("meter");
		String month = request.getParameter("month");
		String unit = request.getParameter("unit");
		String amount = request.getParameter("amount");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			pw.println("Connection is established <br>");
			pw.println(name);
			pw.println(month);
			pw.println(mbi);
			pw.println(unit);
			pw.println(amount);
			
			int id=0; int count=0; int monthCount=0;
			Statement st = con.createStatement();
			
				
			
				ResultSet i1 = st.executeQuery("select * from user_payment where name='"+name+"' and meterbox_id='"+mbi+"' and month='"+month+"'");
				while(i1.next()) {
					 count++;
				}
				pw.println(monthCount);
				if(count>0) {
					RequestDispatcher rd = request.getRequestDispatcher("alreadyPayment.jsp");
					rd.forward(request, response);
				}		
				
				else {
				
					int i = st.executeUpdate("insert into user_payment(name,meterbox_id,month,unit,amount_due)values('"+name+"' , '"+mbi+"' ,'"+month+"' ,  '"+unit+"' , '"+amount+"' )");
					
					RequestDispatcher rd = request.getRequestDispatcher("userHistory");
					rd.forward(request, response);
					
			}
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
