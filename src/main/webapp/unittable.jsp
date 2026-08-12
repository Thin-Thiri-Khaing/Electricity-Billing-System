<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
	#unitover200,#unitlower200,#unit101to150,#unit76to100,#unit51to75,#unit31to50,#unit1to30,#unit1to30{
	display: none;
	}
	#tablem{
	margin-left:auto;
	margin-right: auto;
	width: 95%;
	height: 600%;
	background-color: lightyellow;
	
	}
	
	#showtables  {
		margin-left:auto;
		
	margin-right: auto;
	width: 95%;
	height: 600%;
	}
	
	td{
		font-weight:500px;
		font-size: 30px;
	}
	div , input,a{
	text-align: center;
	font-size: 30px;
	}
	
</style>
</head>
<body>
	
	<div>
		Total Unit :<c:out value="${unit}"></c:out>
		<input type="submit" onclick="go()" id="sub">
	
	
	</div>


     <table id="tablem" border="2px" style="visibility: visible;" >

        <tr>
            <td >Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td ></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td ></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td>25 x 70</td>
            <td ></td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>90</td>
            <td>25 x 90</td>
            <td ></td>
        </tr>

        <tr>
            <td>101 to 150</td>
            <td>110</td>
            <td>50 x 100</td>
            <td ></td>
        </tr>

        <tr>
            <td>151 to 200</td>
            <td>120</td>
            <td>50 x 120</td>
            <td ></td>
        </tr>

        <tr>
            <td>200 over</td>
            <td>125</td>
            <td > </td>
            <td ></td>
        </tr>

        <tr>
            <td colspan="3">Total</td>
            <td ></td>
        </tr>
    </table>

    
    
    <div> <table id="showtables" border="1px" sytle="width:200px;height:200px;"></table></div>

    <table id="unitover200" border="2px" style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td id="secondun"></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td>25 x 70</td>
            <td id="thirdun"></td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>90</td>
            <td>25 x 90</td>
            <td id="fourun"></td>
        </tr>

        <tr>
            <td>101 to 150</td>
            <td>110</td>
            <td>50 x 100</td>
            <td id="fiveun"></td>
        </tr>

        <tr>
            <td>151 to 200</td>
            <td>120</td>
            <td>50 x 120</td>
            <td id="sixun"></td>
        </tr>

        <tr>
            <td>200 over</td>
            <td>125</td>
            <td id="t"> </td>
            <td id="sevenun"></td>
        </tr>

        <tr>
            <td colspan="3">Total</td>
            <td id="total"></td>
        </tr>
    </table>

    
    <!-- table2 -->
    <table id="unitlower200" border="2px"  style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun1"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td id="secondun1"></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td>25 x 70</td>
            <td id="thirdun1"></td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>90</td>
            <td>25 x 90</td>
            <td id="fourun1"></td>
        </tr>

        <tr>
            <td>101 to 150</td>
            <td>110</td>
            <td>50 x 100</td>
            <td id="fiveun1"></td>
        </tr>

        <tr>
            <td>151 to 200</td>
            <td>120</td>
            <td id="t1"></td>
            <td id="sixun1"></td>
        </tr>

        <!-- <tr>
            <td>200 over</td>
            <td>125</td>
            <td id="t"> </td>
            <td id="sevenun"></td>
        </tr> -->

        <tr>
            <td colspan="3">Total</td>
            <td id="total1"></td>
        </tr>
    </table>


    <!-- table3 -->
    <table id="unit101to150" border="2px"  style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun2"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td id="secondun2"></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td>25 x 70</td>
            <td id="thirdun2"></td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>90</td>
            <td>25 x 90</td>
            <td id="fourun2"></td>
        </tr>

        <tr>
            <td>101 to 150</td>
            <td>110</td>
            <td id="t2"></td>
            <td id="fiveun2"></td>
        </tr>

    

        <tr>
            <td colspan="3">Total</td>
            <td id="total2"></td>
        </tr>
    </table>

    <!-- table 4 -->

    
    <table id="unit76to100" border="2px"  style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun3"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td id="secondun3"></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td>25 x 70</td>
            <td id="thirdun3"></td>
        </tr>

        <tr>
            <td>76 to 100</td>
            <td>90</td>
            <td id="t3"></td>
            <td id="fourun3"></td>
        </tr>

      
        <tr>
            <td colspan="3">Total</td>
            <td id="total3"></td>
        </tr>
    </table>

    <!-- table 5 -->

    <table id="unit51to75" border="2px"  style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun4"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td>20 x 50</td>
            <td id="secondun4"></td>
        </tr>

        <tr>
            <td>51 to 75</td>
            <td>70</td>
            <td id="t4"></td>
            <td id="thirdun4"></td>
        </tr>

        

      
        <tr>
            <td colspan="3">Total</td>
            <td id="total4"></td>
        </tr>
    </table>


    <!-- table6 -->
    <table id="unit31to50" border="2px"  style="visibility: hidden;" >

        <tr>
            <td>Unit Layer</td>
            <td>MMKS</td>
            <td>Calculate Per Layer</td>
            <td>Sub Total Per Layer</td>
        </tr>

        <tr>
            <td>1 to 30</td>
            <td>35</td>
            <td>30 x 35</td>
            <td id="firstun5"></td>
        </tr>

        <tr>
            <td>31 to 50</td>
            <td>50</td>
            <td id="t5"></td>
            <td id="secondun5"></td>
        </tr>

        

        

      
        <tr>
            <td colspan="3">Total</td>
            <td id="total5"></td>
        </tr>
    </table>


 <!-- table 7 -->

 <table id="unit1to30" border="2px"  style="visibility: hidden;" >

    <tr>
        <td>Unit Layer</td>
        <td>MMKS</td>
        <td>Calculate Per Layer</td>
        <td>Sub Total Per Layer</td>
    </tr>

    <tr>
        <td>1 to 30</td>
        <td>35</td>
        <td id="t6"></td>
        <td id="firstun6"></td>
    </tr>

   

    

    

  
    <tr>
        <td colspan="3">Total</td>
        <td id="total6"></td>
    </tr>
