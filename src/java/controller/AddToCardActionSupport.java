/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryMonneyOfCustomer;
import entities.HistoryOder;
import entities.Products;
import entities.Quantity;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.ProductsModel;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class AddToCardActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    private List<Quantity> quantitys;
    float total;

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public List<Quantity> getQuantitys() {
        return quantitys;
    }

    public void setQuantitys(List<Quantity> quantitys) {
        this.quantitys = quantitys;
    }

    public AddToCardActionSupport() {
    }

    /**
     *
     * @return @throws Exception
     */
    @Override
    public String execute() throws Exception {
        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        try {
            ProductsModel pm;
            if (sessionMap.containsKey("car")) {
                pm = new ProductsModel();
                quantitys = (List<Quantity>) sessionMap.get("car");

                for (int i = 0; i < quantitys.size(); i++) {
                    if (quantitys.get(i).getP_id() == Integer.parseInt(request.getParameter("id"))) {
                        DecimalFormat df = new DecimalFormat("###.##");
                        Quantity item = new Quantity();
                        int n = quantitys.get(i).getNumber() + 1;
                        item.setNumber(n);
                        Products p = pm.getProductByID(Integer.parseInt(request.getParameter("id")));
                        item.setProducts(p);
                        float pr = p.getMonney() * n;
                        item.setPrice(Float.parseFloat(df.format(pr)));
                        item.setP_id(p.getP_id());
                        quantitys.set(i, item);
                        sessionMap.put("car", quantitys);
                        total = 0;
                        for (int j = 0; j < quantitys.size(); j++) {

                            total = Float.parseFloat(df.format(total + quantitys.get(j).getPrice()));
                        }
                        sessionMap.put("total", total);
                        return SUCCESS;
                    }
                }
                DecimalFormat df = new DecimalFormat("###.##");
                Quantity item = new Quantity();
                item.setNumber(1);
                Products p = pm.getProductByID(Integer.parseInt(request.getParameter("id")));
                item.setProducts(p);
                item.setPrice(p.getMonney());
                item.setP_id(p.getP_id());
                quantitys.add(item);
                sessionMap.put("car", quantitys);
                for (int j = 0; j < quantitys.size(); j++) {
                    total = Float.parseFloat(df.format(total + quantitys.get(j).getPrice()));
                }
                sessionMap.put("total", total);
                return SUCCESS;
            } else {
                DecimalFormat df = new DecimalFormat("###.##");
                quantitys = new ArrayList<>();
                pm = new ProductsModel();
                Quantity item = new Quantity();
                item.setNumber(1);
                Products p = pm.getProductByID(Integer.parseInt(request.getParameter("id")));
                item.setProducts(p);
                item.setPrice(p.getMonney());
                item.setP_id(p.getP_id());
                quantitys.add(item);
                sessionMap.put("car", quantitys);
                for (int j = 0; j < quantitys.size(); j++) {
                    total = Float.parseFloat(df.format(total + quantitys.get(j).getPrice()));
                }
                sessionMap.put("total", total);
                return SUCCESS;
            }

        } catch (Exception ex) {
            return ERROR;
        }
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }
}
