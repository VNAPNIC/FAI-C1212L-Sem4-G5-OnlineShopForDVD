/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import common.Ms;
import entities.Login;
import java.util.Map;
import model.LoginModel;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class LoginActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    Login l = new Login();
    String error;

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    public Login getL() {
        return l;
    }

    public void setL(Login l) {
        this.l = l;
    }

    public LoginActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();

        if (l.getUser().equals("") || l.getPass().equals("")) {
            return INPUT;
        }
       Login rl = lm.checkLogin(l.getUser(), l.getPass(), 3);
        if (rl.getUser().equals("")) {
            error = Ms.LOGIN_FAIL;
            return INPUT;
        } else {

            if (rl.isStatus()) {
                error = Ms.LOGIN_STATUS;
                return INPUT;
            }

            if (!rl.isActive()) {
                error = Ms.LOGIN_ACTIVE;
                return INPUT;
            }
            if (!rl.isStatus() && rl.isActive()) {
                sessionMap.put("login", l.getUser());
                return SUCCESS;
            }
        }
        return INPUT;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
