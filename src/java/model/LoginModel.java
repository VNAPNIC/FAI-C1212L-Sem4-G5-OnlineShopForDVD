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
public class LoginModel extends DataAccessHelper {

    Connection con;
    private static final String CHECK_LOGIN = "select * from [Login] where [user] =? and [password]=? and ru_id =?";
    private static final String GET_USER_LOGIN = "select * from [Login] where [user] =?";
    private static final String GET_PROFILE = "select * from [Login]";
    private static final String REGISTER = "insert into [Login] values (?,?,?,?,?)";
    private static final String GET_TOP_1 = "SELECT TOP(1) PERCENT * FROM  [Login] ORDER  by number DESC";

    public Login checkLogin(String user, String pass, int rela) {
        Login l = new Login();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(CHECK_LOGIN);
                ps.setString(1, user);
                ps.setString(2, pass);
                ps.setInt(3, rela);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    l.setUser(rs.getString("user"));
                    l.setStatus(rs.getBoolean("status"));
                    l.setActive(rs.getBoolean("active"));
                } else {
                   l.setUser("");
                }
            }
            getClose();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return l;
    }
    
    
    public boolean getUser(String u){
        boolean check = false;
        try {
            con = getConnection();
            if(con !=null){
                PreparedStatement ps = con.prepareStatement(GET_USER_LOGIN);
                ps.setString(1, u);
                ResultSet  rs = ps.executeQuery();
                if(rs.next()){
                    check = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }
    
    public String getTop1(){
        String top = "";
        try {
            con = getConnection();
            if(con !=null){
                PreparedStatement ps = con.prepareStatement(GET_TOP_1);
                ResultSet  rs = ps.executeQuery();
                if(rs.next()){
                    top = rs.getString("user");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return top;
    }

    public boolean Register(String u,String p) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(REGISTER);
                ps.setString(1, u);
                ps.setString(2, p);
                ps.setBoolean(3, false);
                ps.setInt(4, 3);
                ps.setBoolean(5, true);
                int rs = ps.executeUpdate();
                if (rs > 0) {
                    check = true;
                }
            }
            getClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return check;
    }

    public List<Login> getProfile() {
        List<Login> objs = new ArrayList<>();
        UserDetailModel detailModel = new UserDetailModel();
        try {
            con = getConnection();
            if (con != null) {
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
