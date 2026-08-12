<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Dancing+Script&family=Lobster&family=Noto+Serif+Myanmar:wght@300;900&family=Pacifico&display=swap');
	*{
		margin : 0;
	    padding: 0;
	    font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
	}
	
	body{		
    font-size: 20px;
    background:url("./Photo/userbg.jpg");
    background-position: center;
    background-size: 100%;
    
    }

    #form{
    	/* margin-top : 1%; */
    	margin: 1% auto;
        width: 25%;
        height: 450px;
        padding: 40px;
        color:#0A6EBD;     
        border-radius : 25px;
        background: transparent;
        border: 2px solid rgba(219, 219, 245, 0.2);
        backdrop-filter: blur(5px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;
    }

    #formContent{
        margin-top: 5vh;
        padding : 50px;
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
    margin-left: 620px;
   
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
	  
.navbar ul li a.current:link , .navbar ul li a.current:visited {
	color : white;
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
        

    

      #register{
        margin-top: 3vh;
        width: 100%;
        height: 100%;
       
    }

    td{
                    position: relative;
                    /* border-bottom: 2px solid white; */
                    margin: 3px 0;
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
                width: 100%;
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
                width: 100%;


            }
         
            #btn{
                    width: 40%;
                    height: 40px;
                    color: white;
                    background-color: #0077b6;
                    border-color: cadetblue;
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
                
                #footer{
                height:5px;
                padding: 0;
                margin-bottom: -5vh;
                
                }
           
</style>
</head>
    <body>
         <!-- header -->
    <div class="banner">
          
        <img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;
           

        <div class="navbar">

           <ul>
                           
                <li><a href="MainHome.jsp"><i class="fa fa-home"></i> Home</a></li>
                
                <li><a href="aboutus.jsp"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
                
                        <li class="dropdown">
                            <a href="#" class="dropbtn current"><i class="fa-regular fa-user"></i> Log in &nbsp;<i class="fa fa-caret-down"></i> &nbsp;&nbsp;&nbsp;&nbsp; </a>
                                <div class="dropdown-content">
                            
                                    <a href="adminLogin.jsp">Admin</a>
                                    <a href="LoginForm.jsp">User</a>
                                    
                                </div>                       
                                 
                    </li>
                    
                  
           </ul>
       
        </div>

     </div>
    
     <!-- header -->


	<form action="/ElectricityBill_Project/Registry" method="post" >
		

        <div id="form">
            <h2 align="center" style=" padding-bottom:0; padding-top:0; margin-top:-5vh;">Registration Form</h2>
            <table id="register">
                <tr id="formContent">
                    <td>
                        <input type="text" name="name" id="textbox"  required>
                        <span></span>
                       <label for="name"><i class="fa-solid fa-user"></i>&nbsp;&nbsp;&nbsp; Name</label>
                    </td>
                </tr>
        
                <tr id="formContent">
                     <td>
                        <input type="text" name="add" id="textbox"  required>
                        <span></span>
                        <label for="add"><i class="fa-solid fa-home"></i>&nbsp;&nbsp;&nbsp;Address</label>
                    </td>
                </tr>
        
                <tr id="formContent">
                     <td>
                        <input type="email" name="email" id="textbox"  required>
                        <span></span>
                        <label for="email"><i class="fa-solid fa-envelope"></i>&nbsp;&nbsp;&nbsp;Email</label>
                    </td>
                </tr>
        
                <tr id="formContent">
                     <td>
                        <input type="number" name="phone" id="textbox"  required>
                        <span></span>
                        <label for="phone"><i class="fa-solid fa-phone"></i>&nbsp;&nbsp;&nbsp;Phone Number</label>
                    </td>
                </tr>
        
                <tr id="formContent">
                     <td>
                        <input type="text" name="meter" id="textbox"  required>
                        <span></span>
                        <label for="meter"><i class="fa-solid fa-lightbulb"></i>&nbsp;&nbsp;&nbsp;MeterBox Id</label>
                    </td>
                </tr>
                
                
                <tr id="formContent">
                    <td colspan="2" align="center"><input type="submit" value="Register" id="btn"></td>
                </tr>

                <tr id="footer">
                    <td colspan="2" align="center">Already a member? <a href="LoginForm.jsp">Login Here</a></td>
                </tr>
                </table>
        </div>
       	
	</form>
    </body>
</html>
