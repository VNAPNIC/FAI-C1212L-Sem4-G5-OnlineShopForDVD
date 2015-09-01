/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.HistoryOder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author hainam1421
 */
public class HistoryOderModel extends DataAccessHelper {

    Connection con;

    private static final String INSERT_ODER = "insert into HistoryOder(dateoder) values (?)";

    public boolean addNewOder() {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
                Date date = new Date();
                
                PreparedStatement ps = con.prepareStatement(INSERT_ODER);
                ps.setString(1, dateFormat.format(date));
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
