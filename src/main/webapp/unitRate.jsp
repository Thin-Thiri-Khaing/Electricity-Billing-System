<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
		padding :0;
		font-family: Book Antiqua;
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
    margin-left: 550px;
   
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
	     background-color : blue;

	     
	    }
	  
	  .dropdown:hover .dropdown-content {
	    display: block;
	  }
	
	  .nov{
	    text-decoration:none;
	    color:white;
	  }
	
	  /* drop down */
	table{
				
				width: 90%;
				height: 90%;
				margin-left: 70px;
				margin-top: 30px;
				border-collapse: collapse;
				color: blue;
				background-color: lightblue;
				font-size: 25px;
				
				
	}
	#first_head{
			 	background-color: #E7CEA6;
	}
	td{
				padding : 0 35px;
	}
	
			
		
	
	 
</style>
</head>
<body>

	 <!-- header -->

	    <div class="banner">
          
        <div class="logo"><img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;</div>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="MainHome.jsp"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="unitRate.jsp"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;Unit Rate</a></li>
                <li><a href="#"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
               	 <li class="dropdown">
                            <a href="#" class="dropbtn"><i class="fa-regular fa-user"></i> Log in&nbsp;<i class="fa fa-caret-down"></i> &nbsp;&nbsp;&nbsp;&nbsp; </a>
                                <div class="dropdown-content">
                            
                                    <a href="adminLogin.jsp">Admin</a>
                                    <a href="LoginForm.jsp">User</a>
                                    
                                </div>                       
                                 
                    </li>
                  
           </ul>
       
        </div>

     </div>
    
     <!-- header -->
	
	<table  border="1">
	
		<tr id="first_head">
			<th rowspan="2">NO.</th>
			<th rowspan="2">Types of Consumers</th>
			<th colspan="2">Rate for electrical power consumption</th>
		</tr>
		<tr id="first_head">
			<th>Unit</th>
			<th>Kyats</th>
		</tr>
		<tr>
			<td rowspan="7">1</td>
			<td >Domestic</td>
			<td>1-30</td>
			<td>35</td>
		</tr>
		<tr>
			<td> Domestic Consumption </td>
			<td>31-50</td>
			<td>50</td>
		</tr>
		<tr>
			<td> Power Meter at homes </td>
			<td> 51-75 </td>
			<td> 70 </td>
		</tr>
		<tr>
			<td> Religious Building </td>
			<td> 76-100 </td>
			<td> 90 </td>
		</tr>
		<tr>
			<td></td>
			<td> 101-150 </td>
			<td> 110 </td>
		</tr>
		<tr>
			<td></td>
			<td> 151-200 </td>
			<td> 120 </td>
		</tr>
		<tr>
			<td></td>
			<td> Over 200 </td>
			<td> 125 </td>
		</tr>
		  
		  
		  
		 <tr>
			<td rowspan="13"> 2 </td>
			<td > Non-Domestic consumption </td>
			<td> 1-500 </td>
			<td> 125 </td>
		</tr>
		
		<tr>
			<td>Industries</td>
			<td> 501-5000 </td>
			<td> 135 </td>
		</tr>
		<tr>
			<td> Business </td>
			<td> 5001-10000 </td>
			<td> 145 </td>
		</tr>
		<tr>
			<td>Temporary </td>
			<td> 10001-20000 </td>
			<td> 155 </td>
		</tr>
		<tr>
			<td> Lamp posts </td>
			<td> 20001-50000 </td>
			<td> 165 </td>
		</tr>
		<tr>
			<td> Governmental buildings </td>
			<td> 50001-100000 </td>
			<td> 175 </td>
		</tr>
		<tr >
			<td>State-owned industries </td>
			<td > Over 100001</td>
			<td >180</td>
		</tr>
		<tr>
			<td> State-owned businesses </td>
		</tr>
		<tr>
			<td> River Water Pumping Stations </td>
		</tr>
		<tr>
			<td> Municipal departments, works </td>
		</tr>
		<tr>
			<td> Non-Governmenttal organizations </td>
		</tr>
		<tr>
			<td> Embassies </td>
		</tr>
		<tr>
			<td>International organizations </td>
		</tr>
	</table>
	
</body>
</html>