/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Quantity;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.List;

/**
 *
 * @author hainam1421
 */
public class QuantityModel extends DataAccessHelper {

    Connection con;

    private static final String ADD_QUANTITY = "insert into Quantity values (?,?,?,?)";

    public boolean AddQ(List<Quantity> q, int id) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                for (int i = 0; i < q.size(); i++) {
                    PreparedStatement ps = con.prepareStatement(ADD_QUANTITY);
                    ps.setInt(1, q.get(i).getNumber());
                    ps.setFloat(2, q.get(i).getPrice());
                    ps.setInt(3, q.get(i).getP_id());
                    ps.setInt(4, id);
                    int rs = ps.executeUpdate();
                    if (rs > 0) {
                        check = true;
                    }else{
                        return false;
                    }
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return check;
    }
}
