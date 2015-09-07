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
public class productsManagerModel extends DataAccessHelper {
    
    Connection con = null;
    private static final String ADD_VIEW = "IF EXISTS(SELECT *\n"
            + "          FROM   ProductManager\n"
            + "          WHERE  p_id = ?)\n"
            + "          update ProductManager set [count] += 1 where p_id = ? \n"
            + "          ELSE\n"
            + "          insert into ProductManager(p_id) values (?)";
    private static final String GET_SUM = "SELECT SUM([count]) FROM ProductManager";
    
    public boolean addView(int p_id) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(ADD_VIEW);
                ps.setInt(1, p_id);
                ps.setInt(2, p_id);
                ps.setInt(3, p_id);
                int rs = ps.executeUpdate();
                if (rs > 0) {
                    check = true;
                }
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return check;
    }
    
    public int getSum() {
        int count = 0;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_SUM);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    count = rs.getInt(1);
                }
            }
            
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return count;
    }
}
