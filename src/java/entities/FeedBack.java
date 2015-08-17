/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

/**
 *
 * @author hainam1421
 */
public class FeedBack {
    int fb_id;
	String user;
	String datefb;
	String Content;
        Login login;

    public int getFb_id() {
        return fb_id;
    }

    public void setFb_id(int fb_id) {
        this.fb_id = fb_id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDatefb() {
        return datefb;
    }

    public void setDatefb(String datefb) {
        this.datefb = datefb;
    }

    public String getContent() {
        return Content;
    }

    public void setContent(String Content) {
        this.Content = Content;
    }

    public Login getLogin() {
        return login;
    }

    public void setLogin(Login login) {
        this.login = login;
    }
        
}
