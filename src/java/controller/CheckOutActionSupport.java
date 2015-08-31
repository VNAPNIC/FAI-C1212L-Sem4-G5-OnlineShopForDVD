/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author hainam1421
 */
public class CheckOutActionSupport extends ActionSupport {
    
    public CheckOutActionSupport() {
    }
    
    @Override
    public String execute() throws Exception {
        
         HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         if(request.getParameter("active").equals("rlr")){
            return "rlr";
         }
        
        return SUCCESS;
    }
    
}
