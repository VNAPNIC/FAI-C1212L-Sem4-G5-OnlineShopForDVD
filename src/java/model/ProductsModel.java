/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.util.ArrayList;
import entities.Products;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author hainam1421
 */
public class ProductsModel extends DataAccessHelper {

    Connection con = null;

    private final String GET_PRODUCT = "SELECT * FROM Products where active=?";
    private final String GET_PRODUCT_BYID = "SELECT * FROM Products WHERE p_id = ?";
    private final String GET_PRODUCT_BY_CATE = "SELECT * FROM Products WHERE c_id = ? and active=?";

    Connection conn = null;

    public ArrayList<Products> getList() {
        ArrayList<Products> proList = new ArrayList<>();
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(GET_PRODUCT);
            ps.setBoolean(1, true);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl(rs.getString("url"));
                    item.setRank(rs.getInt("rank"));
                    item.setC_id(rs.getInt("c_id"));
                    item.setActive(rs.getBoolean("active"));
                    proList.add(item);
                }
            }
            conn.close();
        } catch (Exception e) {
        }
        return proList;
    }

    public Products getProductByID(int id) {

        Products item = new Products();
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(GET_PRODUCT_BYID);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl(rs.getString("url"));
                    item.setRank(rs.getInt("rank"));
                    item.setC_id(rs.getInt("c_id"));
                    item.setActive(rs.getBoolean("active"));
                }
            }
            conn.close();
        } catch (Exception e) {
        }
        return item;

    }

    public ArrayList<Products> getProductByCate(int c_id) {
        ArrayList<Products> pbc = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_PRODUCT_BY_CATE);
                ps.setInt(1, c_id);
                ps.setBoolean(2, true);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl(rs.getString("url"));
                    item.setRank(rs.getInt("rank"));
                    item.setC_id(rs.getInt("c_id"));
                    item.setActive(rs.getBoolean("active"));
                    pbc.add(item);
                }
            }
            con.close();
        } catch (Exception e) {
        }
        return pbc;
    }
}
