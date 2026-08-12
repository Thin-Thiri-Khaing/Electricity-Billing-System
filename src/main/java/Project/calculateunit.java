package Project;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.daoconnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.Session;
import com.mysql.cj.xdevapi.Result;


public class calculateunit extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
  int punit =0;
  String pmeter = "";
  int unitlist1[] = new int[8];
  int total=0;
  RequestDispatcher rd = null;
  int unit1to30=0, unit31to50 = 0 , unit51to75=0 ,
  unit76to100=0 ,unit101to150=0 ,unit151to200=0 , unit201andover =0;
  
  int unit1to30cost = 0, unit31to50cost = 0 , unit51to75cost=0 ,
      unit76to100cost=0 ,unit101to150cost=0 ,unit151to200cost=0 , unit201andovercost =0;
  int unitcost[] = {unit1to30cost ,unit31to50cost ,unit51to75cost ,unit76to100cost ,unit101to150cost,
      unit151to200cost,unit201andovercost
  };
  
  public void getunit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    request.setAttribute("unit", punit);
    request.setAttribute("meter", pmeter);
    request.setAttribute("unit1to30", unit1to30);
    request.setAttribute("unit31to50", unit31to50);
    request.setAttribute("unit51to75", unit51to75);
    request.setAttribute("unit76to100", unit76to100);
    request.setAttribute("unit101to150", unit101to150);
    request.setAttribute("unit151to200", unit151to200);
    request.setAttribute("unit201andover", unit201andover);
    request.setAttribute("total", total);
    
    
    request.setAttribute("unit1to30cost", unitcost[0]);
    request.setAttribute("unit31to50cost",  unitcost[1]);
    request.setAttribute("unit51to75cost",  unitcost[2]);
    request.setAttribute("unit76to100cost", unitcost[3]);
    request.setAttribute("unit101to150cost",  unitcost[4]);
    request.setAttribute("unit151to200cost",  unitcost[5]);
    request.setAttribute("unit201andovercost",  unitcost[6]);
    
    
    rd = request.getRequestDispatcher("/unittableexpression.jsp");
    
      rd.forward(request, response);
  }
  
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    
    try {
       Class.forName("com.mysql.cj.jdbc.Driver"); 
       Connection c = daoconnection.openConnection();
       String s ="select * from unitchange";
      Statement st = c.prepareStatement(s);
      ResultSet rs = st.executeQuery(s);
      int i=0;
      while (rs.next()) {
        unitcost[i] = rs.getInt("cost");
        //System.out.println(unitcost[i]);
        i++;
        
      }
      
      
      
    } catch (Exception e) {
      // TODO: handle exception
    }
    
    
    
    int unitun =Integer.parseInt( request.getParameter("unit"));
    String meterId = request.getParameter("meter");
    
    pmeter = meterId;
    
    
    
    if(unitun >200) {
      
             
             
              unit1to30 = 30 * unitcost[0] ;
             

             
              unit31to50 = 20* unitcost[1];
              
              
              
              unit51to75 = 25* unitcost[2];
              
              
              
              unit76to100 = 25* unitcost[3];
              
              
              
              unit101to150 = 50 *unitcost[4];
              
              
              
              unit151to200 = 50* unitcost[5];
             
              
            
              unit201andover =  (unitun - 200) * unitcost[6];
              total =  unit1to30+unit31to50 +unit51to75 +unit76to100 +unit101to150 +unit151to200 +unit201andover;
             
         punit= unitun;
         pmeter = meterId;
              getunit(request, response);
            
    }
    
    else if(unitun>= 151 && unitun <=200) {
          unit1to30 = 30 * unitcost[0] ;
             

             
              unit31to50  = 20* unitcost[1];
             

            
              unit51to75 = 25* unitcost[2];
            
              
             
              unit76to100 = 25* unitcost[3];
              
              
              
              unit101to150= 50 *unitcost[4];
              
              
              
              unit151to200 = (unitun-150) * unitcost[5] ;
             
              
            
            
             
               total =  unit1to30+unit31to50 +unit51to75 +unit76to100 +unit101to150 +unit151to200 ;
               
              punit= unitun;
              getunit(request, response);
              
    }
    
    else if(unitun >= 101 && unitun <=150) {
         unit1to30 = 30 *unitcost[0];
             

             
              unit31to50  = 20* unitcost[1];
             

            
              unit51to75 = 25* unitcost[2];
            
              
             
              unit76to100 = 25* unitcost[3];
              
              
              
              unit101to150 = (unitun-100) *unitcost[4];
              punit= unitun;
              total =  unit1to30+unit31to50 +unit51to75 +unit76to100 +unit101to150 ;
            
              
              getunit(request, response);
      
    }
    else if(unitun >= 76 && unitun <=100) {
       unit1to30 = 30 * unitcost[0] ;
             

             
              unit31to50  = 20* unitcost[1];
             

            
              unit51to75 = 25* unitcost[2];
            
              
             
              unit76to100 = (unitun-75)* unitcost[3];
              total =  unit1to30+unit31to50 +unit51to75 +unit76to100  ;
            
                 
              
              punit= unitun;
              getunit(request, response);
      
      
    }
    else if(unitun >= 51 && unitun <= 75){
       
       unit1to30 = 30 * unitcost[0];
             

             
              unit31to50  = 20* unitcost[1];
             

            
              unit51to75 = (unitun -50)* unitcost[2];
              total =  unit1to30+unit31to50 +unit51to75  ;
            
               
              punit= unitun;
              getunit(request, response);
              
     }
    
    else if(unitun >= 31 && unitun <= 50){
       unit1to30 = 30 * unitcost[0] ;

             
              unit31to50  = (unitun-30) * unitcost[1];
       
              total =  unit1to30+unit31to50  ;
            
               
              punit= unitun;
              getunit(request, response);
     }
    else if(unitun >= 0 && unitun <= 30) {
       unit1to30 = unitun * unitcost[0] ;
       total =unit1to30;
       punit= unitun;
        getunit(request, response);
     }
    else {
       punit= unitun;
       getunit(request, response);
    }
    
    //System.out.println("total cost: "+ total);
    
    
  }
  
  

}