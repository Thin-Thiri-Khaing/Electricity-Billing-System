<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="aboutUs.css">

    <title>About us</title>

    <style>

*{margin:0;
    padding: 0;
    box-sizing: border-box;
    font-family: Cambria;
}

.image{
    float: right;
    width: 40%;
    margin-right: 10px;
    
   
}

.image img{
    width: 100%;
    height: auto;

}


 /* banner */

    .banner{
    /* width: 70%;  */
    height: 100%;
    background-color:#0077b6;
    background-attachment:scroll;
    display: flex;
    justify-content: space-between;
    padding: 0 10px;
    
    
 }
 .logo{
 	margin-left: 8px;
 }


.navbar{
   width: 90%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-left: 450px;
    
}    



.banner h1{
    color: white;
}

.navbar ul li{
    list-style: 
    none;
    display: inline-block;
    margin: 0 3px;
    position: relative;
    }

.navbar ul li a{
    text-decoration: none;
    font-size: 20px;
    color: #E7CEA6;
    display: block;
    font-weight: 900;
    transition : 0.5s;
}

.navbar ul li a:hover{
	color : white;
	transition : 0.5s;
}

.navbar ul li a.current:link , .navbar ul li a.current:visited {
	color : white;
}

.navbar ul a::after {
    content: '';
    height: 3px;
    width: 0;
    background: yellowgreen;
    position: absolute;
    bottom: -10px;
    left: 0;
    transition: 0.10s;
   
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
  
/*  li a:hover, .dropdown:hover .dropbtn {
    color: white;
    transition: .3s;
  }*/
  
  li.dropdown {
    display: inline-block;
  }
  
  .dropdown-content {
    display: none;
    position: absolute;
    background-color:#0077b6;
    	width: 150px;

    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
  }
  
  .dropdown-content a {
    text-decoration: none;
    display: block;
    text-align: left;
  }
  
  
  
  .dropdown:hover .dropdown-content {
    display: block;
  }

  .nov{
    text-decoration:none;
    color:white;
  }

  /* drop down */

  
  /* About US Intro */

        


            .section{
            width: 100%;
            min-height: 100vh;
            background-image:  linear-gradient(rgba(0, 0, 0, 0.1),rgba(0,0,0,0.1) ), url("./Photo/aboutUs14.jpg");
            width: 100%;
            height: 400px;
            background-position: center;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
                        
        }
            
                        
        

        .container{
            width: 80%;
            display: block;
            margin: auto;
            padding-top: 50px;
            
        }

        .content-section{
            float: left;
            width:60%;
            height: 30%;
            padding: 20px 30px;
            border: rgb(136, 136, 241);
            box-shadow: rgb(205, 182, 50);
        }

        .title{
            text-transform: uppercase;
            color: blue;
            font-size: 40px;
            top: 30%;
            text-shadow: 1px 1px 1px grey,
            1px 1px 1px grey,
            1px 2px 1px grey,
            1px 3px 1px grey,
            1px 4px 1px grey,
            1px 5px 1px grey,
            1px 20px 40px rgba(124, 112, 70, 0.685);
            position: absolute;
            transform: translateY(-50%);
            z-index: z;
   
            
        }

       #description{
        margin-top: 150px;
        color: white;
       
       }




        .content-section.content.button{
            margin-top: 10px;
        }
        #para{
        	margin-top: 15px;
        	font-size: 20px;
        }

        .button a{
           background-color: blue;
           line-height: 150px;
           font-weight: bold;
           padding: 15px 40px;
           text-decoration: none;
           color: yellow;
           font-size: 20px;
           letter-spacing: 1.5px;
           transition: .5s;
        }

        .button a:hover{
           background-color: #0077b6;
            color: white;
        }

        .tb{
            font-size: 18px;
            font-family: sans-serif;
            margin-left: 100px;
            margin-right: 100px;
            line-height: 25px;
            margin: auto;
            width: 1300px;
            padding: 10px;
        }



        #span1{
        	
            font-size: 20px;
            font-weight: bold;
            font-family: sans-serif;           
        }

        /* .pclass{
            margin-left: 150px;
        } */

        table img{
            width: 600px;
            height: auto;
            transition: 0.5s;
        }

        .image{
            width:  400px;
            margin : 10vh;
           
        }

        .image:hover{
            transform: scale(1.2);
            transition: 0.5s;
        }


    .box{
        background-color: lightblue; 
        opacity: 0.7; 
        padding: 20px;
        border: white;
        border-radius: 20px; 
        box-shadow: 10px 10px 8px gray;
        line-height: 20px;
        margin-right: 300px;
        margin-left: 200px;
        width:750px;
        font-family: sans-serif;


    }


    /* .tb{
        margin: auto;
        width: 1300px;
        padding: 10px;
    } */
        


    #team{
        background-color: #f3c7c7;

    }
    .row {
        display: flex;
        /* flex-wrap: wrap; */
        /* padding: 2em 1em; */
        text-align: center;
    }
    .column {
        width: 100%;
        /* padding: 0.5em 0; */
    }
     .card {
        box-shadow: 0 0 2.4em rgba(25, 0, 58, 0.1);
        /* padding: 3.5em   1em; */
        border-radius: 0.6em;
        color: #1f003b;
        cursor: pointer;
        transition: 0.3s;
        background-color: #ffffff;
        transition :0.5s;
        
     }
     .pTable{
       padding:10px;
       width:400px;
       height:250px;
     }
     
    .card img {
      width: 150px;
      height : 150px;
      border-radius: 50%;
      padding-left:0px;
      
    }
    .name{
      padding:30px;
    }
    .card h1 {
      text-align: center;
      font-size: 18px;
      /* font-weight: 20px; */
      line-height: 40px;
      /* padding-left: 50px;   */
    }
    .card h2 {
      text-align: center;
      font-size: 16px;
      /* line-height: 40px; */
      padding-left: 10px;
      padding-right: 20px;  
    }
    .card h3{
      text-align: center;
      font-size: 17px;
      padding-left: 40px;  
      padding-right: 40px;
      line-height: 10px;
     
      

    }
    .card:hover {
      background: linear-gradient(#0077b6, #8567f7);
      color: white;
       transition :0.5s;
     
       
    }
    
    @media screen and (min-width: 768px) {
      section {
        padding: 1em 7em;
      }
    }
      @media screen and (min-width: 992px) {
      section {
        padding: 1em;
      }
    }

        #team_title{
        text-align: center;
        font-size: 60px;
        font-family: sans-serif;
        padding: 50px 0;
      }

  
   
    /* Our Team */

    /* Contact Us */
    *{
        margin: 0;
        padding: 0;
    }

    .contact_us{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .contact_container{
        position: relative;
        width: 100%;
        height: 100vh;
        background-color: #ebf0f3;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .item{
        width: 100%;
        height: 550px;
        max-width: 820px;
        background:#0077b6;
        border-radius: 20px;
        box-shadow: 0 0 20px 10px rgba(0, 0,0, .4);
        overflow: hidden;
        grid-template-columns: repeat(2,1fr);
        display: grid;
        z-index: 1000;
    }

    .contact{
        background: white;
    }

    .submit_form{
        background:#0077b6;
    }

    .contact_title{
        padding-left: 80px;
        padding-top: 20px;
        font-size: 35px;
        color: #0077b6;
        font-weight: 600;
    }

    .contact_image{
        height: 320px;
        width: 320px;

    }

    .social_media{
        display: flex;
        list-style: none;
    }

    ul li{
        padding-left: 15px;
        font-size: 24px;
        margin-top: 10px;
    }

    .social_media i{
        background: #0077b6;
        padding: 5px;
        border-radius: 5px;
        transition: .3s;
        color: white;
        

    }

    .social_media i:hover{
        background: white;
        color: #0077b6;
        
    }

    .social_media a{
        text-decoration: none;
    }

    .second-text{
        font-weight: 500;
        color:#0077b6;
        padding-left: 20px;

    }

    .third-text{
        font-size: 25px;
        position: relative;
        top: 20px;
        left: 20px;
        padding-top: 10px;
        color: white;
    }

    form{
        padding: 0 50px;
        height: 100%;
        width: 100%;
        overflow: hidden;
    }

    .input_box{
        height: 40px;
        width: 70%;
        margin: 30px 0;
        position: relative;
    }

    .input{
        width: 150%;
        height: 100%;
        background: transparent;
        border: 2px solid white;
        border-radius: 20px;
        outline: none;
        padding-left: 10px;
        color: white;
        font-size: 16px;
    }

    .input_box label{
        position: absolute;
        top: 50%;
        left: 10px;
        padding-left: 10px;
        transform: translateY(-50%);
        font-size: 15px;
        font-weight: white; 
        transition: .3s;
    }

    .input_box .input:focus ~ label,
    .input_box .input:valid ~ label{
        top: -1px;
        left: 10px;
        background: #0077b6;
        font-weight: 500;
        font-weight: 12px;
        padding: 5px;
    }

    textarea.input{
        resize: none;
        height: 150px;
        overflow: auto;
    }

    .btn{
        position: relative;
        top: 100px;
        background: white;
        outline: none;
        border: none;
        border-radius: 4px;
        width: 30%;
        height: 45px;
        font-size: 16px;
        color: #0077b6;
        cursor: pointer;
        font-weight: 500;

    }

    .btn :hover{
        background: #0077b6;
    }

    span{
        color: white;
          
    }
    
    #pay{
		height :5vh;
		width : 100%;
		margin-top: 3px;
		margin_bottom: -30px;
		margin-left : 0;
		margin-right: 0;
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
		margin-left : -5px;
		margin-right: 10px;
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
    


        /* About US Intro */
    </style>
</head>
<body>
    
    
<!-- header -->
<div class="banner">
          
        <img src="logo.png" class="logo" width="50px" height="50px" ></a>
           

        <div class="navbar">

           <ul>
                           
                <li><a href="userHome.jsp"><i class="fa fa-home"></i> Home</a></li>
                <li><a href="unitRate_User"><i class="fa-solid fa-calculator"></i>&nbsp;&nbsp;UnitRate</a></li>
                <li><a href="aboutus_User.jsp" class="current"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
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

     
     <!-- About Us Intro -->
     
     

    <div class="section">
        <div class="container">
            <div class="content-section">
                <div class="title">
                    <h1>About Us</h1>
                </div>

                <div class="content">
                    

                    <p id="description" style=" font-size: 100px;    color: white;"><div id="span1">Online Electricity Billing System </div>
                    <div id="para">
                    	helps in maintaining the bill and payments. 
                        There are four modules namely Registration, Login, 
                        Admin and Billing screen. This system helps in maintaining
                        the bills and the payments.
                    </div>
                    </p>

                    <div class="button">
                         <a href="#contact_us" >Contact Us</a>
                    </div>
                </div>
            </div>
        </div>

        <div>
                <img src="./Photo/About Us.png" alt="">
        
    </div>

    <br><br><br><br>

    <table class="tb">
        <tr>
            <td><img src="./Photo/aboutUs9.jpg" alt=""></td>
            <td class="box">
                <p>
                <b><div id="span1">Objective of the electricity billing system</div></b> <br><br>
                The primary objective of the Electricity Billing System is to keep track of invoices, customers, units, 
                connections, and consumption. It keeps track of all bills, readings, purchases, and payments.
                <br><br>


                This electricity bill management system project in java, the main goal of the project is to help 
                the power department by computerizing the billing system. It primarily focuses on calculating the 
                number of units utilized over a given period of time and the amount of money to be paid to electricity offices.
                
            </p>
            </td>
        </tr> 
        </table>

        <br><br><br>

       

        <table class="tb">
        <tr>
            <td class="box">
                <p>
                <b><div class="span1">Purpose of Electricity billing system</div></b><br><br>                
                Electricity bills are the most significant communication tool between customers and power providers. 
                Customers should receive fundamental information, as such as energy usage and unit cost, on their bills 
                to help them understand their power use and spending, as well as their change in electricity consumption.

                <br><br>
                Many people who are very busy would much rather deal with their bills electronically than with paper. 
                In other words, if a business has a wide range of electronic payment types, more satisfied and loyal 
                customers will be to the company they work for.
            </p>
            </td>
            <td><img src="./Photo/aboutUs8.jpg" class="image"></td>
        </tr>
        </table>
        <br><br><br>


        <table class="tb">
        <tr>
            <td>
                <img src="./Photo/aboutUs10.jpg" class="image">
            </td>

            <td class="box">
                <p class="pclass">
                <b><div class="span1">We have tried to make such type of software :</div></b><br><br>
                
                    It satisfy the user requirement <br><br>
                    Be easy to understand by the user and operator <br><br>
                    Be easy to operate <br><br>
                    Have a good user interface <br> <br>
                    Be expandable <br> <br>
                </p>       
            </td>
        </tr>
        </table>
        <br><br><br>

        
        <table class="tb">
        <tr>
            <td class="box">
                <p>
                    <b><div class="span1">There are two aspects of this application – Admin and Customer.</div></b> <br><br>
                    The admin can create a new customer with new meter information assigned to 
                    the customer, view all customer details, and calculate the bills of all the customers. 
                    The user can create his own account after the admin has created his meter information 
                    and once the account is created user can view his account information.
                </p>
            </td>

            <td><img src="./Photo/aboutUs11.jpg" alt="" class="image"></td>
        </tr>
        </table>
        <br><br><br>


        <table class="tb">
        <tr>
            <td><img src="./Photo/aboutUs17.jpg" alt="" class="image" style="margin-right: 100px;"></td>

            <td class="box">
                <p>
                The system excludes the need of maintaining paper electricity bill as all the electricity
                bill records are managed electronically.
                Administrator doesn’t have to keep a manual track of the users. The system automatically 
                calculates fine. The system excludes manual bill calculation.
                Users don’t have visit the office for bill payment.
                There is no need of delivery boy for delivering bills to users place.
                Thus, it saves human efforts and resources.
                </p>
            </td>
        </tr>
        </table>
        <br><br><br>


        <table class="tb">
        <tr>
            <td class="box">
                <p>
                Electricity is an energy that play a major role in human life. 
                In day to day life, each and every device from the minute machinery of 
                a wrist watch and to the enormous industrial robots, each and everything directly 
                or indirectly relies upon the electricity.

                <br><br>

                This system helps in maintaining the bill and payments. There are four modules namely 
                Registration, Login, Admin and Billing screen. This system helps in maintaining the bills 
                and the payments.
            </p>
            </td>

            <td><img src="./Photo/aboutUs18.jpg" alt="" class="image"></td>
        </tr>
    </table>
    
    <!-- About Us Intro -->

    <section class="team">
      <div id="team_title">Our Team</div>
      <section>
        <div class="row">
          <!-- Column 1-->
          <div class="column">
            <div class="card">
              <table class="pTable">
                <tr>
                  <td>
                    <div class="img-container">
                      <img src="./Photo/min.jpg" />
                    </div>
                  </td>
    
                  <td class="name">
                    <h1>Min Thiha Kyaw</h1>
                    <h2>KPTM-10225</h2> <br>
                    <h3>Leader</h3>
                  </td>
                </tr>
              </table>
            </div>
          </div>
    
            
            <!-- Column 2-->
            <div class="column">
              <div class="card">
                <table class="pTable">
    
                  <tr>
                    <td>
                <div class="img-container">
                  <img src="./Photo/ttrk.jpg" />
                </div>
              </td>
    
              <td class="name">
                <h1>ThinThiriKhaing</h1>
                <h2>KPTM-9787</h2> <br>
                <h3>Backend</h3>
              </td>
              </tr>
              </table>
              </div>
            </div>
    
    
            <!-- Column 3-->
            <div class="column">
              <div class="card">
                <table  class="pTable">
    
                  <tr>
                    <td>
                <div class="img-container">
                  <img src="./Photo/sym.jpg" />
                </div>
              </td>
    
              <td class="name">
                <h1>Su Yee Min</h1>
                <h2>KPTM-10325</h2> <br>
                <h3>Backend</h3>
              </td>
              </tr>
              </table>
              </div>
            </div>
    
      
        </section>
    
        
        <section>
          
            <div class="row">
      
              <!-- Column 4-->
              <div class="column">
              <div class="card">
                <table class="pTable">
    
                  <tr>
                    <td>
                <div class="img-container">
                  <img src="./Photo/peh.jpg" />
                </div>
              </td>
    
              <td class="name">
                <h1>Pann Ei Hlaing</h1>
                <h2>KPTM-9819</h2> <br>
                <h3>Frontend</h3>
              </td>
              </tr>
              </table>
              </div>
            </div>
    
      
              
              <!-- Column 5-->
              <div class="column">
              <div class="card">
                <table class="pTable">
    
                  <tr>
                    <td>
                <div class="img-container">
                  <img src="./Photo/aml.jpg" />
                </div>
              </td>
    
              <td class="name">
                <h1>Amy Lwin</h1>
                <h2>KPTM-9892</h2> <br>
                <h3>Frontend</h3>
              </td>
              </tr>
              </table>
              </div>
            </div>
    
      
              <!-- Column 6-->
              <div class="column">
              <div class="card">
                <table class="pTable">
    
                  <tr>
                    <td>
                <div class="img-container">
                  <img src="./Photo/czn.jpg" />
                </div>
              </td>
    
              <td class="name">
                <h1>Cho Zin Nwe</h1>
                <h2>KPTM-9927</h2> <br>
                <h3>Frontend</h3>
              </td>
              </tr>
              </table>
              </div>
            </div>
    
        
          </section>
    </section>
    <!-- Our Team -->

    <!-- Contact Us -->

    <section id="contact_us">
        <div class="contact_container">
            <div class="item">
                <div class="contact">
                    <div class="contact_title">Contact Us</div>
                    <img src="logo.png" alt="" class="contact_image">
    
                    <div class="social">
                            <span class="second-text">Contact with us:</span>
    
                            <ul class="social_media">
                                <li><a href="#"></a><i class="fa-brands fa-facebook"></i></li>
                                <li><a href="#"></a><i class="fa-brands fa-twitter"></i></li>
                                <li><a href="#"></a><i class="fa-brands fa-youtube"></i></li>
                                <li><a href="#"></a><i class="fa-brands fa-instagram"></i></li>
                            </ul>
                    </div>
                </div>
                <div class="submit_form">
                    <h4 class="third-text">Contact Us</h4>
    
                    <form action="/ElectricityBill_Project/userFeedback">
                        <div class="input_box">
                            <input type="text" class="input" name="name" required>
                            <label for=""><span>Name</span></label>
                        </div>
    
                        <div class="input_box">
                            <input type="email" class="input" name="email" required>
                            <label for=""><span>Email</span>
                            </label>
                        </div>
    
                        <div class="input_box">
                                <input type="phone" class="input" name="phone" required>
                                <label for=""><span>Phone</span></label>
                        </div>
    
                        <div class="input_box">
                                <textarea name="message" class="input" required id="message" cols="30" rows="10"></textarea>
                                <label for=""><span>Message</span></label>
                        </div>
    
                        <input type="submit" class="btn" value="Submit">
                    </form>
                    
                </div>            
            </div>
        </div>
    </section>

    
    <!-- Contact Us -->

</body>
</html>