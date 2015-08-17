/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author hainam1421
 */
public class HistoryManager {

    int hm_id;
    String dateoder;
    String user;
    int p_id;
    String desription;
    Products products;

    public int getHm_id() {
        return hm_id;
    }

    public void setHm_id(int hm_id) {
        this.hm_id = hm_id;
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

    public String getDesription() {
        return desription;
    }

    public void setDesription(String desription) {
        this.desription = desription;
    }

    public Products getProducts() {
        return products;
    }

    public void setProducts(Products products) {
        this.products = products;
    }
    
    
}
