package member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private memberDAO profileDao;
    public void init() {
    	profileDao = new memberDAO();
    }
@Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
		HttpSession session = request.getSession();
    	String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String phone = request.getParameter("phone");
        String des = request.getParameter("des");
        switch(profileDao.checkfname(fname) * profileDao.checklname(lname) * profileDao.checkphone(phone)) {
		case 1:
        memberBean profileBean = new memberBean();
        profileBean.setFname(fname);
        profileBean.setLname(lname);
        profileBean.setPhone(phone);
        profileBean.setDes(des);
        try {
        	if (profileDao.editUser(profileBean)==1) 
    		{
    			memberBean u = profileDao.getUser();
    			if (u != null) {
    				session.setAttribute("user", u); 
    				request.setAttribute("update", "Update profile successfully");
    			}
    		} else {
    			request.setAttribute("error", "Update profile failed");
    			RequestDispatcher rd = request.getRequestDispatcher("/editprogile.jsp");
    			rd.forward(request, response);
    		}
        	profileDao.editUser(profileBean);
        } catch (Exception e) {
            // TODO Auto-generated catch block
        	System.out.println("Error: " + e.toString());
        }    
        break;
		case 0:
			if(profileDao.checkfname(fname)==0)
			{
				request.setAttribute("error", "FirstName must between 3 and 30 characters.");
			}
			else if(profileDao.checklname(lname)==0)
				request.setAttribute("error", "Lastname must between 3 and 30 characters.");
			else
				request.setAttribute("error", "Phone must between 9 and 13 characters.");
        }
    }

}