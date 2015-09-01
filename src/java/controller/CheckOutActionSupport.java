/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.UserDetail;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.UserDetailModel;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class CheckOutActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    private static final String RLR = "rlr";
    private UserDetail ud;

    public UserDetail getUd() {
        return ud;
    }

    public void setUd(UserDetail ud) {
        this.ud = ud;
    }
    
    

    public CheckOutActionSupport() {
    }

    @Override
    public String execute() throws Exception {

        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        if (request.getParameter("active").equals(RLR)) {
            if(sessionMap.containsKey("login")){
                UserDetailModel udm = new UserDetailModel();
                ud = udm.getProfile(sessionMap.get("login").toString());
            }
            return RLR;
        }
        if(request.getParameter("active").equals("cancelorders")){
            sessionMap.remove("car");
            return NONE;
        }
        
        

        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
