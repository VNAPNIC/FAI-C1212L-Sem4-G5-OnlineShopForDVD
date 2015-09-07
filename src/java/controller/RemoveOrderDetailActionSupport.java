/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryOder;
import javax.servlet.http.HttpServletRequest;
import model.HistoryOderModel;
import model.QuantityModel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author hainam1421
 */
public class RemoveOrderDetailActionSupport extends ActionSupport {

    public RemoveOrderDetailActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        QuantityModel qm = new QuantityModel();

        if (qm.removeAll(Integer.parseInt(request.getParameter("ho_id")))) {
            return SUCCESS;
        }
        HistoryOderModel hom = new HistoryOderModel();
        if (hom.Remove(Integer.parseInt(request.getParameter("ho_id")))) {
            return SUCCESS;
        }
        return ERROR;
    }

}
