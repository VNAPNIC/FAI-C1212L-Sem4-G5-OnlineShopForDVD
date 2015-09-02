/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Quantity;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author hainam1421
 */
public class QuantityModel extends DataAccessHelper {

    Connection con;

    private static final String ADD_QUANTITY = "insert into Quantity values (?,?,?,?)";

    public boolean AddQ(Quantity q) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(ADD_QUANTITY);
                ps.setInt(1, q.getNumber());
                ps.setFloat(2, q.getPrice());
                ps.setInt(3, q.getP_id());
                ps.setInt(4, q.getHo_id());
                int rs = ps.executeUpdate();
                if (rs > 0) {
                    check = true;
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return check;
    }
}
