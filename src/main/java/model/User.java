package model;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class User extends HttpServlet {
  private static final long serialVersionUID = 1L;

private int id;
private String name;
private String email;
private String phone_no;
private String meterbox_id;
private String address;
  
       
    
    public int getId() {
      return id;
    }
    public void setId(Integer id) {
      this.id = id;
    }
    
    public String getname() {
      return name;
    }
    public void setname(String name) {
      this.name = name;
    }
    
    public String getemail() {
      return email;
    }
    public void setemail(String email) {
      this.email = email;
    }

    public String getphone_no() {
      return phone_no;
    }
    public void setphone_no(String phone_no) {
      this.phone_no = phone_no;
    }

    public String getmeterbox_id() {
      return meterbox_id;
    }
    public void setmeterbox_id(String meterbox_id) {
      this.meterbox_id =meterbox_id;
    }

    public String getaddress() {
      return address;
    }
    public void setaddress(String address) {
      this.address =address;
    }
}