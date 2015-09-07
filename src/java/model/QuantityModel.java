/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.HistoryOder;
import entities.Products;
import entities.Quantity;
import entities.UserDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author hainam1421
 */
public class QuantityModel extends DataAccessHelper {

    Connection con;

    private static final String ADD_QUANTITY = "insert into Quantity values (?,?,?,?)";
    private static final String VIEW_STATISTICS = "select * from "
            + "Quantity q inner join HistoryOder ho "
            + "on q.ho_id = ho.ho_id "
            + "inner join Products p "
            + "on q.p_id = p.p_id "
            + "inner join UserDetail ud "
            + "on ho.[user] = ud.[user] "
            + "where ho.ho_id=?";
    private static final String REMOVE = "DELETE FROM Quantity WHERE ho_id=?";

    public boolean removeAll(int ho_id) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(REMOVE);
                ps.setInt(1, ho_id);
                int rs = ps.executeUpdate();
                if (rs > 0) {
                    HistoryOderModel hom = new HistoryOderModel();
                    if(hom.Remove(ho_id)){
                        check = true;
                    }
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return check;

    }

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
                    } else {
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

    public List<Quantity> View(int ho_id) {
        List<Quantity> objs = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(VIEW_STATISTICS);
                ps.setInt(1, ho_id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Quantity iq = new Quantity();
                    iq.setNumber(rs.getInt(2));
                    iq.setPrice(rs.getFloat(3));
                    //---------
                    Products ip = new Products();
                    ip.setName(rs.getString(18));
                    //---------
                    HistoryOder iho = new HistoryOder();
                    iho.setDateoder(rs.getString(7));
                    iho.setUser(rs.getString(8));
                    iho.setActive(rs.getBoolean(25));
                    iho.setNameship(rs.getString(14));
                    iho.setAddressship(rs.getString(15));
                    iho.setPhoneship(rs.getString(16));
                    //----------
                    UserDetail iud = new UserDetail();
                    iud.setName(rs.getString(27));
                    iud.setAddress(rs.getString(28));
                    iud.setPhone(rs.getString(30));
                    iud.setEmail(rs.getString(31));
                    //----------
                    iq.setProducts(ip);
                    iq.setHo(iho);
                    iq.setUd(iud);
                    //----------
                    objs.add(iq);
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return objs;
    }
}
