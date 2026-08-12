<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fail</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>

    @import url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Dancing+Script&family=Lobster&family=Noto+Serif+Myanmar:wght@300;900&family=Pacifico&display=swap');
        *{
            margin-top: 1.1%;
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
            margin-top : 3%;
            margin-left: 37%;
            width: 20%;
            height: 400px;
            padding: 60px;
            color:#0A6EBD;     
            border-radius : 25px;
            background: transparent;
            border: 2px solid rgba(219, 219, 245, 0.2);
            backdrop-filter: blur(5px);
            box-shadow: 0 0 10px rgba(0,0,0,0.2);
            border-radius: 10px;
        }
    
        
        #error{
            color: red;
        }
        
        #register{
            width: 100%;
            height: 93%;
           
        }
        
        tr{
                height:50%;
                
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
                        width: 50%;
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
                    }
               i{
                       font-size : 15vh;
                       background-color: red;
                       border : 40px solid red;
                       border-radius : 50%;
                       color : white;
                       text-align : center;
               }
               
               #button{
            
                       margin-top:20px;
                       padding-top : 5vh;
                       padding-bottom : 0;
               }
               
             
    </style>
</head>
<body>
	
		<form action="/ElectricityBill_Project/LoginForm.jsp" method="post" >

        <div id="form">
            
           <table id="register">
           
           		<tr>
           			<td><i class="fa-solid fa-triangle-exclamation"></td>
           		</tr>
           		
           		<tr>
           			<td id="error"><h2>Login Fail!</h2>
           			<br>
           				Your name and your meter box ID does not match!
           			</td>
           		</tr>
              
                 <tr>
                    <td  align="center" id="button"><input type="submit" value="Try Again"  id="btn"></td>
				 </tr>  
            </table>
        </div>
        	
	</form>
	
</body>
</html>