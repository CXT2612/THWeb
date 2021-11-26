package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.RequestDispatcher;





/**
 * @email Ramesh Fadatare
 */
@WebServlet(name = "login" ,urlPatterns = "/login")
	public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    public memberDAO loginDao;
    public void init() 
    {
        loginDao = new memberDAO();
    }
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {   	
	request.getRequestDispatcher("/login.jsp").forward(request, response);
    }
@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
    	HttpSession session = request.getSession();
    	
    		String Email = request.getParameter("email");
    		String Password = request.getParameter("pass");
    		switch(loginDao.checkemail(Email) * loginDao.checkpass(Password)) {
    		case 1: 
    			try {
    			if (loginDao.loginUser(Email, Password)) 
        		{
        			memberBean u = loginDao.getUser();
        			if (u != null) {
        				session.setAttribute("user", u);
        				response.sendRedirect("/editprofile.jsp");
        				response.sendRedirect("/header.jsp");
        			}
        		} else {
        			request.setAttribute("error", "Unknown user. Please try again.");
        			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
        			rd.forward(request, response);
        		}
        	} catch (Exception e) {
        		System.out.println("Error: " + e.toString());
        	}
    			break;
    		case 0:
    			if(loginDao.checkemail(Email)==0)
    			{
    				request.setAttribute("error", "Email must between 5 and 50 characters.");
    			}
    			else
    				request.setAttribute("error", "Password must between 8 and 30 characters.");
    		}
	}
}