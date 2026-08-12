<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.awt.desktop.AppForegroundListener"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style type="text/css">

@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Dancing+Script&family=Lobster&family=Noto+Serif+Myanmar:wght@300;900&family=Pacifico&display=swap');
	*{
		margin : 0 ;
		padding : 0 ;
		font-family: Cambria;
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
	 #welName{
			  		width  : 60vh;
			  		color : #E7CEA6;
			  		font-size : 20px;
			  		font-weight : bold;
			  		padding : 5px 0 10px 5px;
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
.navbar ul li a.current:link , .navbar ul li a.current:visited {
 	color : white;
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
	    min-width: 120px;
	    min-height : 30px;
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
	  
	  .dropdown-content a:hover {
	     background-color : #0077b6;

	     
	    }
	  
	  .dropdown:hover .dropdown-content {
	    display: block;
	  }
	
	  .nov{
	    text-decoration:none;
	    color:white;
	  }
	
	  /* drop down */

	#unitlower200,#unit101to150,#unit76to100,#unit51to75,#unit31to50,#unit1to30,#unit1to30{
	display: none;    
	
	}

    body{
   
   background:  url("./Photo/userbg.jpg") center/cover no-repeat;
   
}
    
	#unitover200{
    margin-top: 5vh;
	margin-left:auto;
		
	margin-right: auto;
	width: 60%;
	height: 600%;
	}

	#tablem{
	margin-left:auto;
	margin-right: auto;
	width: 70%;
	height: 600%;
	background-color: lightyellow;
	
	}
	
    #unitover200 th{
		font-weight:500px;
		font-size: 20px;
		background:#0A6EBD;
        border: 2px solid rgba(6, 6, 15, 0.2);
        backdrop-filter: blur(20px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;		
		padding : 10px;
		text-align: center;
		color:white;
		width : 100px;
	}

	
	
	#unitover200 td{
		font-weight:500px;
		font-size: 20px;
		font-weight : bold;
		background: transparent;
        border: 2px solid rgba(6, 6, 15, 0.2);
        backdrop-filter: blur(20px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;		
		padding : 8px;
		text-align: center;
		color: #0077b6;
		width : 100px;
	}

    
	div , input,a{
	text-align: center;
	font-size: 30px;
	}
	
	#btn{
                    width: 30%;
                    height: 40px;
                    color: white;
                    background-color: #0077b6;
                    border : none;
                    padding: 5px 5px;
                    margin: 3vh 45%;
                    border-radius: 20px;
                    font-size: 25px;
                    transition : .5s;
                   
                    
                }
                
                #btn:hover{
                
                	background-color:blue;
                	transform : scale(1.1,1.1);
                	transition:.5s;
              
                }
                
                #btnTable{
                	
                	width : 80%;
                	margin :0 14vh;
                }
                
                #btnTable td{
                	width :40%;
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
					out.println(name1 + " ! "); 
					%>
		</p>
					
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
  
  
  
  
  

<c:set value="${unit1to30}"  var="unit1to30"></c:set>
<c:set value="${unit31to50}"  var="unit31to50"></c:set>

<c:set value="${unit51to75}"  var="unit51to75"></c:set>

<c:set value="${unit76to100}"  var="unit76to100"></c:set>

<c:set value="${unit101to150}"  var="unit101to150"></c:set>

<c:set value="${unit151to200}"  var="unit151to200"></c:set>

<c:set value="${unit201andover}"  var="unit201andover"></c:set>

<c:set value="${total}"  var="total"></c:set>

<c:set value="${unit}" var ="unit" />

<c:set value="${meter}" var ="meter" />


<c:set value="${unit1to30cost}"  var="unit1"></c:set>
<c:set value="${unit31to50cost}"  var="unit2"></c:set>

<c:set value="${unit51to75cost}"  var="unit3"></c:set>

<c:set value="${unit76to100cost}"  var="unit4"></c:set>

<c:set value="${unit101to150cost}"  var="unit5"></c:set>

