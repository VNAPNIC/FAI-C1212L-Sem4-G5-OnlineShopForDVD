/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.Login;
import entities.UserDetail;
import model.LoginModel;
import model.UserDetailModel;

/**
 *
 * @author hainam1421
 */
public class RegisterActionSupport extends ActionSupport {

    String user;
    String pass;
    String identityCard;
    String rs;
    String error;
    UserDetail ud = new UserDetail();

    public String getError() {
        return error;
    }

    public void setError(String error) {
        this.error = error;
    }

    
    
    public String getRs() {
        return rs;
    }

    public void setRs(String rs) {
        this.rs = rs;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getIdentityCard() {
        return identityCard;
    }

    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public UserDetail getUd() {
        return ud;
    }

    public void setUd(UserDetail ud) {
        this.ud = ud;
    }

    public RegisterActionSupport() {
    }

    public String registerud() throws Exception {
        LoginModel lm = new LoginModel();
        UserDetailModel udm = new UserDetailModel();
        String u = lm.getTop1();
        ud.setIdentity_card(Integer.valueOf(identityCard.toString().trim()));
        if (udm.Register(ud, u)) {
            rs = "success";
            error = "Register success.!";
            return SUCCESS;
        } else {
            rs = "fail";
            error = "sorry faulty system can not register.!";
            return INPUT;
        }
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();
        if(lm.getUser(rs)){
          error = "account already exists in the system can not be used.!";
          return INPUT;  
        }
        if (lm.Register(user, pass)) {
            String u = lm.getTop1();
            rs = "success";
            return SUCCESS;
        } else {
            rs = "fail";
            error = "sorry faulty system can not register.!";
            return INPUT;
        }
    }

}
