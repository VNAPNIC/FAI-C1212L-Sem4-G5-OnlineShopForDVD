/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entities.HistoryOder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
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
    private static final String UPDATE_ODER = "update HistoryOder set "
            + "[user]=?,amount=?,monney=?,ship=?,active=?,nameship=?,addressship=?,phoneship=? where ho_id=?";
    private static final String GET_TOP1 = "SELECT TOP(1) PERCENT * FROM  HistoryOder ORDER  by ho_id DESC";
    private static final String REMOVE_ODER = "DELETE FROM HistoryOder WHERE ho_id=?";

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

    public int getTOP1() {
        int id = 0;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_TOP1);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    id = rs.getInt("ho_id");
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return id;
    }

    public boolean UpdateOder(HistoryOder ho) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(UPDATE_ODER);
                ps.setString(1, ho.getUser());
                ps.setInt(2, ho.getAmount());
                ps.setFloat(3, ho.getMonney());
                ps.setFloat(4, ho.getShip());
                ps.setBoolean(5, false);
                ps.setString(6, ho.getNameship());
                ps.setString(7, ho.getAddressship());
                ps.setString(8, ho.getPhoneship());
                ps.setInt(9, ho.getHo_id());
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

    public boolean Remove(int id) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(REMOVE_ODER);
                ps.setInt(1, id);
                int rs = ps.executeUpdate();
                if(rs >0){
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