<c:set value="${unit151to200cost}"  var="unit6"></c:set>

<c:set value="${unit201andovercost}"  var="unit7"></c:set>



  <c:if test="${unit > 200}">
  
     <table id="unitover200"  style="visibility: visible;" >
     
     <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
           <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
  
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>30</td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
          <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td>20</td>
              <td id="secondun">${unit31to50} Ks</td>
          </tr>
  
          <tr>
              <td>51 to 75</td>
              <td>${unit3 } Ks</td>
              <td>25</td>
              <td id="thirdun">${unit51to75} Ks</td>
          </tr>
  
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td>25</td>
              <td id="fourun">${unit76to100} Ks</td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td>50</td>
              <td id="fiveun">${unit101to150} Ks</td>
          </tr>
  
          <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td>50</td>
              <td id="sixun">${unit151to200} Ks</td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t">${(unit)-200} </td>
              <td id="sevenun">${unit201andover} Ks</td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
    
  </c:if>
  <c:if test="${unit>= 151 && unit <=200}">
  
   <table id="unitover200"  style="visibility: visible;" >
   
     <tr>
       <th colspan="2">Meter Number - ${meter}</th>
       <th colspan="2">Consumed Unit - ${unit}</th>
     </tr>

          <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>

        <tr>
            <td>1 to 30</td>
            <td>${unit1 } Ks</td>
            <td>30</td>
            <td id="firstun">${unit1to30} Ks</td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>${unit2 } Ks</td>
            <td>20</td>
            <td id="secondun">${unit31to50} Ks</td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>${unit3 }Ks</td>
            <td>25</td>
            <td id="thirdun">${unit51to75} Ks</td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>${unit4 } Ks</td>
            <td>25</td>
            <td id="fourun">${unit76to100} Ks</td>
        </tr>

        <tr>
            <td>101 to 150</td>
            <td>${unit5 } Ks</td>
            <td>50</td>
            <td id="fiveun">${unit101to150} Ks</td>
        </tr>

        <tr>
            <td>151 to 200</td>
            <td>${unit6 } Ks</td>
            <td>${(unit)-150}</td>
            <td id="sixun">${unit151to200} Ks</td>
        </tr>
        
    <tr>
            <td>200 over</td>
            <td>${unit7 } Ks</td>
            <td id="t"> -  </td>
            <td id="sevenun">- </td>
        </tr>

        <tr>
            <td colspan="3">Total Amount Due</td>
            <td id="total">${total} Ks</td>
        </tr>
    </table>
  
  </c:if>
  
  
  
  <c:if test="${unit >= 101 && unit <=150}">
  
  <table id="unitover200" style="visibility: visible;" >
   
       <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
            <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
          
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>30</td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
          <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td>20</td>
              <td id="secondun">${unit31to50} Ks</td>
          </tr>
  
          <tr>
              <td>51 to 75</td>
              <td>${unit3 } Ks</td>
              <td>25</td>
              <td id="thirdun">${unit51to75} Ks</td>
          </tr>
  
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td>25</td>
              <td id="fourun">${unit76to100} Ks</td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td>${unit-100} </td>
              <td id="fiveun">${unit101to150} Ks</td>
          </tr>
  
         <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td> - </td>
              <td id="sixun"> - </td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t"> -  </td>
              <td id="sevenun">- </td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
    
  </c:if>
  
  
  <c:if test="${unit >= 76 && unit <=100}">

     <table id="unitover200" style="visibility: visible;" >
    
      <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
            <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
          
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>30</td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
          <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td>20</td>
              <td id="secondun">${unit31to50} Ks</td>
          </tr>
  
          <tr>
              <td>51 to 75</td>
              <td>${unit3 }Ks</td>
              <td>25</td>
              <td id="thirdun">${unit51to75} Ks</td>
          </tr>
  
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td>${unit-75}</td>
              <td id="fourun">${unit76to100} Ks</td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td> - </td>
              <td id="fiveun"> - </td>
          </tr>
  
          <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td> - </td>
              <td id="sixun"> - </td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t"> -  </td>
              <td id="sevenun">- </td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
      
  </c:if>
  
  <c:if test="${unit >= 51 && unit <= 75}">
  
  <table id="unitover200" style="visibility: visible;" >
       <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
            <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
  
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>30</td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
          <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td>20 </td>
              <td id="secondun">${unit31to50} Ks</td>
          </tr>
  
          <tr>
              <td>51 to 75</td>
              <td>${unit3 } Ks</td>
              <td>${ unit -50} </td>
              <td id="thirdun">${unit51to75} Ks</td>
          </tr>
          
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td> - </td>
              <td id="fourun"> - </td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td> - </td>
              <td id="fiveun"> - </td>
          </tr>
  
          <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td> - </td>
              <td id="sixun"> - </td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t"> -  </td>
              <td id="sevenun">- </td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
     
      
  </c:if>
  
  <c:if test="${unit >= 31 && unit <= 50}">

     <table id="unitover200" style="visibility: visible;" >
     
       <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
           <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
          
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>30</td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
          <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td>${unit-30}</td>
              <td id="secondun">${unit31to50} Ks</td>
          </tr>
  
        <tr>
              <td>51 to 75</td>
              <td>${unit3 } Ks</td>
              <td> - </td>
              <td id="thirdun"> - </td>
          </tr>
  
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td> - </td>
              <td id="fourun"> - </td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td> - </td>
              <td id="fiveun"> - </td>
          </tr>
  
          <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td> - </td>
              <td id="sixun"> - </td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t"> -  </td>
              <td id="sevenun">- </td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
      
      
      </c:if>
  
  <c:if test="${unit >= 1 && unit <= 30}">
  
     <table id="unitover200" style="visibility: visible;" >
     
       <tr>
         <th colspan="2">Meter Number - ${meter}</th>
         <th colspan="2">Consumed Unit - ${unit}</th>
       </tr>
  
           <tr>
                <th>Unit Layer</th>
                <th>MMKS</th>
                <th>Unit</th>
                <th>Amount Due</th>
            </tr>
  
  
          <tr>
              <td>1 to 30</td>
              <td>${unit1 } Ks</td>
              <td>${unit} </td>
              <td id="firstun">${unit1to30} Ks</td>
          </tr>
  
           <tr>
              <td>31 to 50</td>
              <td>${unit2 } Ks</td>
              <td> - </td>
              <td id="secondun"> - </td>
          </tr>
  
          <tr>
              <td>51 to 75</td>
              <td>${unit3 } Ks</td>
              <td> - </td>
              <td id="thirdun"> - </td>
          </tr>
  
          <tr>
              <td>76 to 100</td>
              <td>${unit4 } Ks</td>
              <td> - </td>
              <td id="fourun"> - </td>
          </tr>
  
          <tr>
              <td>101 to 150</td>
              <td>${unit5 } Ks</td>
              <td> - </td>
              <td id="fiveun"> - </td>
          </tr>
  
          <tr>
              <td>151 to 200</td>
              <td>${unit6 } Ks</td>
              <td> - </td>
              <td id="sixun"> - </td>
          </tr>
  
          <tr>
              <td>200 over</td>
              <td>${unit7 } Ks</td>
              <td id="t"> -  </td>
              <td id="sevenun">- </td>
          </tr>
  
          <tr>
              <td colspan="3">Total Amount Due</td>
              <td id="total">${total} Ks</td>
          </tr>
      </table>
      
     

  </c:if>
  
  <form action="${pageContext.request.contextPath}/PaymentForm.jsp" method="post" >

    <table id="btnTable">
      <tr>
      	
        <td><a href="userHome.jsp"><input type="button" value="Recalculate" id="btn"></a></td>
        <td><input type="submit" value="Pay" id="btn"></td>
        
       <input type="hidden" name="total" value="${total}">
        <input type="hidden" name="unit" value="${unit}">
       
        
      </tr>
    </table>
    
    
    </form>

</body>
</html>