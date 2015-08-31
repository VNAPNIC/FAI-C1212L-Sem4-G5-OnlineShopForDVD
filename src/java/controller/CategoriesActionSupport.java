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
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Louis DeRossi
 */
public class CategoriesActionSupport extends ActionSupport {
    
    
    ArrayList<Products> productList = new ArrayList<>();
    ArrayList<Categories> categoriesList = new ArrayList<>();

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
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get( ServletActionContext.HTTP_REQUEST);
        try {
            ProductsModel pm = new ProductsModel();
            this.productList = pm.getProductByCate(Integer.parseInt(request.getParameter("c_id")));
            CategoriesModel ct = new CategoriesModel();
            this.categoriesList = ct.getAll();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return SUCCESS;
    }

}
