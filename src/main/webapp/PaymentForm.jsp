<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Dancing+Script&family=Lobster&family=Noto+Serif+Myanmar:wght@300;900&family=Pacifico&display=swap');
	*{
		margin: 0;
	    padding: 0;
	    font-family: Cambria;
	}
	
	body{		
    font-size: 20px;
    background:url("./Photo/userbg.jpg");
    background-position: center;
    background-size: 100%;
    
    }

    #form{
    	margin-top : 5%;
    	margin-left: 22%;
        width: 50%;
        height: 340px;
        padding: 35px;
        color:#0A6EBD;     
        border-radius : 25px;
        background: transparent;
        border: 2px solid rgba(219, 219, 245, 0.2);
        backdrop-filter: blur(5px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;
    }
    
         /* banner */

    .banner{
    /* width: 70%;  */
    height: 50px;
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
    margin-left: 200px;
   
}    



.banner h1{
    color: white;
}

.navbar ul li{
    list-style: none;
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
	    padding: 12px 16px;
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
	    text-align: center;
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

    
    #register{
        width: 100%;
        height: 100%;
        padding-left : 8vh;
       
    }
    
    

     td{
                    position: relative;
                    /* border-bottom: 2px solid white; */
                    margin: 10px;
                   
                   margin-left: 3vh;
                   
                    text-align: center;
                    
                }

        
            td input{
                width: 100%;
                color: blue;
                font-size:20px;
                padding: 5px 5px 0px 5px;
                border: none;
                background:none;
                outline: none;
                height: 20px;
            }



            label{
                position: absolute;
                top: 50%;
                left: 5px;
                transform: translateY(-30%);
                font-size: 20px;
                pointer-events: none;
                transition: .5s;
            }

            td span::before{
                content:'';
                position: absolute;
                top: 56px;
                left: 0;
                width: 80%;
                height: 2px;
                background: #0077b6;
                transition: .5s;
            }

            td input:focus ~ label ,
            td input:valid ~ label{
                top: -3px;
                color: blue;
            }

            td input:focus ~ span::before ,
            td input:valid ~ span::before{
                width: 80%;


            }
            #selectbox{
            	 width: 48%;
            	 height: 30px;
            	 padding-left: 3px;
            	 /* border: 1px solid #0077b6; */
                 border: none;
                 font-weight: bold;
            	 margin-left: 13%;
            	 
                
            }
            select {
            	color: #0077b6;
            	font-size: 18px;
            }
            #selectbox:hover{
            	background-color: lightblue;
            }
         
            .btn{
                    width: 70%;
                    height: 40px;
                    color: white;
                    background-color: #0077b6;
                    border-color: cadetblue;
                    
                    padding: 5px 5px;
                    margin-top: 0;
                    border: none;
                    border-radius: 20px;
                    font-size: 20px;
                	transition : .5s;
                }
                
                .btn:hover{
                
                	background-color:blue;
                	transform : scale(1.1,1.1);
                	transition:.5s;
              
                }
                #welName{
			  		width  : 60vh;
			  		color : #E7CEA6;
			  		font-size : 20px;
			  		font-weight : bold;
			  		padding : 12px 0 10px 10px;
  	}
                a{
                	color: blue;
                }
                
                #footer{
                height:5px;
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
	
	   .navbar ul li a.current:link , .navbar ul li a.current:visited {
  				color : white;
           
</style>
</head>
<body>
	 <!-- header -->

	    <div class="banner">
          
        <div class="logo"><img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;</div>
         <p id="welName">Welcome <%
        		 
					String name1 =(String)session.getAttribute("name");
            		String mbi1 =(String)session.getAttribute("mbi");
            		String email =(String)session.getAttribute("email");
            		
            		String total = request.getParameter("total");
            		String unit = request.getParameter("unit");
					out.println(name1 + " ! ");
         	%></p>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="userHome.jsp"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="unitRate_User"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;Unit Rate</a></li>
                <li><a href="aboutus_User.jsp"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
               	<li> <a href="MainHome.jsp"><i class="fa-regular fa-user"></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                 <li class="dropdown">
                   <a href="#" class="dropbtn current"><i class = "fas fa-bars"></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
                   		<div class="dropdown-content">
                         	<a href="PaymentForm.jsp" class="current"><input type="button" value="Payment" id="pay"  ></a>
                            <form action="${pageContext.request.contextPath}/userHistory" method="post" style="width:100%; height:50px;">
           			<table  >
           			
		        	<tr>
		 
		        		<td><input type="hidden" name="name" value="${name}"></td>
		        		<td><input type="hidden" name="name" value="${mbi}"></td>
		        		<td><input type="hidden" name="name" value="${email}"></td>
		        		<td><input type="hidden" name="name" value="${unit}"></td>
		        		<td><input type="hidden" name="name" value="${total}"></td>
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
	<form action="/ElectricityBill_Project/Payment" method="post" >
		

        <div id="form">
            <h2 align="center" style=" padding-bottom:10px; padding-top:0; margin-top:0%">Payment Form</h2>
            <table id="register">
                <tr>
                    <td colspan="2">
                        <input type="text" name="name" id="textbox" value="${name}" required>
                        <span></span>
                       <label for="name"><i class="fa-solid fa-user"></i>&nbsp;&nbsp;&nbsp; Name</label>
                    </td>
                    
                    <td colspan="2">
                        <input type="text" name="meter" id="textbox" value="${mbi}"  required>
                        <span></span>
                        <label for="meter"><i class="fa-solid fa-lightbulb"></i>&nbsp;&nbsp;&nbsp;MeterBox Id</label>
                </tr>
     		
     		   
                
                
        
                <tr>
                    <td colspan="2">
                        
                        <label for="add"><i class="fa-solid fa-calendar-check"></i>&nbsp;&nbsp;&nbsp;Month</label>
                   
                     
                        <select name="month" id="selectbox">
                        	<option value="choose month">Choose month</option>
				            <option value="January" id="jan">January</option>
				            <option value="February" id="feb">February</option>
				            <option value="March" id="mar">March</option>
				            <option value="April" id="apr">April</option>
				            <option value="May" id="apr">May</option>
				            <option value="June" id="apr">June</option>
				            <option value="July" id="apr">July</option>
				            <option value="August" id="apr">August</option>
				            <option value="September" id="apr">September</option>
			                <option value="October" id="apr">October</option>
			                <option value="November" id="apr">November</option>
			                <option value="December" id="apr">December</option>
				        </select>
				        <span></span>
				       </td>
				       
				       <td colspan="2">
                        
                        <label for="add"><i class="fa-solid fa-calendar-check"></i>&nbsp;&nbsp;&nbsp;Choose</label>
                   
                     
                        <select name="method" id="selectbox">
                        	<option value="choose method"> PAY METHOD</option>
				            <option value="KPay" id="kpay">KBZ PAY</option>
				            <option value="February" id="feb">WAVE PAY</option>
				            <option value="March" id="mar">AYA BANK</option>
				            <option value="April" id="apr">UAB BANK</option>
				            <option value="May" id="apr">MAB BANK</option>
				            <option value="June" id="apr">YOMA BANK</option>
				            <option value="July" id="apr">CB BANK</option>
				           
				        </select>
				        <span></span>
				       </td>
				       
				       
                </tr>
        
               
        
                <tr>
                     <td colspan="2">
                        <input type="number" name="unit" id="textbox"  required>
                        <span></span>
                        <label for="phone"><i class="fa-solid fa-layer-group"></i>&nbsp;&nbsp;&nbsp;Unit is <%  out.println(unit); %></label>
                    </td>
                    
                    <td colspan="2">
                        <input type="number" name="amount" id="textbox" value=""  required>
                        <span></span>
                        <label for="phone"><i class="fa-solid fa-money-bill-transfer"></i>&nbsp;&nbsp;&nbsp;Amount Due is <%  out.println(total); %></label>
                    </td>
                </tr>
                
             
        		<tr>
        			<td><input type="text" name="totalAmount" value="${total}"></td>
        		</tr>
        
             
                
                 <tr>
                 	 <td colspan="2"><button id="btn" class="btn"><i class="fa-solid fa-arrow-left-long"></i></button></td>
                    <td colspan="2"><input type="submit" value="Pay Now" class="btn" ></td>
                    
                    
                </tr>

                </table>
                
        </div>
       	
	</form>
	
	<script>
                		var btn=document.getElementById("btn");
                		btn.onclick=function(event){
                			window.location.assign("userHome.jsp");
                		}
                </script>
</body>
</html>