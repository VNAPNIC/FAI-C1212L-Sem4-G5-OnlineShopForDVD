/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.Categories;
import entities.Products;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import model.CategoriesModel;
import model.ProductsModel;
import model.productsManagerModel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Louis DeRossi
 */
public class DetailsActionSupport extends ActionSupport {

    Products productDetail;
    ArrayList<Categories> categoriesList = new ArrayList<>();
    ArrayList<Products> products;

    public Products getProductDetail() {
        return productDetail;
    }

    public void setProductDetail(Products productDetail) {
        this.productDetail = productDetail;
    }

    public ArrayList<Categories> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(ArrayList<Categories> categoriesList) {
        this.categoriesList = categoriesList;
    }

    public ArrayList<Products> getProducts() {
        return products;
    }

    public void setProducts(ArrayList<Products> products) {
        this.products = products;
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        try {
            productsManagerModel pmm = new productsManagerModel();
            if (pmm.addView(Integer.parseInt(request.getParameter("id")))) {
                ProductsModel pm;
                pm = new ProductsModel();
                this.productDetail = pm.getProductByID(Integer.parseInt(request.getParameter("id")));
                pm = new ProductsModel();
                this.products = pm.getProductByCate(Integer.parseInt(request.getParameter("idct")), Integer.parseInt(request.getParameter("id")));

                CategoriesModel ct = new CategoriesModel();
                this.categoriesList = ct.getAll();
                return SUCCESS;
            }else{
                return ERROR;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return ERROR;
    }

}
