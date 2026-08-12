package Server;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;


public class unitRate_Admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public unitRate_Admin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'>");
		pw.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css' integrity='sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=='crossorigin='anonymous' referrerpolicy='no-referrer' />");
		pw.println("<style>");
		
		pw.println(".navbar{margin-left:420px; }");
		pw.println("  .dropdown-content{min-width: 190px;}");
		pw.println(".navbar ul li a.current:link , .navbar ul li a.current:visited {color : white;}");
		pw.println("*{font-family : 'Cambria'}");
		pw.println("h1{margin-top : 5vh; color : #0077B6}");
		pw.println("table{width:80%;  margin:5vh auto; color:black;  border:3px ridge gray; border-collapse : collapse; }");
//		pw.println("tr:nth-child(odd){background-color:lightgray;}");
		pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
		pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white; }");
		
		pw.println(".textinput{ font-size : 20px; border : none; outline : none;  background-color: rgba(236,236,236); width:80%;}");
		pw.println(".filter{margin : 2vh 0;  width: 20%; border: 2px solid lightgray;  height: 30px;  margin-left: 900px;  padding: 3px 10px;  background-color: rgba(236,236,236);}");
		pw.println(".search{ display: flex; }");
		pw.println("#btn{margin : 2vh 0; transition : .5s; width: 8%;  height: 40px; color : black;  border: 2px solid lightgray;  font-size: 20px;  padding: 3px 10px; background-color: rgba(236,236,236); margin-left: 10px;}");
		pw.println("#btn:hover {background-color: lightgray; transition : .5s;}");
		pw.println(".wel{width:60vh;color : #E7CEA6;font-size : 20px; font-weight : bold;	padding : 12px 0 10px 10px;}");
		    
		
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("   <div class='banner'>");
		pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
		pw.println("<p class='wel' >Welcome admin!</p>");
	    pw.println(" <div class='navbar'><ul><li><a href='adminHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='#' class='current'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn' ><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='userServlet'>UserList</a><a href='paymentList'>PaymentList</a><a href='unitControl?action=LIST1'>UnitList</a><a href='feedbackList'>User Feedbacks</a></div></li></ul> </div></div> ");
	    
		pw.println(" <h1 align = 'center' style='margin-bottom:-3vh;'>Unit Rate List</h1>");
		
		String unit1 = null , cost1 = null;
		String unit2 = null , cost2 = null;
		String unit3 = null , cost3 = null;
		String unit4 = null , cost4 = null;
		String unit5 = null , cost5 = null;
		String unit6 = null , cost6 = null;
		String unit7 = null , cost7 = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity","root","thin");
			Statement smt=con.createStatement();
//			ResultSet rs=smt.executeQuery("select * from unitchange");
			
			ResultSet rs1 = smt.executeQuery("select * from unitchange where id='1'");
			while(rs1.next()) {
				 unit1 = rs1.getString("unit");
				 cost1 = rs1.getString("cost");
			}
			
			ResultSet rs2 = smt.executeQuery("select * from unitchange where id='2'");
			while(rs2.next()) {
				 unit2 = rs2.getString("unit");
				 cost2 = rs2.getString("cost");
			}
			
			ResultSet rs3 = smt.executeQuery("select * from unitchange where id='3'");
			while(rs3.next()) {
				 unit3 = rs3.getString("unit");
				 cost3 = rs3.getString("cost");
			}
			
			ResultSet rs4 = smt.executeQuery("select * from unitchange where id='4'");
			while(rs4.next()) {
				 unit4 = rs4.getString("unit");
				 cost4 = rs4.getString("cost");
			}
			
			ResultSet rs5 = smt.executeQuery("select * from unitchange where id='5'");
			while(rs5.next()) {
				 unit5 = rs5.getString("unit");
				 cost5 = rs5.getString("cost");
			}
			
			ResultSet rs6 = smt.executeQuery("select * from unitchange where id='6'");
			while(rs6.next()) {
				 unit6 = rs6.getString("unit");
				 cost6 = rs6.getString("cost");
			}
			
			ResultSet rs7 = smt.executeQuery("select * from unitchange where id='7'");
			while(rs7.next()) {
				 unit7 = rs7.getString("unit");
				 cost7 = rs7.getString("cost");
			}
				
			
			
			pw.println("<table border='1'><tr><<th rowspan='2'>No</th>");
			pw.println("<th rowspan='2'>Type of consumers</th>");
			pw.println("<th colspan='2'>Rate for electrical power consumption</th></tr>");
			
			pw.println("<tr>");
			pw.println("<th>Unit</th>");
			pw.println("<th>Kyats</th>");
			pw.println("</tr>");
			
			pw.println("<tr><td rowspan='7'>1</td>");
			pw.println("<td>Domestic</td>");
			pw.println("<td> " + unit1 + "</td>");
			pw.println("<td>" + cost1 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td>Domestic Comsumption</td>");
			pw.println("<td> " + unit2 + "</td>");
			pw.println("<td>" + cost2 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td>Power Meter at Homes</td>");
			pw.println("<td> " + unit3 + "</td>");
			pw.println("<td>" + cost3 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td>Religious Building</td>");
			pw.println("<td> " + unit4 + "</td>");
			pw.println("<td>" + cost4 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td></td>");
			pw.println("<td> " + unit5 + "</td>");
			pw.println("<td>" + cost5 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td></td>");
			pw.println("<td> " + unit6 + "</td>");
			pw.println("<td>" + cost6 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr>");
			pw.println("<td></td>");
			pw.println("<td> " + unit7 + "</td>");
			pw.println("<td>" + cost7 + "</td>");
			pw.println("</tr>");
			
			pw.println("<tr><td rowspan='8'>2</td>");
			pw.println("<td>Non-Domestic comsumption</td>");
			pw.println("<td>1-500</td>");
			pw.println("<td>125</td></tr>");

			pw.println("<tr><td>Industries</td>");
			pw.println("<td>501-5000</td>");
			pw.println("<td>135</td></tr>");

			pw.println("<tr><td>Business</td>");
			pw.println("<td>5001-10000</td>");
			pw.println("<td>145</td></tr>");

			pw.println("<tr><td>Temporary</td>");
			pw.println("<td>10001-20000</td>");
			pw.println("<td>155</td></tr>");

			pw.println("<tr><td>Lamp posts</td>");
			pw.println("<td>20001-50000</td>");
			pw.println("<td>165</td></tr>");

			pw.println("<tr><td>Governmental buildings</td>");
			pw.println("<td>50001-100000</td>");
			pw.println("<td>175</td></tr>");


			pw.println("<tr><td> State-owned industries</td>");
			pw.println("<td>Over 100001</td>");
			pw.println("<td>180</td></tr>");
			
		
			pw.println("</table>");
			
			pw.println("</body>");
			pw.println("</html>");
			smt.close();
			con.close();
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
