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
public class FeedBackModel extends DataAccessHelper {

    private Connection con;

     private static final String GET_COUNT = "SELECT COUNT(*) FROM FeedBack";

    public int getCountFeedBack() {
        int count = 0;
        try {
            con = getConnection();
            if(con!=null){
                PreparedStatement ps = con.prepareStatement(GET_COUNT);
                ResultSet rs = ps.executeQuery();
                if(rs.next()){
                   count= rs.getInt(1);
                }
            }
            getClose();
        } catch (Exception ex) {
           ex.printStackTrace();
        }
        return count;
    }

}
