/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.Products;
import entities.ProductsManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

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

    private final String GET_VIEW_PRODUCTS = "select * from "
            + "Products p inner join ProductManager pm on p.p_id = pm.p_id";

    public List<ProductsManager> getViewP() {
        List<ProductsManager> pm = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_VIEW_PRODUCTS);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    ProductsManager item = new ProductsManager();
                    item.setCouunt(rs.getInt(12));
                    Products p = new Products();
                    p.setName(rs.getString(2));
                    p.setMonney(rs.getFloat(3));
                    p.setUrl("https://www.youtube.com/embed/" + rs.getString(5));
                    p.setImg(rs.getString(6));
                    item.setP(p);
                    pm.add(item);
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return pm;
    }

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