</table>

<a style="text-align:center;" href="${pageContext.request.contextPath}/unit-from.jsp">Again</a>

<script>
    var sub = document.getElementById("sub");
    sub.onclick = function(){

    
    	var table = document.getElementById("tablem");
        table.style.visibility ="hidden";
        table.style.display ="none";
        var unit = ${unit};
       // var unit = document.getElementById("unit").value;
        if(unit >=200){
            var table1 = document.getElementById("unitover200");
           // table1.style.visibility = "visible";

            //calculation unit over200
            var firstnum = document.getElementById("firstun");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun");
            var b = 20* 50;
            secondnum.innerHTML = b +" MMKs"; 

            var thirdnum = document.getElementById("thirdun");
            var c = 25* 70;
            thirdnum.innerHTML = c +" MMKs"; 
            
            var fournum = document.getElementById("fourun");
            var d = 25* 90;
            fournum.innerHTML = d +" MMKs"; 
            
            var fivenum = document.getElementById("fiveun");
            var e = 50 *110;
            fivenum.innerHTML = e +" MMKs"; 
            
            var sixnum = document.getElementById("sixun");
            var f = 50* 120;
            sixnum.innerHTML = f +" MMKs"; 
            
            var sevennum = document.getElementById("sevenun");
            var g =  (unit - 200) * 125;
            sevennum.innerHTML = g +" MMKs"; 
            
            var total = document.getElementById("total");
            total.innerHTML = a + b +c +d + e+f+g +" MMKs";

            document.getElementById("t").innerHTML =(unit-200) +" x 125";
            document.getElementById("showtables").innerHTML =table1.innerHTML;
            // while(table1.length >0){
            //     document.getElementById("showtables").append(tables[0]);
            // }
        }

        if(unit>= 151 && unit <=200){
            var table2 = document.getElementById("unitlower200");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun1");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun1");
            var b = 20* 50;
            secondnum.innerHTML = b +" MMKs"; 

            var thirdnum = document.getElementById("thirdun1");
            var c = 25* 70;
            thirdnum.innerHTML = c +" MMKs"; 
            
            var fournum = document.getElementById("fourun1");
            var d = 25* 90;
            fournum.innerHTML = d +" MMKs"; 
            
            var fivenum = document.getElementById("fiveun1");
            var e = 50 *110;
            fivenum.innerHTML = e +" MMKs"; 
            
            var sixnum = document.getElementById("sixun1");
            var f = (unit-150) * 120 -10;
            sixnum.innerHTML = f +" MMKs"; 
            
            document.getElementById("t1").innerHTML =(unit-150)+" x 120";

            
            var total1 = document.getElementById("total1");
            total1.innerHTML = a + b +c +d + e+f +" MMKs";

            document.getElementById("showtables").innerHTML =table2.innerHTML;

        }
        if(unit >= 101 && unit <=150){
            
            var table3 = document.getElementById("unit101to150");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun2");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun2");
            var b = 20* 50;
            secondnum.innerHTML = b +" MMKs"; 

            var thirdnum = document.getElementById("thirdun2");
            var c = 25* 70;
            thirdnum.innerHTML = c +" MMKs"; 
            
            var fournum = document.getElementById("fourun2");
            var d = 25* 90;
            fournum.innerHTML = d +" MMKs"; 
            
            var fivenum = document.getElementById("fiveun2");
            var e = (unit-100) *110;
            fivenum.innerHTML = e +" MMKs"; 
        
            document.getElementById("t2").innerHTML =(unit-100)+" x 50";

            
            
            var total1 = document.getElementById("total2");
            total1.innerHTML = a + b +c +d + e +" MMKs";

            document.getElementById("showtables").innerHTML =table3.innerHTML;
        }

        if(unit >= 76 && unit <=100){
            var table4 = document.getElementById("unit76to100");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun3");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun3");
            var b = 20* 50;
            secondnum.innerHTML = b +" MMKs"; 

            var thirdnum = document.getElementById("thirdun3");
            var c = 25* 70;
            thirdnum.innerHTML = c +" MMKs"; 
            
            var fournum = document.getElementById("fourun3");
            var d = (unit-75)* 90;
            fournum.innerHTML = d +" MMKs"; 
            
            document.getElementById("t3").innerHTML =(unit-75)+" x 50";

            
            var total1 = document.getElementById("total3");
            total1.innerHTML = a + b +c +d +" MMKs";

            document.getElementById("showtables").innerHTML =table4.innerHTML;
        }

        if(unit >= 51 && unit <= 75){
            

            var table5 = document.getElementById("unit51to75");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun4");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun4");
            var b = 20* 50;
            secondnum.innerHTML = b +" MMKs"; 

            var thirdnum = document.getElementById("thirdun4");
            var c = (unit -50)* 70;
            thirdnum.innerHTML = c +" MMKs"; 
            
            document.getElementById("t4").innerHTML =(unit-50)+" x 50";

        
            
            var total1 = document.getElementById("total4");
            total1.innerHTML = a + b +c  +" MMKs";

            document.getElementById("showtables").innerHTML =table5.innerHTML;

        }


        if(unit >= 31 && unit <= 50){
            

            var table6 = document.getElementById("unit31to50");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun5");
            var a = 30 * 35 ;
            firstnum.innerHTML = a +" MMKs";

            var secondnum = document.getElementById("secondun5");
            var b = (unit-30) * 50;
            secondnum.innerHTML = b +" MMKs"; 
            
            
            var total1 = document.getElementById("total5");
            total1.innerHTML = a + b   +" MMKs";

            document.getElementById("t5").innerHTML =(unit-30)+" x 50";


            document.getElementById("showtables").innerHTML =table6.innerHTML;

        }

        if(unit >= 1 && unit <= 30){
            

            var table7 = document.getElementById("unit1to30");
           // table1.style.visibility = "visible";

            //calculation unit lower200
            var firstnum = document.getElementById("firstun6");
            var a = unit * 35 ;

            firstnum.innerHTML = a +" MMKs";

            // var secondnum = document.getElementById("secondun5");
            // var b = 20* 50;
            // secondnum.innerHTML = b +" MMKs"; 
            document.getElementById("t6").innerHTML =unit +" x 35";
            
            var total1 = document.getElementById("total6");
            total1.innerHTML = a   +" MMKs" ;

            document.getElementById("showtables").innerHTML =table7.innerHTML;

        }
    }





</script>



</body>
</html>