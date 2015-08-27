/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import entities.Categories;

public class CategoriesModel extends DataAccessHelper{
        Connection con;

    private final String GET_CATEGORIES = "select * from Categories where active=?";
    
    public ArrayList<Categories> getAll() {
        ArrayList<Categories> list = new ArrayList<>();
        try {
            con = getConnection();
            PreparedStatement ps = con.prepareStatement(GET_CATEGORIES);
            ps.setBoolean(1, true);
            ResultSet rs = ps.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    Categories item = new Categories();
                    item.setC_id(rs.getInt("c_id"));
                    item.setName(rs.getString("name"));
                    list.add(item);
                }
            }
            con.close();
        } catch (Exception e) {
        }
        return list;
    }

}
