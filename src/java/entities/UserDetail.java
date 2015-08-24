/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.util.List;

/**
 *
 * @author hainam1421
 */
public class UserDetail {
    int ud_id;
    String name;
    String address;
    String bod;
    String phone;
    String email;
    int identity_card;
    String user;
    MonneyOfUser monneyOfUsers;

    public UserDetail() {
    }

    public int getUd_id() {
        return ud_id;
    }

    public void setUd_id(int ud_id) {
        this.ud_id = ud_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getBod() {
        return bod;
    }

    public void setBod(String bod) {
        this.bod = bod;
    }

    

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdentity_card() {
        return identity_card;
    }

    public void setIdentity_card(int identity_card) {
        this.identity_card = identity_card;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public MonneyOfUser getMonneyOfUsers() {
        return monneyOfUsers;
    }

    public void setMonneyOfUsers(MonneyOfUser monneyOfUsers) {
        this.monneyOfUsers = monneyOfUsers;
    }

    
    
}
