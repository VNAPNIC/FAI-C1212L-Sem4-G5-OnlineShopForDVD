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
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

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
    private static final String GET_COUNT = "SELECT COUNT(*) FROM HistoryOder where active=?";
    private static final String GET_SUM = "SELECT SUM(monney) FROM HistoryOder where active=?";
    private static final String GET_ALL = "select * from HistoryOder ";
    private static final String UPDATE_ACTIVE = "update HistoryOder set active=? where ho_id=?";
    
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
        DecimalFormat df = new DecimalFormat("###.##");
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(UPDATE_ODER);
                ps.setString(1, ho.getUser());
                ps.setInt(2, ho.getAmount());
                ps.setFloat(3, Float.parseFloat(df.format(ho.getMonney())));
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

    public int getCountOder() {
        int count = 0;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_COUNT);
                ps.setBoolean(1, false);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    count = rs.getInt(1);
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return count;
    }

    public float getSUM() {
        DecimalFormat df = new DecimalFormat("###.##");
        float count = 0.0f;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_SUM);
                ps.setBoolean(1, true);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    count = Float.parseFloat(df.format(rs.getFloat(1)));
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return count;
    }

    public List<HistoryOder> getALL() {
        List<HistoryOder> objs = new ArrayList<>();
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(GET_ALL);
                ResultSet rs = ps.executeQuery();
                while (rs.next()) {
                    HistoryOder item = new HistoryOder();
                    item.setHo_id(rs.getInt("ho_id"));
                    item.setUser(rs.getString("user"));
                    item.setAmount(rs.getInt("amount"));
                    item.setMonney(rs.getFloat("monney"));
                    item.setShip(rs.getFloat("ship"));
                    item.setNameship(rs.getString("nameship"));
                    item.setAddressship(rs.getString("addressship"));
                    item.setPhoneship(rs.getString("phoneship"));
                    item.setActive(rs.getBoolean("active"));
                    item.setDateoder(rs.getString("dateoder"));
                    objs.add(item);
                }
            }
            getClose();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return objs;
    }

    public boolean UpdateActive(int id) {
        boolean check = false;
        try {
            con = getConnection();
            if (con != null) {
                PreparedStatement ps = con.prepareStatement(UPDATE_ACTIVE);
                ps.setBoolean(1, true);
                ps.setInt(2, id);
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
