package Project;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
/**
 * Servlet implementation class paymentFilter
 */
public class paymentFilter extends HttpServlet {

    public paymentFilter() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			String name = request.getParameter("name");
			PreparedStatement st = con.prepareStatement("select* from user_payment where meterbox_id=?");
			st.setString(1, name);
			ResultSet rs = st.executeQuery();
			pw.println("<!DOCTYPE html>");
			pw.println("<html>");
			pw.println("<head>");
			pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'>");
			pw.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css' integrity='sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=='crossorigin='anonymous' referrerpolicy='no-referrer' />");
			pw.println("<style>");
			
			pw.println("h1{margin-top : 5vh; margin-bottom: 5vh ; color : #0077B6}");
			pw.println(".backBtn{ transition : .5s; background-color :rgba(0,119,182,0.3) ; width : 100px ; height : 30px; padding : 5px; margin : 10px; border : none;  border-radius : 20px; color : white;}");
			pw.println(".backBtn:hover{  transition : .5s; background-color : #0077B6}");
			
			pw.println("table{width:100%; color:black;  border-bottom:2px solid black; }");
			pw.println("tr:nth-child(odd){background-color:lightgray;}");
			pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
			pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white;}");
			pw.println("</style>");
			pw.println("</head>");
			pw.println("<body>");
			pw.println("   <div class='banner'>");
			pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
		    pw.println(" <div class='navbar'><ul><li><a href='adminHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='unitRate_Admin.jsp'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li><a href='#'><i class='fa-regular fa-address-card'></i>&nbsp;&nbsp; About Us</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn'><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='paymentList.java'>Payment</a><a href='#'>History</a></div></li></ul> </div></div> ");
		    
			pw.println("<a href='paymentList'><button id='backBtn' class='backBtn'><i class='fa-solid fa-arrow-left-long'></i></button></a> <h1 align = 'center' style=''>Payment Filter of MeterBox ID ' " + name + " '</h1>");
			
			pw.println("<table><tr><th  id='data'>Bill_ID </th>");
			pw.println("<th  id='data'> Name </th>");
			pw.println("<th  id='data'> MeterBox_ID </th>");
			pw.println("<th  id='data'> Month </th>");
			pw.println("<th  id='data'> Unit </th>");
			pw.println("<th  id='data'> Amount Due </th>");
			pw.println("<th  id='data'> Remark </th>");
			pw.println("</tr>");
			
			while(rs.next()) {
				pw.println("<tr>");
				pw.println("<td  id='data'>" + rs.getString("bill_id") + " </td>");
				pw.println("<td  id='data'>" + rs.getString("name") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("meterbox_id") + " </td>"); 
				pw.println("<td  id='data'> " + rs.getString("month") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("unit") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("amount_due") + "  </td>");
				pw.println("<td  id='data'> Paid </td></tr>");
				pw.println("</tr>");

			}
			
			pw.println("</table>");
			
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		
		
	}

}
