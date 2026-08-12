<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

    *{
        box-sizing: border-box;
        padding: 0;
        margin: 0;
        font-family: 'Playfair Display', serif;
    }
    body{
    line-height: 1.6;
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.2)), url("cover.jpg") center/cover no-repeat;
    
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
    margin-left: 380px;
   
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
	    min-width: 120px;
	    min-height : 20px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	  }
	  
	  .dropdown-content a {
	    text-decoration: none;
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
    min-height: 100vh;
    color: #fff;
    padding: 25px; 
    display: flex;
    flex-direction: column;
    align-content: stretch;
}
.head-top{
    display: flex;
    justify-content: space-between;
    align-items: center;
    height:30px;
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
    padding: 22px 0;
    font-size: 45px;
    border-bottom: 1px solid #fff;
}
.head-bottom p{
    /* opacity: 0.7; */
    font-size: 20px;
    margin: 45px auto;
    width: 60vw;
    word-spacing: 10px;
    color: white;
}
.head-btn{
    margin: 20px 0;
    font-size: 20px;
    font-weight: bold;
    border: 3px solid #fff;
    background: transparent;
    padding: 13px 20px;
    background: rgba(0, 0, 0, 0.3);
    color: #fff;
    cursor: pointer;
    transition: var(--transition);
}
.head-btn:hover{
    background: transparent;
}

a{
	color : white;
	
}
    </style>
</head>
<body>

	 <!-- header -->

	    <div class="banner">
          
        <div class="logo"><img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;</div>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="adminHome.jsp"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="unitRate_Admin.jsp"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;Unit Rate</a></li>
                <li><a href="#"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
               	<li> <a href="MainHome.jsp"><i class="fa-regular fa-user"></i> Log Out &nbsp;&nbsp;&nbsp;&nbsp; </a></li>
                <li class="dropdown">
                   <a href="#" class="dropbtn"><i class = "fas fa-bars"></i> MENU &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
                   		<div class="dropdown-content">
                   			<a href="userServlet">UserList</a>
                   			<a href="paymentList">PaymentList</a>
                        </div>                       
                                 
                </li>
                  
           </ul>
       
        </div>

     </div>
    
     <!-- header -->

<header class = "header" id = "header">
       

        <div class = "head-bottom flex">
            <h2 style="letter-spacing: 10px; word-spacing: 10px;">Welcome Admin
           
            </h2>
    
            <!-- <button type = "button" class = "head-btn">GET STARTED</button> -->
        </div>
    </header>
    
    

	
	
	
</body>
</html>