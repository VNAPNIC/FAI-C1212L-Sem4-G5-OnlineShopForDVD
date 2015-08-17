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
public class HistoryMonneyOfCustomer {
        int hmoc_id;
	String UserCustomer;
	String UserAdmin;
        Login login1;
        Login login2;

    public int getHmoc_id() {
        return hmoc_id;
    }

    public void setHmoc_id(int hmoc_id) {
        this.hmoc_id = hmoc_id;
    }

    public String getUserCustomer() {
        return UserCustomer;
    }

    public void setUserCustomer(String UserCustomer) {
        this.UserCustomer = UserCustomer;
    }

    public String getUserAdmin() {
        return UserAdmin;
    }

    public void setUserAdmin(String UserAdmin) {
        this.UserAdmin = UserAdmin;
    }

    public Login getLogin1() {
        return login1;
    }

    public void setLogin1(Login login1) {
        this.login1 = login1;
    }

    public Login getLogin2() {
        return login2;
    }

    public void setLogin2(Login login2) {
        this.login2 = login2;
    }
        
}
