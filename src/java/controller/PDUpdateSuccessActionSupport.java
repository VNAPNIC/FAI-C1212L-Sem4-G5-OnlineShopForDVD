/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.Products;
import model.ProductsModel;

/**
 *
 * @author hainam1421
 */
public class PDUpdateSuccessActionSupport extends ActionSupport {
    
    Products prr;

    public Products getPrr() {
        return prr;
    }

    public void setPrr(Products prr) {
        this.prr = prr;
    }
    
    public PDUpdateSuccessActionSupport() {
    }
    
    @Override
    public String execute() throws Exception {
        ProductsModel pm = new ProductsModel();
        if(pm.UpdatePD(prr)){
            return SUCCESS;
        }else{
            return ERROR;
        }
        
    }
    
}
