/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.Products;
import java.util.List;
import model.ProductsModel;

/**
 *
 * @author hainam1421
 */
public class ProductADActionSupport extends ActionSupport {

    List<Products> objs;

    
    public List<Products> getObjs() {
        return objs;
    }

    public void setObjs(List<Products> objs) {
        this.objs = objs;
    }

    public ProductADActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        ProductsModel pm = new ProductsModel();
        objs = pm.getALL();
        return SUCCESS;
    }

}
