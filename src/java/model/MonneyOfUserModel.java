/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.MonneyOfUser;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hainam1421
 */
public class MonneyOfUserModel extends DataAccessHelper{
    Connection con;
    private static final String GET_MONNEY = "select * from MonneyOfUser where ud_id = ?";
    private static final String REGISTER = "insert into MonneyOfUser values (?,?)";
    
    protected MonneyOfUser getMonney (int ud_id)
    {
        MonneyOfUser item = new MonneyOfUser();
        
        try {
            con = getConnection();
            if(con!=null)
            {
                PreparedStatement ps = con.prepareStatement(GET_MONNEY);
                ps.setInt(1, ud_id);
                ResultSet rs = ps.executeQuery();
                if(rs.next())
                {
                    item.setMou_id(rs.getInt("mou_id"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setUd_id(rs.getInt("ud_id"));
                }
            }
            getClose();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return item;
    }
}
