package Project;

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
		pw.println("<link rel='stylesheet' href='/ElectricityBill_Project/external.css'/>");
//		pw.println("<script language='text/javascript' src>")
		pw.println("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css\" integrity=\"sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==\" crossorigin=\"anonymous\" referrerpolicy=\"no-referrer\" />");
		pw.println("<style>");
		
		pw.println("table {width:100%;  color:black;  border-bottom:2px solid black; margin-top : 5vh; }");
		pw.println("tr:nth-child(odd){background-color:lightgray;}");
		pw.println("td{padding:15px; color: #0077B6; font-size: 20px; font-weight: bold;}");
		pw.println("th{font-size:20px; padding: 10px 5px; background-color: #0077b6; color :white;}");
		
		pw.println(".textinput{ font-size : 20px; border : none; outline : none;  background-color: rgba(236,236,236); width:80%;}");
		pw.println(".filter{  width: 20%; border: 2px solid lightgray;  height: 30px;  margin-left: 780px;  padding: 3px 10px;  background-color: rgba(236,236,236);}");
		pw.println(".search{ display: flex;}");
		pw.println("#btn{transition : .5s; width: 8%;  height: 40px; color : black;  border: 2px solid lightgray;  font-size: 20px;  padding: 3px 10px; background-color: rgba(236,236,236); margin-left: 10px;}");
		pw.println("#btn:hover {background-color: lightgray; transition : .5s;}");
		
		//replaceTable start
	    pw.println("#replace {width:50%;  color:black;  border-bottom:2px solid black; margin-top : 5vh;}");
	    //replaceTable end
		pw.println("</style>");
		pw.println("</head>");
		pw.println("<body>");
		pw.println("   <div class='banner'>");
		pw.println("<div class='logo'><img src='logo.png' class='logo' width='50px' height='50px' ></a>&nbsp;</div>");
	    pw.println(" <div class='navbar'><ul><li><a href='adminHome.jsp'><i class='fa fa-home'></i> Home</a></li><li><a href='unitRate_Admin.jsp'><i class='fa-solid fa-calculator'></i>&nbsp;&nbsp;Unit Rate</a></li><li><a href='#'><i class='fa-regular fa-address-card'></i>&nbsp;&nbsp; About Us</a></li><li> <a href='MainHome.jsp'><i class='fa-regular fa-user'></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li><li class='dropdown'><a href='#' class='dropbtn'><i class = 'fas fa-bars'></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a><div class='dropdown-content'><a href='userServlet'>UserList</a><a href='paymentList'>PaymentList</a></div></li></ul> </div></div> ");
	    
	    
	    //replaceTable JS start
	    pw.println("<script>");
	    pw.println("function delete(){");
	    pw.println("var rp = document.getElementByID('replace')");
	    pw.println("rp.innerHTML = 'THIN'");
	    pw.println("}");
	    pw.println("</script>");
	    
	    //replaceTable JS end

	     

		
		pw.println("<h1 align = 'center' style='margin-top:5vh; color : #0077b6; '>User List</h1>");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:2002/Electricity","root","thin");
			Statement smt=con.createStatement();
			ResultSet rs=smt.executeQuery("select * from users");
			pw.println("<style> #data{ backgound-color:blue; align:center;}</style>");
			pw.println("<form action='paymentFilter' method='post' >");
			
			pw.println("<div class = 'search'>");
			pw.println("<div class='filter'> ");
			pw.println("<span><i class='fa-solid fa-search'></i></span>");
			pw.println(" <input type='text' name='name' id='textbox' placeholder='Search MeterBox' required' class='textinput'>");
			pw.println("</div>");
			pw.println("<button type='submit' id='btn'><i class='fa-solid fa-filter'></i>&nbsp;&nbsp;&nbsp;Filter</button>");
			pw.println("<button type='button' id='btn' onclick='delete()'><i class='fa-solid fa-filter'></i>&nbsp;&nbsp;Delete</button>");
			pw.println("</div");
			pw.println("</form>");
			
			pw.println("<table id='replace'><tr><td>asfl</td></tr></table>");
			
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
