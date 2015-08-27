/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import entities.UserDetail;
import model.LoginModel;
import model.UserDetailModel;

/**
 *
 * @author hainam1421
 */
public class RegisterUserActionSupport extends ActionSupport {

    UserDetail ud = new UserDetail();
    String identityCard;
    String rs;
    String rdterror;

    public UserDetail getUd() {
        return ud;
    }

    public void setUd(UserDetail ud) {
        this.ud = ud;
    }

    public String getIdentityCard() {
        return identityCard;
    }

    public void setIdentityCard(String identityCard) {
        this.identityCard = identityCard;
    }

    public String getRs() {
        return rs;
    }

    public void setRs(String rs) {
        this.rs = rs;
    }

    public String getRdterror() {
        return rdterror;
    }

    public void setRdterror(String rdterror) {
        this.rdterror = rdterror;
    }

   

    public RegisterUserActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        LoginModel lm = new LoginModel();
        UserDetailModel udm = new UserDetailModel();
        String u = lm.getTop1();
        ud.setIdentity_card(Integer.valueOf(identityCard.toString().trim()));
        if (udm.Register(ud, u)) {
            setRdterror("Register Detail Success.!");
            setRs("success");
            return SUCCESS;
        } else {
            setRdterror("Register Detail fail.!");
            setRs("fail");
            return INPUT;
        }
    }

}
