

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Home Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

    *{
       
        padding: 0;
        margin: 0;
        font-family: Cambria;
    }
    body{
   
    background:  url("./Photo/userbg.jpg") center/cover no-repeat;
    
}

.usertxt{
    color:blue;

}

       /* banner */

    .banner{
    /* width: 70%;  */
    height: 100%;
    background-color: #0A6EBD;
    background-attachment:scroll;
    display: flex;
    justify-content: space-between;
    padding: 0 10px; 
 }
 
 	.logo{
 		height: 45px;
	}


.navbar{
    width: 90%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-left: 300px;
   
}    



.banner h1{
    color: white;
}

.navbar ul li{
    list-style: 
    none;
    display: inline-block;
    margin: 0 10px;
    position: relative;
       
}

.navbar ul li a{
    text-decoration: none;
    font-size: 20px;
    color: #E7CEA6;
    display: block;
    font-weight: 800;
}
/* banner */
      

	/* DopDown */
	
	 li a, .dropbtn {
	    display: inline-block;
	    color: white;
	    text-align: center;
	    padding: 14px 16px;
	    text-decoration: none;
	  }
	  
	  li a:hover, .dropdown:hover .dropbtn {
	    color: white;
	    transition: .3s;
	  }
	  
	  li.dropdown {
	    display: inline-block;
	  }
	  
	  .dropdown-content {
	    display: none;
	    position: absolute;
	    background-color:#0077b6;
	    min-width: 20px;
	    min-height : 20px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	  }
	  
	  .dropdown-content a {
	    text-decoration: none;
	    display: block;
	    text-align: left;
	  }
	
	  .navbar a:hover{
	      color: white;
	  }
	  .dropdown:hover .dropdown-content {
	    display: block;
	  }
	
	  .nov{
	    text-decoration:none;
	    color:white;
	  }
	
	  /* drop down */

    .header{
   
  	min-height:50px;
    color: #fff;
    padding: 25px; 
    display: flex;
    flex-direction: column;
    align-content: stretch;
}

	.head-bottom{
		
		min-height : 25%;
	}


.head-bottom{
    flex: 1;
    text-align: center;
    width: 80vw;
    margin-top:0vh ;
    margin: 0 auto;
}
.head-bottom h2{
    padding: 8px 0;
    font-size: 40px;
    border-bottom: 1px solid #fff;
    color : black;
}

a{
	color : white;
	
}
 tr{
    	height : 30%;
    	color : black;
    }

   
        
           

	#calTable{
		
        background: transparent;
        border: 2px solid rgba(6, 6, 15, 0.2);
        backdrop-filter: blur(20px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;
		margin :10vh auto;
		padding : 15px;
		font-size:25px;
		width:50%;
		height:50%;
	
	}
	
	input{
		height : 5vh;
		width : 80%;
		margin : 5vh;
		padding-left : 5px;
		font-size : 22px;
		outline : none;
		border : 2px solid lightblue;
		border-radius : 10px;
		background-color : lightblue;
		color : #0077b6;
		opacity : 1;
		font-weight : bolder;
	}
#pay{
		height :5vh;
		width : 100%;
		margin-top: 3px;
		margin_bottom: -30px;
		margin-left : 3px;
		margin-right: 3px;
		font-size : 20px;
		outline : none;
		border-radius : 10px;
		border : 2px solid #0077b6;
		background-color : #0077b6;
		color : #E7CEA6;
		transition : 0.3s;
		font-weight : bold;
	
	}
	#hist{
		height :5vh;
		width : 100%;
		margin-top: 3px;
		margin_bottom: -5px;
		margin-left : 12px;
		margin-right: 3px;
		font-size : 20px;
		outline : none;
		border-radius : 10px;
		border : 2px solid #0077b6;
		background-color : #0077b6;
		color : #E7CEA6;
		transition : 0.3s;
		font-weight : bold;
	}
	
	#pay:hover , #hist:hover{
		color : white;
		transition : 0.3s;
	}
	
	#btn{
                    width: 30%;
             		border : none;
                    height: 40px;
                    color: white;
                    background-color: #0077b6;
                    padding: 5px 5px;
                    margin-top: 0;
                    border-radius: 20px;
                    font-size: 20px;
                    transition : .5s;
                }
                
                #btn:hover{
                
                	background-color:blue;
                	transform : scale(1.1,1.1);
                	transition:.5s;
              
                }
                
                a{
                	color: blue;
                }
                
                .navbar ul li a.current:link , .navbar ul li a.current:visited {
  color : white;
  }
  	#welName{
  		width  : 40vh;
  		color : #E7CEA6;
  		font-size : 20px;
  		font-weight : bold;
  		padding : 12px 0 10px 10px;
  	}
  	
             
}
    </style>
</head>
<body>
	
		 <!-- header -->

	    <div class="banner">
          
        <div class="logo"><img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;</div>
        <p id="welName">Welcome <%
					String name1 =(String)session.getAttribute("name");
            		String mbi1 =(String)session.getAttribute("mbi");
					out.println(name1 + " ! ");
				%></p>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="userHome.jsp" class="current"><i class="fa fa-home"></i> Home</a></li>
               
                <li><a href="unitRate_User"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;Unit Rate</a></li>
                <li><a href="aboutus_User.jsp"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
               	<li> <a href="MainHome.jsp"><i class="fa-regular fa-user"></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                <li class="dropdown">
                   <a href="#" class="dropbtn"><i class = "fas fa-bars"></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
                   		<div class="dropdown-content">
                         	<a href="PaymentForm.jsp"><input type="button" value="Payment" id="pay"></a>
                            <form action="${pageContext.request.contextPath}/userHistory" method="post" style="width:100%; height:50px;">
           		
           			<table >
           			
		        	<tr>
		 
		        		<td><input type="hidden" name="name" value="${name}"></td>
		        		<td><input type="hidden" name="name" value="${mbi}"></td>
		        	</tr>
		        	
		        	<tr>
		        		<td colspan="2"><input type="submit"  value="History" id="hist" ></td>
		        	</tr>
		        	
		        	
        		</table>
           		</form>
                            
                        </div>                       
                                 
                </li>
                  
           </ul>
       
        </div>
       

     </div>
    
     <!-- header -->

<header class = "header" id = "header">

        <div class = "head-bottom flex">
            <h2 style="letter-spacing: 10px; word-spacing: 10px; color : #0077b6;">Welcome 
	            <%
					String name =(String)session.getAttribute("name");
            		String mbi =(String)session.getAttribute("mbi");
					out.println(name + "!");
				%>
				
				
            </h2>
            
            
           <div id="calculate">
           		
           		<form action="${pageContext.request.contextPath}/calculateunit" method="post" style="width:100%; height:360px;">
           		
           			<table id="calTable">
           			<tr>
           				<td colspan="2"><h3></h3></td>
           			</tr>
		        	<tr>
		        		<td>MeterBox ID  </td>
		        		<td><input type="text"  name="meter" value="${mbi}" ></td>
		        	</tr>
		        	
		        	<tr>
		        		<td>Enter Unit  </td>
		        		<td><input type="number" value="${unit} " name="unit"></td>
		        	</tr>
		        	
		        	
		        	
		        	<tr>
		        		<td colspan="2"><input type="submit"  id="btn" value="Calculate" ></td>
		        	</tr>
		        	
        		</table>
           		</form>
           		
           		
           		
           </div>
        </div>
  </header>
  
  		
</body>
</html>