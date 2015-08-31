/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.List;

/**
 *
 * @author hainam1421
 */
public class HistoryOder {

    int ho_id;
    String dateoder;
    String user;
    int q_id;
    int pt_id;
    int amount;
    float monney;
    float ship;
    String nameship;
    String addressship;
    String phoneship;
    boolean active;

    public int getHo_id() {
        return ho_id;
    }

    public void setHo_id(int ho_id) {
        this.ho_id = ho_id;
    }

    public String getDateoder() {
        return dateoder;
    }

    public void setDateoder(String dateoder) {
        this.dateoder = dateoder;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    

    public int getPt_id() {
        return pt_id;
    }

    public void setPt_id(int pt_id) {
        this.pt_id = pt_id;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public float getMonney() {
        return monney;
    }

    public void setMonney(float monney) {
        this.monney = monney;
    }

    public float getShip() {
        return ship;
    }

    public void setShip(float ship) {
        this.ship = ship;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public String getNameship() {
        return nameship;
    }

    public void setNameship(String nameship) {
        this.nameship = nameship;
    }

    public String getAddressship() {
        return addressship;
    }

    public void setAddressship(String addressship) {
        this.addressship = addressship;
    }

    public String getPhoneship() {
        return phoneship;
    }

    public void setPhoneship(String phoneship) {
        this.phoneship = phoneship;
    }
    
    
}
