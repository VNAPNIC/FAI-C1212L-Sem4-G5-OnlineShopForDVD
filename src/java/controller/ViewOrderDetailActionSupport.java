/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryOder;
import entities.ProductsManager;
import entities.Quantity;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.HistoryOderModel;
import model.QuantityModel;
import model.productsManagerModel;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author hainam1421
 */
public class ViewOrderDetailActionSupport extends ActionSupport {

    List<Quantity> quantitys;
    List<ProductsManager> managers;

    public List<ProductsManager> getManagers() {
        return managers;
    }

    public void setManagers(List<ProductsManager> managers) {
        this.managers = managers;
    }

    int sumView;
    float totalSUM;
    List<HistoryOder> objs;

    public int getSumView() {
        return sumView;
    }

    public void setSumView(int sumView) {
        this.sumView = sumView;
    }

    public float getTotalSUM() {
        return totalSUM;
    }

    public void setTotalSUM(float totalSUM) {
        this.totalSUM = totalSUM;
    }

    public List<HistoryOder> getObjs() {
        return objs;
    }

    public void setObjs(List<HistoryOder> objs) {
        this.objs = objs;
    }

    public List<Quantity> getQuantitys() {
        return quantitys;
    }

    public void setQuantitys(List<Quantity> quantitys) {
        this.quantitys = quantitys;
    }

    public ViewOrderDetailActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        try {
            QuantityModel qm = new QuantityModel();
            quantitys = qm.View(Integer.parseInt(request.getParameter("ho_id")));
            productsManagerModel pmm;
            pmm = new productsManagerModel();
            sumView = pmm.getSum();

            HistoryOderModel hom;
            hom = new HistoryOderModel();
            totalSUM = hom.getSUM();

            hom = new HistoryOderModel();
            objs = hom.getALL();

            pmm = new productsManagerModel();
            managers = pmm.getViewP();

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return SUCCESS;
    }

}
