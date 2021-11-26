package member;
import java.io.Serializable;

public class memberBean implements Serializable{
	private static final long serialVersionUID = 1 ;
    private String email;
    private String username;
    private String password;
    private String fname;
    private String lname;
    private String phone;
    private String des;
    private int ID;
    private int LV;
    public int getLV() {
        return LV;
    }public void setLV(int lv) {
        this.LV = lv;
    }
	public int getId() {
        return ID;
    }public void setId(int id) {
        this.ID = id;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
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
    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public memberBean()
    {
    	
    }
    public void login(String email, String password)
    {
    	this.email = email;
    	this.password = password;
    }
    public void profile(String fname, String lname, String phone,String des)
    {
    	this.fname = fname;
    	this.lname = lname;
    	this.des = des;
    	this.phone = phone;
    }
    public void register(String username, String email, String password)
    {
    	this.email = email;
    	this.password = password;
    	this.username = username;
    }
}
