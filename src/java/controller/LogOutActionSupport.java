/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
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
        sessionMap.remove("login");
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
