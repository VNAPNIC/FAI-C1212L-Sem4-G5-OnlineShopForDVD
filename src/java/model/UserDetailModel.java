/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.UserDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hainam1421
 */
public class UserDetailModel extends DataAccessHelper{
    Connection con;
    private static final String GET_PROFILE =  "select * from UserDetail where [user]=?";
    private static final String REGISTER = "insert into UserDetail values (?,?,?,?,?,?,?)";
    
    protected UserDetail getProfile(String user)
    {
        UserDetail item = new UserDetail();
         MonneyOfUserModel moum = new MonneyOfUserModel();
        try {
            con = getConnection();
            if(con!=null){
                PreparedStatement ps = con.prepareStatement(GET_PROFILE);
                ps.setString(1, user);
                ResultSet rs = ps.executeQuery();
                if(rs.next()) {                    
                    item.setUd_id(rs.getInt("ud_id"));
                    item.setName(rs.getString("name"));
                    item.setAddress(rs.getString("address"));
                    item.setPhone(rs.getString("phone"));
                    item.setBod(rs.getString("bod"));
                    item.setEmail(rs.getString("email"));
                    item.setIdentity_card(rs.getInt("identity_card"));
                    item.setMonneyOfUsers(moum.getMonney(rs.getInt("ud_id")));
                    item.setUser(rs.getString("[user]"));
                }
            }
            getClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return item;
    }
   
    public boolean Register(UserDetail ud,String u){
         boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(REGISTER);
                ps.setString(1, ud.getName());
                ps.setString(2, ud.getAddress());
                ps.setString(3, ud.getBod());
                ps.setString(4, ud.getPhone());
                ps.setString(5, ud.getEmail());
                ps.setInt(6, ud.getIdentity_card());
                ps.setString(7,u);
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
   
}
