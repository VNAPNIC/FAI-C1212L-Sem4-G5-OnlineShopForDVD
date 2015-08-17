/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import common.Ms;
import entities.Login;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hainam1421
 */
public class LoginModel extends DataAccessHelper{
    Connection con;
    private static final String CHECK_LOGIN = "select * from [Login] where [user] =? and [password]=? and ru_id =? and [status] =? and active =?";
    private static final String GET_PROFILE = "select * from [Login]";
    private static final String REGISTER = "insert into [Login] values (?,?,?,?,?)";
    private static final String GET_TOP_1 = "SELECT TOP(1) PERCENT * FROM  [Login] ORDER  by ru_id DESC";
    
    public String[] checkLogin(String user,String pass,int rela,boolean status,boolean active)
    {
      String[] ms = new String[2];
        try {
            con = getConnection();
            if(con!=null)
            {
                PreparedStatement ps = con.prepareStatement(CHECK_LOGIN);
                ps.setString(1, user);
                ps.setString(2, pass);
                ps.setInt(3, rela);
                ps.setBoolean(4,status);
                ps.setBoolean(5, active);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                    ms[0] = Ms.LOGIN_SUCCESS;
                    ms[1] = rs.getBoolean("[status]")  ? Ms.LOGIN_STATUS:"";
                    ms[2] = rs.getBoolean("active") ? Ms.LOGIN_ACTIVE:"";
                }else{
                    ms[0] = Ms.LOGIN_FAIL;
                }
            }
            getClose();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ms;
    }
    
    public boolean Register(Login l){
        boolean check = false;
        try {
            con = getConnection();
            if(con!=null)
            {
                PreparedStatement ps = con.prepareStatement(REGISTER);
                ps.setString(1, l.getUser());
                ps.setString(2, l.getPass());
                ps.setBoolean(3,l.isStatus());
                ps.setInt(4,l.getRu_id());
                ps.setBoolean(5,l.isActive());
                int rs = ps.executeUpdate();
                if(rs >0){
                    check = true;
                }
            }
            getClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public List<Login> getProfile(){
        List<Login> objs = new ArrayList<>();
        UserDetailModel detailModel = new UserDetailModel();
        try {
            con = getConnection();
            if(con!=null)
            {
                PreparedStatement ps = con.prepareStatement(GET_PROFILE);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {                    
                   Login item = new Login();
                   item.setUser(rs.getString("[user]"));
                   item.setStatus(rs.getBoolean("[status]"));
                   item.setActive(rs.getBoolean("active"));
                   item.setUserDetails(detailModel.getProfile(rs.getString("[user]")));
                   objs.add(item);
                }
            }
            getClose();
        } catch (Exception e) {
        }
       return objs;
    }
    
    
}
