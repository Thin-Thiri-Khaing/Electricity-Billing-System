package Project;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;
import java.sql.*;


public class unitRate_User extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public unitRate_User() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		String name = request.getParameter("name");
		String mbi = request.getParameter("mbi");
		
		pw.println("<!DOCTYPE html>");
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'>");
		pw.println("<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css' integrity='sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=='crossorigin='anonymous' referrerpolicy='no-referrer' />");
		pw.println("<style>");
		
		pw.println(".navbar{margin-left:200px; }");
		pw.println("  .dropdown-content{min-width: 190px;}");
		pw.println(".dropdown-content a:hover {background-color : #0077B6;}");
		pw.println(".navbar ul li a.current:link , .navbar ul li a.current:visited {color : white;}");
		pw.println("*{font-family : 'Cambria'}");
		pw.println("h1{margin-top : 5vh; color : #0077B6}");
		pw.println("table{width:50%;  margin:5vh auto; color:black;  border-bottom:2px solid black; }");
		pw.println("tr:nth-child(odd){background-color:lightgray;}");
		pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
		pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white; }");
		pw.println("#welName{ color: #E7CEA6; width:60vh;font-size : 20px; font-weight :bolder;	padding : 12px 0 10px 10px;}");
		pw.println(".textinput{ font-size : 20px; border : none; outline : none;  background-color: rgba(236,236,236); width:80%;}");
		pw.println(".filter{margin : 2vh 0;  width: 20%; border: 2px solid lightgray;  height: 30px;  margin-left: 900px;  padding: 3px 10px;  background-color: rgba(236,236,236);}");
		pw.println(".search{ display: flex; }");
		pw.println("#btn{margin : 2vh 0; transition : .5s; width: 8%;  height: 40px; color : black;  border: 2px solid lightgray;  font-size: 20px;  padding: 3px 10px; background-color: rgba(236,236,236); margin-left: 10px;}");
		pw.println("#btn:hover {background-color: lightgray; transition : .5s;}");
		pw.println("#welName{width:60vh; color:#E7CEA6; }");
		pw.println("#pay{height: 5vh; width: 100%; margin-top: 3px; margin-bottom: -30px; margin-left: 0; margin-right: 0; font-size: 20px; outline: none; border-radius: 10px; border: 2px solid #0077b6; background-color: #0077b6; color: #E7CEA6; transition: 0.3s; font-weight: bold; }");
		pw.println("#hist{height: 5vh; width: 100%; margin-top: 3px; margin-bottom: -5px; margin-left: -5px; margin-right: 10px; font-size: 20px; outline: none; border-radius: 10px; border: 2px solid #0077b6; background-color: #0077b6; color: #E7CEA6; transition: 0.3s; font-weight: bold;}");
		pw.println("#pay:hover, #hist:hover{color: white; transition: 0.3s;}");
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("   <div class='banner'>");
		pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
		pw.println("<p id='welName'> Welcome ! </p>");
		pw.println(" <div class='navbar'><ul><li><a href='userHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='#' class='current'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li><a href='aboutus_User.jsp'><i class='fa-regular fa-address-card'></i>&nbsp;&nbsp; About Us</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li>");
	    
		pw.println("<li class='dropdown'><a href='#' class='dropbtn'><i class='fas fa-bars'></i>&nbsp;&nbsp;MENU</a><div class='dropdown-content'><a href='PaymentForm.jsp'><input type='button' value='Payment' id='pay'></a>");
		pw.println("</li></ul> </div></div>");
		pw.println(" <h1 align = 'center' style=''>Unit Rate List</h1>");
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/electricity","root","thin");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("select * from unitchange");
			
//			pw.println("<form action='feedbackFilter' method='post' >");
//			
//			pw.println("<div class = 'search'>");
//			pw.println("<div class='filter'> ");
//			pw.println("<span><i class='fa-solid fa-search'></i></span>");
//			pw.println(" <input type='text' name='name' id='textbox' placeholder='Search Name' required' class='textinput'>");
//			pw.println("</div>");
//			pw.println("<button type='submit' id='btn'><i class='fa-solid fa-filter'></i>&nbsp;&nbsp;&nbsp;Filter</button>");
//			
//			pw.println("</div");
//			pw.println("</form>");
			
			pw.println("<table><tr><th  id='data'>ID </th>");
			pw.println("<th  id='data'> Unit </th>");
			pw.println("<th  id='data'> Cost </th>");
			
			while(rs.next()) {
				int id=rs.getInt("id");
				String unit=rs.getString("unit");
				String cost =rs.getString("cost");
				
				
				pw.println("<tr><td id='data'>" + id + "</td>");
				pw.println("<td  id='data'>" + unit + "</td>");
				pw.println("<td  id='data'>" + cost + "</td>");
				
				
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
