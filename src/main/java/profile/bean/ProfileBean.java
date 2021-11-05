package profile.bean;

import java.io.Serializable;

/**
 * JavaBean class used in jsp action tags.
 * @author Ramesh Fadatare
 */
public class ProfileBean implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1 ;    
    private String fname;
    private String lname;
    private String email;
    private String phone;
    private String des;
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getFname() {
        return fname;
    }
    public void setFname(String fname) {
        this.fname = fname;
    }
    public String getLname() {
        return lname;
    }
    public void setLname(String lname) {
        this.lname = lname;
    }
    public String getPhone() {
        return phone;
    }
    public void setPhone(String phone) {
        this.phone = phone;
    }
    public String getDes() {
        return des;
    }
    public void setDes(String des) {
        this.des = des;
    }
}