
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unit Change Form</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
	 *{
        box-sizing: border-box;
        padding: 0;
        margin: 0;
       font-family: 'Cambria';
    }
    body{
    line-height: 1.6;
   
    
}
 /* banner */

    .banner{
    /* width: 70%;  */
    height: 100%;
    background-color: #0077b6;
    background-attachment:scroll;
    display: flex;
    justify-content: space-between;
    padding: 0 15px; 
 }
 
 	.logo{
 		height: 50px;
 		display : flex;
	}
	
	#welcomeadmin{
		width : 200px;
		margin-top:6px;
		 color: #E7CEA6;
		 font-size:20px;
		 font-weight: 800;
	}


.navbar{
    width: 90%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-left: 380px;
    height: 40px;
   
}    



.banner h1{
    color: white;
}

.navbar ul li{
    list-style: 
    none;
    display: inline-block;
    margin: -4px 13px;
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
	    padding: 0 16px;
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
	    min-width: 180px;
	    min-height : 20px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	  }
	  
	  .dropdown-content a {
	  	font-size : 15px;
	    text-decoration: none;
	    padding: 8px;
	    display: block;
	    text-align: left;
	  }
	  .dropdown-content a:hover {
	     background-color : blue;

	     
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
    min-height: 58vh;
    color: #fff;
    padding: 25px; 
    display: flex;
    flex-direction: column;
    align-content: stretch;
}

.head-top span{
    cursor: pointer;
    letter-spacing: 2px;
    transition: var(--transition);
    
}
.head-top span:hover{
    color: var(--yellow);
}
.head-bottom{
    flex: 1;
    text-align: center;
    width: 80vw;
    margin-top:0vh ;
    margin: 0 auto;
}
.head-bottom h2{
    padding: -15px 0;
    font-size: 45px;
    border-bottom: 1px solid #fff;
}


a{
	color : white;
	
}
th{
	color: #0077b6;
	font-size: 25px;
	padding-left: 30px;
	background-color: #d3e7f0;
	border-bottom : 2px ridge #0077b6;
}
#heading{
	color:#0077b6;
}
td{
	color: #0077b6;
	font-size: 20px;
	font-weight : bold;
	padding-left: 30px;
}
hr{
	width: 630px;}
	}
	
	h1{
		margin-top : 5vh;
		background-color : red;
	}
</style>
</head>
<body>
<!-- header -->

	    <div class="banner">
          
        <div class="logo"><img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp; 
        <p id="welcomeadmin">Welcome admin ! </p></div>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="adminHome.jsp" ><i class="fa fa-home"></i> Home</a></li>
                <li><a href="unitRate_Admin"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;Unit Rate</a></li>
               	<li> <a href="MainHome.jsp"><i class="fa-regular fa-user"></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                <li class="dropdown">
                   <a href="#" class="dropbtn current"><i class = "fas fa-bars"></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
                   		<div class="dropdown-content">
                   			<a href="userServlet">UserList</a>
                   			<a href="paymentList">PaymentList</a>
                   			<a href = "${pageContext.request.contextPath}/unitControl?action=LIST1" class="current">UnitList</a>
                   			<a href="feedbackList">User Feedbacks</a>
                        </div>                       
                                 
                </li>
                  
           </ul>
       
        </div>

     </div>
    
     <!-- header -->
<div class = "container" style=' color : #0077b6; font-size : 22px; font-weight : bold;'>  <h1 style='margin-top : 5vh; color : #0077b6; text-align : center; margin-bottom:5vh;'>Change the Unit Cost</h1>
<div class = "row">
<div class = "col-md-4">
  <form action = "${pageContext.request.contextPath}/unitControl" method="post">
<div class = "form-group" style='margin : 5vh auto;'> <label>Units</label> <input type = "text" class = "form-control" name = "unit"  value = "${unit.unit}" style='color : #0077b6; font-size : 18px; font-weight:bold;'/></div>
<div class = "form-group" style='margin : 5vh auto;'> <label>Cost</label><input type = "text" class = "form-control" name = "cost" value = "${unit.cost}" style='color : #0077b6; font-size : 18px; font-weight:bold;'/> </div>
<input type = "hidden" name = "id" value = "${unit.id}"/>
<button type = "submit" class = "btn btn-primary" style='font-size: 18px;'>Save</button>

</form></div>
</div></div>

</body>
</html>