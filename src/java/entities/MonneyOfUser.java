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
public class MonneyOfUser {

    int mou_id;
    float monney;
    boolean active;
    int ud_id;

    public int getMou_id() {
        return mou_id;
    }

    public void setMou_id(int mou_id) {
        this.mou_id = mou_id;
    }

    public float getMonney() {
        return monney;
    }

    public void setMonney(float monney) {
        this.monney = monney;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public int getUd_id() {
        return ud_id;
    }

    public void setUd_id(int ud_id) {
        this.ud_id = ud_id;
    }
    
    
}
