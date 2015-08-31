/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.Products;
import entities.Quantity;
import java.text.DecimalFormat;
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
public class QuantityActionSupport extends ActionSupport implements SessionAware {

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

    public QuantityActionSupport() {
    }

    @Override
    public String execute() throws Exception {

        HttpServletRequest request = (HttpServletRequest) ActionContext.getContext().get(ServletActionContext.HTTP_REQUEST);
        try {
            ProductsModel pm;
            pm = new ProductsModel();
            quantitys = (List<Quantity>) sessionMap.get("car");
            if (request.getParameter("active").equals("up")) {
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
                        return SUCCESS;
                    }
                }
            } else if (request.getParameter("active").equals("down")) {

                for (int i = 0; i < quantitys.size(); i++) {
                    if (quantitys.get(i).getP_id() == Integer.parseInt(request.getParameter("id"))) {
                        DecimalFormat df = new DecimalFormat("###.##");
                        Quantity item = new Quantity();
                        
                        int n = 1;
                        if(quantitys.get(i).getNumber() >1){
                               n = quantitys.get(i).getNumber() -1;
                        }
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
                        return SUCCESS;
                    }
                }
            }
            return SUCCESS;
        } catch (Exception ex) {
            return ERROR;
        }
        
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }
}
