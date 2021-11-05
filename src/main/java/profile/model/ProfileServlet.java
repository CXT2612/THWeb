package profile.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import profile.database.*;
import profile.bean.*;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private ProfileDao profileDao;

    public void init() {
    	profileDao = new ProfileDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    	String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phone = request.getParameter("phone");
        String des = request.getParameter("des");

        ProfileBean profileBean = new ProfileBean();
        profileBean.setFname(fname);
        profileBean.setLname(lname);
        profileBean.setPhone(phone);
        profileBean.setDes(des);
        

        try {
        	profileDao.profileUser(profileBean);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        
    }
}