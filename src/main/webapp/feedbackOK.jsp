
<html>
<head>
<meta charset="ISO-8859-1">
<title>PaymentOK</title>
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

        .btn{

            padding: 10px 60px;
            background-color: #0077b6;
            color : #E7ceb6;
            border: 0;
            outline : none;
            cursor: pointer;
            font-size: 20px;
            font-weight: 500;
            border-radius: 10px;
            transition: transform 0.2s;
        }

        .btn:active{
            transform: scale(0.95);
        }
        .popUp{
            width: 400px;
            height : 50vh;
            border-radius: 6px;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) ;
            text-align: center;
            padding: 0px 30px 60px;
            color: #333;
            border-radius : 25px;
	        background: transparent;
	        border: 2px solid rgba(219, 219, 245, 0.2);
	        backdrop-filter: blur(5px);
	        box-shadow: 0 0 10px rgba(0,0,0,0.2);
	        border-radius: 10px;
           
        }

        .open-popup{
            visibility: visible;
            top: 50%;
            transform: translate(-50% , -50%) scale(1);
            transition: 0.5s;
        }

        .popUp img{

            width: 100px;
            height: 100px;
            margin-top: -50px;
            border-radius: 50%;
            box-shadow: 0 2px 5px rgba(0,0,0,0.2);

        }

        .popUp h2{
            font-size: 38px;
            
        }
		
		.popUp .thankHeader{
			border-bottom : 2px double #0077b6;
			margin :-7vh 0 5vh 0;
			padding : 5vh;
			
		}
        .popUp button{
           width: 20%;
                    height: 40px;
                    color: white;
                    background-color: #0077b6;
                    border: none;
                    
                    padding: 5px 5px;
                    margin-top: 0;
              
                    border-radius: 20px;
                    font-size: 20px;
                	transition : .5s;
                	
        }

        .popUp button:hover{

            transform: scale(1.1 , 1.1);
            transition: 0.5s;
        }
    </style>
</style>
</head>
<body>
	
       <div id="popUp" class="popUp">
                            <img src="./Photo/heart.jpg" alt="">
                            <h2>Thank You!</h2>
                            <p class="thankHeader">Your message have been sent.</p>
                            <p class="thankBody">We value your opinion and we would love to keep delivering interesting and useful information in your inbox.</p>
                            
                           <a href="userHome.jsp"> <button type="button" onclick="closePopup()">OK</button></a>
                        </div>
</body>
</html>