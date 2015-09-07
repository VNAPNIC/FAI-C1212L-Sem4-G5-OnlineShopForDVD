/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.LoginModel;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class LogOutActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;

    public LogOutActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();
         HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
         if(request.getParameter("lo").equals("1")){
            if(lm.updateStatus(sessionMap.get("login").toString(), false)){
                sessionMap.remove("login");
                return SUCCESS;
            }
         }else{
             if(lm.updateStatus(sessionMap.get("loginad").toString(), false)){
                sessionMap.remove("loginad");
                return INPUT;
            }
         }
         return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
