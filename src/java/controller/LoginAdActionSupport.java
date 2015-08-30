/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.INPUT;
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
public class LoginAdActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    Login la = new Login();
    String adError;

    public Login getLa() {
        return la;
    }

    public void setLa(Login la) {
        this.la = la;
    }

    public String getAdError() {
        return adError;
    }

    public void setAdError(String adError) {
        this.adError = adError;
    }

    public LoginAdActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm;
        if (la.getUser().equals("") || la.getPass().equals("")) {
            return INPUT;
        } else {
            lm = new LoginModel();
            Login rl = lm.checkLogin(la.getUser(), la.getPass(), 1);
            if (rl.getUser().equals("")) {
                lm = new LoginModel();
                Login rl2 = lm.checkLogin(la.getUser(), la.getPass(), 2);
                if (rl2.getUser().equals("")) {
                    adError = Ms.LOGIN_FAIL;
                    return INPUT;
                } else {
                    if (rl2.isStatus()) {
                        adError = Ms.LOGIN_STATUS;
                        return INPUT;
                    }
                    if (!rl2.isActive()) {
                        adError = Ms.LOGIN_ACTIVE;
                        return INPUT;
                    }
                    if (!rl2.isStatus() && rl2.isActive()) {
                        lm = new LoginModel();
                        if (lm.updateStatus(la.getUser(), true)) {
                            sessionMap.put("loginad", la.getUser());
                            return SUCCESS;
                        } else {
                            adError = Ms.LOGIN_FAIL;
                            return INPUT;
                        }
                    }
                }
            } else {

                if (rl.isStatus()) {
                    adError = Ms.LOGIN_STATUS;
                    return INPUT;
                }
                if (!rl.isActive()) {
                    adError = Ms.LOGIN_ACTIVE;
                    return INPUT;
                }
                if (!rl.isStatus() && rl.isActive()) {
                    lm = new LoginModel();
                    if (lm.updateStatus(la.getUser(), true)) {
                        sessionMap.put("loginad", la.getUser());
                        return SUCCESS;
                    } else {
                        adError = Ms.LOGIN_FAIL;
                        return INPUT;
                    }
                }
            }
        }
        return INPUT;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
