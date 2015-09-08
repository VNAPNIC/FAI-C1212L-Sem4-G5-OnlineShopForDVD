/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import model.ProductsModel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author hainam1421
 */
public class PDActiveTrueActionSupport extends ActionSupport {
    
    public PDActiveTrueActionSupport() {
    }
    
    @Override
    public String execute() throws Exception {
         HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        ProductsModel pm;
        pm = new ProductsModel();
        if(pm.UpdateActive(true, Integer.parseInt(request.getParameter("p_id").toString()))){
            return SUCCESS;
        }else{
            return ERROR;
        }
    }
    
}
