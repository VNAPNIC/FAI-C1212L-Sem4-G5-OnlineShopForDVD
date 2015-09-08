/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import model.ProductsModel;
import org.apache.struts2.ServletActionContext;

public class PDActiveActionSupport extends ActionSupport {

    public PDActiveActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        ProductsModel pm;
        pm = new ProductsModel();
        if(pm.UpdateActive(false, Integer.parseInt(request.getParameter("p_id").toString()))){
            return SUCCESS;
        }else{
            return ERROR;
        }
        
    }

}
