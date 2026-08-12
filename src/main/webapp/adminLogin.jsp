<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login Page</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

@import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Dancing+Script&family=Lobster&family=Noto+Serif+Myanmar:wght@300;900&family=Pacifico&display=swap');
	*{
		margin:0;
	    padding: 0;
	    font-family: Cambria;
	}
	
	body{
	
		
        font-size: 20px;
        background:url("./Photo/userbg.jpg");
        background-position: center;
        background-size: 100%;
        
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
    margin-left: 800px;
   
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

    #form{
    	margin-top : 3%;
    	margin-left: 37%;
        width: 20%;
        height: 350px;
        padding: 60px;
        color:#0A6EBD;     
        border-radius : 25px;
        background: transparent;
        border: 2px solid rgba(219, 219, 245, 0.2);
        backdrop-filter: blur(5px);
        box-shadow: 0 0 10px rgba(0,0,0,0.2);
        border-radius: 10px;
		
    }

    #register{
        width: 100%;
        height: 100%;
      
       
    }
    
 
    #error1{
    	height : 15px;
    	margin-bottom : 5vh;
    }
    
     #loginButton{
    	height : 20px;
    }
    
    #formInput , #error1{
    
    	height : 10%;
    }
    
   

     td{
                    position: relative;
                    /* border-bottom: 2px solid white; */
                    margin: 1px 0;
                    text-align: center;
                }

        
            td input{
                width: 100%;
                color: blue;
                font-size : 20px;
                padding: 7px 0 0 0;
                border: none;
                background : none;
                outline  : none;
                height: 70px;  
               
            }



            label{
           
                position: absolute;
                top: 60%;
                left: 5px;
                transform : translateY(-10%);
                font-size: 20px;
                pointer-events: none;
                transition: .5s;
                 
            }

            td span::before{
                content:'';
                position: absolute;
                top: 90px;
                left: 0;
                width: 100%;
                height: 2px;
                background: #0077b6;
                transition: .5s;
               
            }

            td input:focus ~ label ,
            td input:valid ~ label{
                top: 1vh;
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

                span{
                    color:blue;
                    font-size: 40px;
                }
                
                #formHeader{
                
                	margin-top:-5vh;
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
           	 	<li class="dropdown">	
                            <a href="#" class="dropbtn current"><i class="fa-regular fa-user"></i> Log in &nbsp;<i class="fa fa-caret-down"></i> &nbsp;&nbsp;&nbsp;&nbsp; </a>
                                <div class="dropdown-content">
                            
                                    <a href="adminLogin.jsp" class="current">Admin</a>
                                    <a href="LoginForm.jsp">User</a>
                                    
                                </div>                       
                                 
                    </li>
                    
                  
           </ul>
       
        </div>

     </div>
    
     <!-- header -->
	<form action="/ElectricityBill_Project/" method="post" >
		

        <div id="form">
            <h2 align="center" id="formHeader">Login as Administration</h2>
           <table id="register">
                <tr id="formInput">
                    <td>
                        <input type="text" name="name" id="name"  required>
                        
                        <span></span>
                       <label for="name"><i class="fa-solid fa-user"></i>&nbsp;&nbsp;&nbsp; Name</label>
                    </td>
                </tr>
     
                <tr id="formInput">
                    <td>
                        <input type="password" name="pass" id="password"  required>
                       
                        <span></span>
                        <label for="email"><i class="fa-solid fa-key"></i>&nbsp;&nbsp;&nbsp;Password</label>
                    </td>
                </tr>
  
                <tr id="error1">
                	<td> <div id="error"></div>		</td>
                </tr>
                
                 <tr id = "loginButton">
                    <td  align="center"><input type="reset" value="Login" id="btn" onclick="go()"></td>
                </tr>
     </table>
        </div>
       
	</form>
	<script>
		function go(){
			var btn = document.getElementById("btn");
			var name = document.getElementById("name").value;
			var pw = document.getElementById("password").value;
			var error = document.getElementById("error");
			
			if(name == "admin" && pw == "admin123"){
				window.location.assign("adminHome.jsp");
				
			}
			
			else{
				  
				error.innerHTML = "Your name and password does not match.";
				error.style.color = "red";
				  if(btn.value == "Login"){
					  btn.value = "Reset";
				  }
				  
				  else if(btn.value == "Reset"){
					  btn.value = "Login";
					  error.innerHTML = "";
					  form.reset();
					 
				  }
				
			
			}
			
		}
		
	</script>
</body>
</html>