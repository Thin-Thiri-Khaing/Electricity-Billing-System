package Project;

import jakarta.servlet.RequestDispatcher;
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
public class userHistory extends HttpServlet {

    public userHistory() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String mbi = request.getParameter("mbi");
		String month = request.getParameter("month");
		String unit = request.getParameter("unit");
		String amount = request.getParameter("amount");
		int count = 0;
		
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity" , "root" , "thin");
			response.setContentType("text/html");
			PrintWriter pw = response.getWriter();
			Statement st = con.createStatement();
			
			pw.println("<!DOCTYPE html>");
			pw.println("<html>");
			pw.println("<head>");
			pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'>");
			pw.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css' integrity='sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=='crossorigin='anonymous' referrerpolicy='no-referrer' />");
			pw.println("<style>");
			pw.println(".navbar ul li a.current:link , .navbar ul li a.current:visited {color : white;}");
			pw.println(".navbar{margin-left:200px; }");
			pw.println(".dropdown-content a:hover {background-color : #0077B6;}");
			pw.println("h1{margin-top : 5vh; margin-bottom: 5vh ; color : #0077B6}");
			pw.println(".backBtn{ transition : .5s; background-color :rgba(0,119,182,0.3) ; width : 100px ; height : 30px; padding : 5px; margin : 10px; border : none;  border-radius : 20px; color : white;}");
			pw.println(".backBtn:hover{  transition : .5s; background-color : #0077B6}");
			pw.println("#welName{ color: #E7CEA6; width:60vh;font-size : 20px; font-weight :bolder;	padding : 12px 0 10px 10px;}");
			pw.println("table{width:100%; color:black;  border-bottom:2px solid black; }");
			pw.println("tr:nth-child(odd){background-color:lightgray;}");
			pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
			pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white;}");
			pw.println("#pay{height :5vh;width : 100%;margin-top: 3px;margin_bottom: -30px;margin-left : 3px;margin-right: 3px;font-size : 20px;outline : none;border : 2px solid #0077b6;border-radius : 10px;background-color: #0077b6; color : #E7CEA6;font-weight: bold;  transition: 0.3s; }");
			pw.println("#hist{height: 5vh; width: 100%; margin-top: 3px; margin-bottom: -5px; margin-left: -5px; margin-right: 10px; font-size: 20px; outline: none; border-radius: 10px; border: 2px solid #0077b6; background-color: #0077b6; color: #E7CEA6; transition: 0.3s; font-weight: bold;}");
			pw.println("#pay:hover, #hist:hover{color: white; transition: 0.3s;}");
			pw.println("#welName{width:60vh; color:#E7CEA6; }");
			pw.println("</style>");
			pw.println("</head>");
			pw.println("<body>");
			pw.println("   <div class='banner'>");
			
			pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
			pw.println("<p id='welName'> Welcome " + name +  " ! </p>");
		    pw.println(" <div class='navbar'><ul><li><a href='userHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='unitRate_User'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li><a href='aboutus_User.jsp'><i class='fa-regular fa-address-card'></i>&nbsp;&nbsp; About Us</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn current'><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='PaymentForm.jsp'><input type='button' id='pay' value='Payment'></button></a> <a href='#'><input type='button' id='hist' value='History'></button></a></div></li></ul> </div></div> ");
		    
			pw.println("<a href='userHome.jsp'><button id='backBtn' class='backBtn'><i class='fa-solid fa-arrow-left-long'></i></button></a> <h1 align = 'center' style=''> Payment History</h1>");
			
			pw.println("<table><tr><th  id='data'>Bill_ID </th>");
			pw.println("<th  id='data'> Name </th>");
			pw.println("<th  id='data'> MeterBox_ID </th>");
			pw.println("<th  id='data'> Month </th>");
			pw.println("<th  id='data'> Unit </th>");
			pw.println("<th  id='data'> Amount Due </th>");
			pw.println("<th  id='data'> Remark </th>");
			pw.println("</tr>");
		
			ResultSet rs = st.executeQuery("select * from user_payment where name='"+name+"'");
			while(rs.next()) {

				pw.println("<tr>");
				pw.println("<td  id='data'>" + rs.getString("bill_id") + " </td>");
				pw.println("<td  id='data'>" + rs.getString("name") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("meterbox_id") + " </td>"); 
				pw.println("<td  id='data'> " + rs.getString("month") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("unit") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("amount_due") + "  </td>");
				pw.println("<td>Paid</td>");
				pw.println("</tr>");

			}
			
			pw.println("</table>");
			
			ResultSet rs1 = st.executeQuery("select * from user_payment where name='"+mbi+"'");
			while(rs1.next()) {

				pw.println("<tr>");
				pw.println("<td  id='data'>" + rs.getString("bill_id") + " </td>");
				pw.println("<td  id='data'>" + rs.getString("name") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("meterbox_id") + " </td>"); 
				pw.println("<td  id='data'> " + rs.getString("month") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("unit") + " </td>");
				pw.println("<td  id='data'> " + rs.getString("amount_due") + "  </td>");
				pw.println("<td>Paid</td>");
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
