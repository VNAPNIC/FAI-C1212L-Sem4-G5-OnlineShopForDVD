/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.Products;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.ProductsModel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author hainam1421
 */
public class PDUpdateActionSupport extends ActionSupport {

    Products pro;
    boolean updatestt;
    List<Products> objs;

    public List<Products> getObjs() {
        return objs;
    }

    public void setObjs(List<Products> objs) {
        this.objs = objs;
    }

    public boolean isUpdatestt() {
        return updatestt;
    }

    public void setUpdatestt(boolean updatestt) {
        this.updatestt = updatestt;
    }

    public Products getPro() {
        return pro;
    }

    public void setPro(Products pro) {
        this.pro = pro;
    }

    public PDUpdateActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        ProductsModel pm;
        pm = new ProductsModel();
        pro = pm.getProductByID(Integer.parseInt(request.getParameter("p_id")));
        updatestt = true;
        pm = new ProductsModel();
        objs = pm.getALL();
        return SUCCESS;
    }

}
