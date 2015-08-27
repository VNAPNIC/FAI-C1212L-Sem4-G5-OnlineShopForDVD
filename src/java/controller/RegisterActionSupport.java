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

    String ruser;
    String rpass;
    String rerror;

    public String getRerror() {
        return rerror;
    }

    public void setRerror(String rerror) {
        this.rerror = rerror;
    }

    public String getRuser() {
        return ruser;
    }

    public void setRuser(String ruser) {
        this.ruser = ruser;
    }

    public String getRpass() {
        return rpass;
    }

    public void setRpass(String rpass) {
        this.rpass = rpass;
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();
        if (lm.getUser(getRuser())) {
            setRerror("account already exists in the system can not be used.!");
            return INPUT;
        } else {
            if (lm.Register(getRuser(), getRpass())) {
                return SUCCESS;
            } else {
                setRerror("sorry faulty system can not register.!");
                return INPUT;
            }
        }
    }

}
