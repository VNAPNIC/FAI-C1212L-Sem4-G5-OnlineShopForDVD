/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.Categories;
import entities.Products;
import java.util.ArrayList;
import java.util.List;
import model.CategoriesModel;
import model.ProductsModel;

/**
 *
 * @author hainam1421
 */
public class SearchActionSupport extends ActionSupport {

    ArrayList<Products> productList = new ArrayList<>();
    
    ArrayList<Categories> categoriesList = new ArrayList<>();
    List<Products> products = new ArrayList<>();
    String txtSearch;

    public String getTxtSearch() {
        return txtSearch;
    }

    public void setTxtSearch(String txtSearch) {
        this.txtSearch = txtSearch;
    }

    public List<Products> getProducts() {
        return products;
    }

    public void setProducts(List<Products> products) {
        this.products = products;
    }

    public ArrayList<Products> getProductList() {
        return productList;
    }

    public void setProductList(ArrayList<Products> productList) {
        this.productList = productList;
    }

    public ArrayList<Categories> getCategoriesList() {
        return categoriesList;
    }

    public void setCategoriesList(ArrayList<Categories> categoriesList) {
        this.categoriesList = categoriesList;
    }

    @Override
    public String execute() throws Exception {
        try {
            ProductsModel pm;
            pm = new ProductsModel();
            this.productList = pm.Search(txtSearch);
            pm = new ProductsModel();
            this.products = pm.getHot();
            CategoriesModel ct = new CategoriesModel();
            this.categoriesList = ct.getAll();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return SUCCESS;
    }

}

