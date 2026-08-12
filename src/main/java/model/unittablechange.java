package model;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class unittablechange
 */
public class unittablechange extends HttpServlet {
  private static final long serialVersionUID = 1L;
       
  int id;
  String unit;
  int cost;
  
   public int getId() {
        return id;
      }
   public void setId(Integer id) {
        this.id = id;
   }
   
   public String getunit() {
     return unit;
   }
   
   public void setunit(String unit) {
     this.unit = unit;
   }
   
   public int getcost() {
     return cost;
   }
   public void setcost(int cost) {
     this.cost = cost;
     
   }
  

}