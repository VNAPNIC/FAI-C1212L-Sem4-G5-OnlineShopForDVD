/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import entities.HistoryOder;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import model.FeedBackModel;
import model.HistoryOderModel;
import model.productsManagerModel;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author hainam1421
 */
public class StatisticsActionSupport extends ActionSupport implements SessionAware {

    private Map<String, Object> sessionMap;
    int countOder;
    int countReport;
    int sumView;
    float totalSUM;
    List<HistoryOder> objs;

    public float getTotalSUM() {
        return totalSUM;
    }

    public void setTotalSUM(float totalSUM) {
        this.totalSUM = totalSUM;
    }

    public int getSumView() {
        return sumView;
    }

    public void setSumView(int sumView) {
        this.sumView = sumView;
    }

    public int getCountOder() {
        return countOder;
    }

    public void setCountOder(int countOder) {
        this.countOder = countOder;
    }

    public int getCountReport() {
        return countReport;
    }

    public void setCountReport(int countReport) {
        this.countReport = countReport;
    }

    public List<HistoryOder> getObjs() {
        return objs;
    }

    public void setObjs(List<HistoryOder> objs) {
        this.objs = objs;
    }

    public StatisticsActionSupport() {
    }

    @Override
    public String execute() throws Exception {
        FeedBackModel fm = new FeedBackModel();
        countReport = fm.getCountFeedBack();
        
        HistoryOderModel hom;
        hom = new HistoryOderModel();
        countOder = hom.getCountOder();
        
        productsManagerModel pmm;
        pmm = new productsManagerModel();
        sumView = pmm.getSum();
        
       hom = new HistoryOderModel();
        totalSUM = hom.getSUM();
        
        hom = new HistoryOderModel();
        objs = hom.getALL();

        sessionMap.put("co", countOder);
        sessionMap.put("cr", countReport);
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }
}
