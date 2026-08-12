package Project;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;


public class paymentList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public paymentList() {
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
		pw.println("*{font-family : 'Cambria'}");
		pw.println("h1{margin-top : 5vh; color : #0077B6}");
		pw.println("table{width:100%;  color:black;  border-bottom:2px solid black; margin-top : 5vh;}");
		pw.println("tr:nth-child(odd){background-color:lightgray;}");
		pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
		pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white; }");
		
		pw.println(".textinput{ font-size : 20px; border : none; outline : none;  background-color: rgba(236,236,236); width:80%;}");
		pw.println(".filter{  width: 20%; border: 2px solid lightgray;  height: 30px;  margin-left: 780px;  padding: 3px 10px;  background-color: rgba(236,236,236);}");
		pw.println(".search{ display: flex;}");
		pw.println("#btn{transition : .5s; width: 8%;  height: 40px; color : black;  border: 2px solid lightgray;  font-size: 20px;  padding: 3px 10px; background-color: rgba(236,236,236); margin-left: 10px;}");
		pw.println("#btn:hover {background-color: lightgray; transition : .5s;}");
		
		    
		
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("   <div class='banner'>");
		pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
	    pw.println(" <div class='navbar'><ul><li><a href='adminHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='unitRate_Admin.jsp'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li><a href='#'><i class='fa-regular fa-address-card'></i>&nbsp;&nbsp; About Us</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn'><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='userServlet'>UserList</a><a href='paymentList'>PaymentList</a></div></li></ul> </div></div> ");
	    
		pw.println(" <h1 align = 'center' style=''>Payment List</h1>");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/Electricity","root","thin");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("select * from user_payment");
			
			pw.println("<form action='paymentFilter' method='post' >");
			
			pw.println("<div class = 'search'>");
			pw.println("<div class='filter'> ");
			pw.println("<span><i class='fa-solid fa-search'></i></span>");
			pw.println(" <input type='text' name='name' id='textbox' placeholder='Search MeterBox' required' class='textinput'>");
			pw.println("</div>");
			pw.println("<button type='submit' id='btn'><i class='fa-solid fa-filter'></i>&nbsp;&nbsp;&nbsp;Filter</button>");
			
			pw.println("</div");
			pw.println("</form>");
			
			pw.println("<table><tr><th  id='data'>Bill_ID </th>");
			pw.println("<th  id='data'> Name </th>");
			pw.println("<th  id='data'> MeterBox_ID </th>");
			pw.println("<th  id='data'> Month </th>");
			pw.println("<th  id='data'> Unit </th>");
			pw.println("<th  id='data'> Amount Due </th>");
			pw.println("<th  id='data'> Remark </th>");
			while(rs.next()) {
				int id=rs.getInt("bill_id");
				String name=rs.getString("name");
				String meter=rs.getString("meterbox_id");
				String month=rs.getString("month");
				String unit=rs.getString("unit");
				String amount=rs.getString("amount_due");
				
				
				pw.println("<tr><td id='data'>" + id + "</td>");
				pw.println("<td  id='data'>" + name + "</td>");
				pw.println("<td  id='data'>" + meter + "</td>");
				pw.println("<td  id='data'>" + month + "</td>");
				pw.println("<td  id='data'>" + unit + "</td>");
				pw.println("<td  id='data'>" + amount + "</td>");
				pw.println("<td  id='data'> Paid </td></tr>");
			}
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
