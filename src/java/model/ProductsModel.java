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
import java.util.List;

/**
 *
 * @author hainam1421
 */
public class ProductsModel extends DataAccessHelper {

    Connection con = null;

    private final String GET_PRODUCT = "SELECT * FROM Products where active=?";
    private final String GET_PRODUCT_BYID = "SELECT * FROM Products WHERE p_id = ?";
    private final String GET_PRODUCT_BY_CATE_TOP3 = "SELECT TOP 3 * FROM Products WHERE c_id = ? and active=? and p_id !=?";
    private final String GET_PRODUCT_BY_CATE = "SELECT * FROM Products WHERE c_id = ? and active=?";
    private final String GET_HOT_TOP3 = "select TOP(3) * from "
            + "Products p inner join ProductManager pm on p.p_id = pm.p_id ORDER  by pm.count DESC";
    private final String SEARCHING_BY_NAME = "SELECT * FROM Products WHERE name LIKE ? and active=?";
    private final String GET_ALL = "select * from Products";
    private final String ADD_PRODUCT = "insert into Products values (?,?,?,?,?,?,?,?)";

    Connection conn = null;

    public ArrayList<Products> Search(String txtSearch) {
        ArrayList<Products> proList = new ArrayList<>();
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(SEARCHING_BY_NAME);
            ps.setString(1, "%" + txtSearch + "%");
            ps.setBoolean(2, true);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
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
    
    public boolean AddProduct(Products p){
        boolean check = false;
          try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(ADD_PRODUCT);
            ps.setString(1, p.getName());
            ps.setFloat(2, p.getMonney());
            ps.setString(3, p.getDescription());
            ps.setString(4,p.getUrl());
            ps.setString(5, p.getImg());
            ps.setInt(6, p.getC_id());
            ps.setInt(7, 0);
            ps.setBoolean(8, false);
            int rs = ps.executeUpdate();
            if(rs > 0){
                check = true;
            }
            conn.close();
        } catch (Exception e) {
        }
        return check;
    }

    public List<Products> getALL() {
        ArrayList<Products> proList = new ArrayList<>();
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(GET_ALL);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
                    item.setRank(rs.getInt("rank"));
                    item.setC_id(rs.getInt("c_id"));
                    item.setActive(rs.getBoolean("active"));
                    proList.add(item);
                }
            }
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return proList;
    }

    public ArrayList<Products> getList(boolean active) {
        ArrayList<Products> proList = new ArrayList<>();
        try {
            conn = getConnection();
            PreparedStatement ps = conn.prepareStatement(GET_PRODUCT);
            ps.setBoolean(1, active);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
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
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
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

    public ArrayList<Products> getProductByCate(int c_id, int p_id) {
        ArrayList<Products> pbc = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_PRODUCT_BY_CATE_TOP3);
                ps.setInt(1, c_id);
                ps.setBoolean(2, true);
                ps.setInt(3, p_id);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
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
                    item.setUrl("https://www.youtube.com/embed/" + rs.getString("url"));
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

    public List<Products> getHot() {
        List<Products> objs = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_HOT_TOP3);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    Products item = new Products();
                    item.setP_id(rs.getInt("p_id"));
                    item.setName(rs.getString("name"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setDescription(rs.getString("description"));
                    item.setImg(rs.getString("img"));
                    item.setC_id(rs.getInt("c_id"));
                    objs.add(item);
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return objs;
    }
}
