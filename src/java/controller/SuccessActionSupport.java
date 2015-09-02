/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryOder;
import entities.Quantity;
import java.util.List;
import java.util.Map;
import model.HistoryOderModel;
import model.QuantityModel;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class SuccessActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    private String nameShip;
    private String addressShip;
    private String phoShip;
    private HistoryOder item;

    public String getNameShip() {
        return nameShip;
    }

    public void setNameShip(String nameShip) {
        this.nameShip = nameShip;
    }

    public String getAddressShip() {
        return addressShip;
    }

    public void setAddressShip(String addressShip) {
        this.addressShip = addressShip;
    }

    public String getPhoShip() {
        return phoShip;
    }

    public void setPhoShip(String phoShip) {
        this.phoShip = phoShip;
    }

    public HistoryOder getItem() {
        return item;
    }

    public void setItem(HistoryOder item) {
        this.item = item;
    }

    public SuccessActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        if (sessionMap.containsKey("login") && sessionMap.containsKey("car") && sessionMap.containsKey("total")) {
            HistoryOderModel hom;
            
            String user = sessionMap.get("login").toString();
            List<Quantity> objs = (List<Quantity>) sessionMap.get("car");
            
            int amount = 0;
            
            for (int i = 0; i < objs.size(); i++) {
                amount += objs.get(i).getNumber();
            }

            hom = new HistoryOderModel();
            item = new HistoryOder();
            item.setHo_id(hom.getTOP1());
            item.setUser(user);
            item.setAmount(amount);
            item.setMonney(Float.parseFloat(sessionMap.get("total").toString()));
            item.setShip(0);
            item.setNameship(getNameShip());
            item.setAddressship(getAddressShip());
            item.setPhoneship(getPhoShip());

            hom = new HistoryOderModel();
            if (hom.UpdateOder(item)) {
                
                QuantityModel qm;
                for (int i = 0; i < objs.size(); i++) {
                    try {
                        Quantity q = new Quantity();
                        q.setNumber(objs.get(i).getNumber());
                        q.setPrice(objs.get(i).getPrice());
                        q.setP_id(objs.get(i).getP_id());
                        q.setHo_id(objs.get(i).getHo_id());
                        qm = new QuantityModel();
                        qm.AddQ(q);
                    } catch (Exception ex) {
                        return ERROR;
                    }
                }
                return SUCCESS;
            }
            return SUCCESS;
        }
        HistoryOderModel hom;
        hom = new HistoryOderModel();
        int id = hom.getTOP1();
        hom = new HistoryOderModel();
        if (hom.Remove(id)) {
            return NONE;
        } else {
            return ERROR;
        }

    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }
}
