/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hainam1421
 */
public class RelaUserModel extends DataAccessHelper{
    Connection con;
    private static final String GET_RELA = "select * from RelaUser where ru_id = ?";
    
    public int getRela(int id)
    {
        int getId = 0;
        try {
            con = getConnection();
            if(con!=null){
                PreparedStatement ps = con.prepareStatement(GET_RELA);
                ps.setInt(1, id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {                    
                    getId = rs.getInt("ru_id");
                }
            }
            getClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return getId;
    }
    
    
    
}
