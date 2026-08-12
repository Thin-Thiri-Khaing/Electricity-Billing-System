package Server	;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;


public class userServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public userServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
//		pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'/>");
		pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'>");
//		pw.println("<script language='text/javascript' src>")
		pw.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />");
		pw.println("<style>");
		
		pw.println(".navbar{margin-left:420px; }");
		pw.println("  .dropdown-content{min-width: 190px;}");
		pw.println(".navbar ul li a.current:link , .navbar ul li a.current:visited {color : white;}");
		pw.println("table {width:100%;  color:black;  border-bottom:2px solid black; margin-top : 5vh; }");
		pw.println("tr:nth-child(odd){background-color:lightgray;}");
		pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
		pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white;}");
		
		pw.println("#btnAction{ display: flex; margin-left:800px; }");
		pw.println("#btnAction1{ margin : 10px;}");
		pw.println("#searchInput{   border: 2px solid lightgray;  height: 30px;  background-color: rgba(236,236,236); padding:7px;}");
		pw.println(".textinput1 { font-size : 18px; border : none; outline : none;  background-color: rgba(236,236,236); width:70%; }");
		pw.println("::placeholder{padding-top:5px; }");

		pw.println("#btn{transition : .5s; width: 30px; margin-left: 15px; height: 30px; color : black; padding : 5px; border: 2px solid lightgray;  font-size:16px;  background-color: rgba(236,236,236);}");
		pw.println("#btn:hover {background-color: lightgray; transition : .5s;  padding : 5px;}");
		pw.println(".wel{width:60vh;color : #E7CEA6;font-size : 20px; font-weight : bold;	padding : 12px 0 10px 10px;}");
		pw.println("</style>");
		
		pw.println("</head>");
		pw.println("<body>");
		pw.println("   <div class='banner'>");
		
		pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
		pw.println("<p class='wel' >Welcome admin!</p>");
	    pw.println(" <div class='navbar'><ul><li><a href='adminHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='unitRate_Admin'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn current'><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='userServlet' class='current'>UserList</a><a href='paymentList'>PaymentList</a><a href='unitControl?action=LIST1'>UnitList</a><a href='feedbackList'>User Feedbacks</a></div></li></ul> </div></div> ");
	    

		pw.println("<h1 align = 'center' style='margin-top:5vh; color : #0077b6; '>User List</h1>");
		
		pw.println("<div id='btnAction'>");
		//userFilter button
		pw.println("<div id='btnAction1'>");
		pw.println("<form action='userFilter' method='post' >");
		pw.println("<div id='searchInput'");
		pw.println("<span><i class='fa-solid fa-search'></i></span>");
		pw.println(" <input type='text' name='name' id='textbox' placeholder='Search Name' required' class='textinput1'>");
		pw.println("<button type='submit' id='btn'><i class='fa-solid fa-filter'></i></button>");
		pw.println("</div>");
		pw.println("</form>");
		pw.println("</div>");
		
		pw.println("<div id='btnAction1'>");
		pw.println("<form action='userDelete' method='post' >");
		pw.println("<div id='searchInput'");
		pw.println("<span><i class='fa-solid fa-search'></i></span>");
		pw.println(" <input type='text' name='mbi' id='textbox' placeholder='Delete MeterBox ID' required' class='textinput1'>");
		pw.println("<button type='submit' id='btn'><i class='fa-solid fa-trash'></i></button>");
		pw.println("</div>");
		pw.println("</form>");
		pw.println("</div>");
		
		pw.println("</div>");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/Electricity","root","thin");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("select * from users");
			pw.println("<style> #data{ backgound-color:blue; align:center;}</style>");
			
			
			
			pw.println("<table id='userTable'><tr><th  id='data'> ID </th>");
			pw.println("<th  id='data'> Name </th>");
			pw.println("<th  id='data'> Email </th>");
			pw.println("<th  id='data'> Address </th>");
			pw.println("<th  id='data'> Phone Number </th>");
			pw.println("<th  id='data'> Meterbox ID </th>");
			while(rs.next()) {
				int id=rs.getInt("id");
				String name=rs.getString("name");
				String email=rs.getString("email");
				String address=rs.getString("address");
				String phone=rs.getString("phone_no");
				String mbi=rs.getString("meterbox_id");
				
				
				pw.println("<tr><td id='data'>" + id + "</td>");
				pw.println("<td  id='data'>" + name + "</td>");
				pw.println("<td  id='data'>" + email + "</td>");
				pw.println("<td  id='data'>" + address + "</td>");
				pw.println("<td  id='data'>" + phone + "</td>");
				pw.println("<td  id='data'>" + mbi + "</td></tr>");
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


}
