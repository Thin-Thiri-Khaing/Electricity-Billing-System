package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.http.HttpServlet;

import model.User;
import model.unittablechange;

import util.daoconnection;

public class userdao extends HttpServlet {
  private static final long serialVersionUID = 1L;

   static Connection connection = null;
  static ResultSet resultSet = null;
  static Statement statement = null;
  static PreparedStatement preparedStatement = null;
  
  public static List<User> get() {
    List<User> users = null;
    User user = null;
    try {
        users = new ArrayList<User>();
        String sql = "SELECT * FROM users";
        connection = daoconnection.openConnection();
      
      statement = connection.createStatement();
      resultSet = statement.executeQuery(sql);
        while(resultSet.next()) {
      user = new User();
      user.setId(resultSet.getInt("id"));
      user.setname(resultSet.getString("name"));
      user.setaddress(resultSet.getString("address"));
      user.setphone_no(resultSet.getString("phone_no"));
      user.setemail(resultSet.getString("email"));
      user.setmeterbox_id(resultSet.getString("meterbox_id"));
      
      users.add(user);
              }
       }catch(SQLException e) {
       e.printStackTrace();
    }
    return users;
    }
  
  public static List<unittablechange> get1() {
    List<unittablechange> users = null;
    unittablechange user = null;
    try {
        users = new ArrayList<unittablechange>();
        String sql = "SELECT * FROM unitchange";
        connection = daoconnection.openConnection();
        statement = connection.createStatement();
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()) {
      user = new unittablechange();
      user.setId(resultSet.getInt("id"));
      user.setunit(resultSet.getString("unit"));
      user.setcost(resultSet.getInt("cost"));
      
      
      users.add(user);
              }
       }catch(SQLException e) {
       e.printStackTrace();
    }
    return users;
    }
  
  
public boolean delete(int id) {
     boolean flag = false;
     try {
     String sql = "DELETE FROM users where id="+id;
      connection = daoconnection.openConnection();
    preparedStatement = connection.prepareStatement(sql);
    int rowDeleted = preparedStatement.executeUpdate();
    if(rowDeleted>0) flag = true;
    }catch(SQLException e) {
    e.printStackTrace();
    }
     return flag;
  }


public static unittablechange get(int id) {
     unittablechange user = null;
     try {
    user = new unittablechange();
    String sql = "SELECT * FROM unitchange where id="+id;
    connection = daoconnection.openConnection();
    statement = connection.createStatement();
    resultSet = statement.executeQuery(sql);
    if(resultSet.next()) {
      user.setId(resultSet.getInt("id"));
      user.setunit(resultSet.getString("unit"));
      user.setcost(resultSet.getInt("cost"));
      
      }
    }catch(SQLException e) {
    e.printStackTrace();
        }
      return user;
  }

public static boolean update(unittablechange u) {
     boolean flag = false;
     try {
    String sql = "UPDATE unitchange SET  cost= ? where id = ?";
    connection = daoconnection.openConnection();
    preparedStatement = connection.prepareStatement(sql);
    //preparedStatement.setString(1, u.getunit());
    preparedStatement.setInt(1, u.getcost());
    
    
    preparedStatement.setInt(2, u.getId());
    int rowUpdated = preparedStatement.executeUpdate();
    if (rowUpdated>0) flag = true;
    }catch(SQLException e) {
    e.printStackTrace();
    }
    return flag;
     }


}