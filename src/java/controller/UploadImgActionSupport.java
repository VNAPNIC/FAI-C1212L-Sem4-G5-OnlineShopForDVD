/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.Products;
import javax.servlet.http.HttpServletRequest;
import model.ProductsModel;

/**
 *
 * @author hainam1421
 */
public class UploadImgActionSupport extends ActionSupport{

    Products p;

    public Products getP() {
        return p;
    }

    public void setP(Products p) {
        this.p = p;
    }
    
    

    public String execute() {
        ProductsModel pm = new ProductsModel();
        if(pm.AddProduct(p)){
            return SUCCESS;
        }else{
            return INPUT;
        }
            
        
    }

    public void setServletRequest(HttpServletRequest servletRequest) {
        servletRequest = servletRequest;
    }
}
