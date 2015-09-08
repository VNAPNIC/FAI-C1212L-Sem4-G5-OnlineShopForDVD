/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.ValidationAware;
import entities.Products;
import java.io.File;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import model.FileUploadModel;
import model.ProductsModel;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.interceptor.ServletRequestAware;

/**
 *
 * @author hainam1421
 */
public class UploadImgActionSupport extends ActionSupport implements ModelDriven<FileUploadModel>, ValidationAware, ServletRequestAware {

    private HttpServletRequest servletRequest;
    FileUploadModel model = new FileUploadModel();
    Products p;
    List<Products> objs;

    public List<Products> getObjs() {
        return objs;
    }

    public void setObjs(List<Products> objs) {
        this.objs = objs;
    }

    public Products getP() {
        return p;
    }

    public void setP(Products p) {
        this.p = p;
    }

    @Override
    public String execute() {
        try {
            File f = model.getInputFile();
            if (f == null) {
                addFieldError("inputFile", "The input file is required");
                return INPUT;
            }

            String fileName = model.getInputFileFileName();
            String contentType = model.getInputFileContentType();
            String filePath = servletRequest.getSession().getServletContext().getRealPath("/images/Product/new/");
            FileUtils.copyFile(f, new File(filePath, fileName));
            p.setImg("images\\Product\\new\\" + fileName);
            ProductsModel pm = new ProductsModel();
            if (pm.AddProduct(p)) {
                pm = new ProductsModel();
                objs = pm.getALL();
                return SUCCESS;
            } else {
                return INPUT;
            }
        } catch (Exception e) {
            return ERROR;
        }

    }

    @Override
    public FileUploadModel getModel() {
        return model;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        this.servletRequest = hsr;
    }
}
