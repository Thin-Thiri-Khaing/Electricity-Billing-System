<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

    <style>
    
    *{margin:0;
   	 padding: 0;

    	box-sizing: border-box;
     font-family: 'Cambria';
}
.title{
            text-transform: uppercase;
            color:white;
            font-size: 30px;
            top: 30%;
            /* text-shadow: 1px 1px 1px #6a98e7,
            1px 1px 1px #6a98e7,
            1px 2px 1px #6a98e7,
            1px 3px 1px #6a98e7,
            1px 4px 1px #6a98e7,
            1px 5px 1px #6a98e7,
            1px 20px 40px rgba(5, 60, 92, 0.685); */
            position: absolute;
            top: 50%;
            left: 8%;   
            transform: translateY(-50%);
            z-index: z;            
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


.navbar{
   width: 90%;
    margin: auto;
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-left: 770px;
    
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
    min-width: 150px;
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

  
/* Image_Animated */


.image{
    float: right;
    width: 50%;
    margin-right: 10px;
    padding-top: 50px;
    padding-right: 100px;   
   
}

.image img{
    width: 100%;
    height: auto;

}
   
#hero .animated {
  animation: up-down 2s ease-in-out infinite alternate-reverse both;
}

@media (max-width: 991px) {
  #hero {
    height: 100vh;
    text-align: center;
  }

  #hero .animated {
    animation: none;
  }
}

#hero {
  width: 100%;
  height: 100vh;
  background:#0077b6;
}


@media (max-width: 575px) {
  #hero .hero-img img {
    width: 80%;
  }

  #hero .btn-get-started {
    font-size: 16px;
    padding: 10px 24px 11px 24px;
  }
}

@keyframes up-down {
  0% {
    transform: translateY(10px);
  }

  100% {
    transform: translateY(-10px);
  }
}
/* Image_Animated */


/*--------------------------------------------------------------
# Team
--------------------------------------------------------------*/
.team .member {
  position: relative;
  box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
  padding: 30px;
  border-radius: 5px;
  background: #fff;
  transition: 0.5s;
  height: 100%;
}

.team .member .pic {
  overflow: hidden;
  width: 180px;
  border-radius: 50%;
}

.team .member .pic img {
  transition: ease-in-out 0.3s;
}

.team .member:hover {
  transform: translateY(-10px);
}

.team .member .member-info {
  padding-left: 30px;
}

.team .member h4 {
  font-weight: 700;
  margin-bottom: 5px;
  font-size: 20px;
  color: #37517e;
}

.team .member span {
  display: block;
  font-size: 15px;
  padding-bottom: 10px;
  position: relative;
  font-weight: 500;
}

.team .member span::after {
  content: "";
  position: absolute;
  display: block;
  width: 50px;
  height: 1px;
  background: #cbd6e9;
  bottom: 0;
  left: 0;
}

.team .member p {
  margin: 10px 0 0 0;
  font-size: 14px;
}

.team .member .social {
  margin-top: 12px;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}

.team .member .social a {
  transition: ease-in-out 0.3s;
  display: flex;
  align-items: center;
  justify-content: center;
  border-radius: 50px;
  width: 32px;
  height: 32px;
  background: #eff2f8;
}

.team .member .social a i {
  color: #37517e;
  font-size: 16px;
  margin: 0 2px;
}

.team .member .social a:hover {
  background: #47b2e4;
}

.team .member .social a:hover i {
  color: #fff;
}

.team .member .social a+a {
  margin-left: 8px;
}

.getStart{
	margin : 10vh 0;
	width : 30vh;
	height : 8vh;
	font-size : 20px;
	border : none;
	color : #0077b6;
	font-weight : 800;
	transition : 0.3s;
}

.getStart:hover{
	background-color:lightgray;
	transition : 0.3s;
}
    </style>
    <title>Electricity Billing System</title>
</head>
<body>

<!-- header -->
    <div class="banner">
          
        <img src="logo.png" class="logo" width="50px" height="50px" ></a>&nbsp;
           

       <div class="navbar">

           <ul>
                           
               <li><a href="MainHome.jsp" class="current"><i class="fa fa-home" 
               ></i> Home</a></li>
                
                <li><a href="aboutus.jsp"><i class="fa-regular fa-address-card"></i>&nbsp;&nbsp; About Us</a></li>
                
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

     <div id="div">
     
        <div id="hero">
            <div class="title">
                <h1>Electricity <br> Billing System</h1>
               	<a href="RegisterForm.jsp"> <button class="getStart">Get Started</button></a>
            </div>

            <div class="image" class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="zoom-in" data-aos-delay="200">
              <img src="./Photo/Home.png" class="img-fluid animated" alt="">
            </div>
          </div>
      </div>
      
       
</body>
</html>