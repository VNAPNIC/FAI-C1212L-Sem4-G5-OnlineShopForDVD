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

    Login l = new Login();
    UserDetail ud = new UserDetail();

    public Login getL() {
        return l;
    }

    public void setL(Login l) {
        this.l = l;
    }

    public UserDetail getUd() {
        return ud;
    }

    public void setUd(UserDetail ud) {
        this.ud = ud;
    }

    public RegisterActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();
        UserDetailModel udm = new UserDetailModel();
        
        l.setActive(true);
        l.setStatus(false);
        l.setRu_id(3);
        
       if(lm.Register(l)){
           ud.setUser(lm.getTop1());
           if(udm.Register(ud)){
               return SUCCESS;
           }
       }else{
           return INPUT;
       }
       return INPUT;
    }

}
