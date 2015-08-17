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
    int p_id;
    int pt_id;
    int amount;
    float monney;
    float ship;
    boolean active;
    Products products;
    PaymentType paymentType;

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

    public int getP_id() {
        return p_id;
    }

    public void setP_id(int p_id) {
        this.p_id = p_id;
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

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }

    public PaymentType getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(PaymentType paymentType) {
        this.paymentType = paymentType;
    }
    
    
}
