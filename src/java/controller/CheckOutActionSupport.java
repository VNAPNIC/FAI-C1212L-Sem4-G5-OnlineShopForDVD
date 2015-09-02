/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.NONE;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryOder;
import entities.Quantity;
import entities.UserDetail;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.HistoryOderModel;
import model.UserDetailModel;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class CheckOutActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    private static final String RLR = "mco";
    private static final String BACK = "back";
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
        try {
            HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
            if (request.getParameter("active").equals(RLR)) {
                if (sessionMap.containsKey("car")) {
                    if (sessionMap.containsKey("login")) {
                        UserDetailModel udm = new UserDetailModel();
                        ud = udm.getProfile(sessionMap.get("login").toString());
                        HistoryOderModel hom = new HistoryOderModel();
                        if (hom.addNewOder()) {
                            return RLR;
                        } else {
                            return NONE;
                        }
                    }
                    return RLR;
                }else{
                    return BACK;
                }
            }

            if (request.getParameter("active").equals("cancelorders")) {
                sessionMap.remove("car");
                sessionMap.remove("total");
                return NONE;
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return NONE;

    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

}
