package register.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import register.database.*;
import register.bean.*;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private RegisterDao registerDao;

    public void init() {
        registerDao = new RegisterDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        RegisterBean registerBean = new RegisterBean();
        registerBean.setEmail(email);
        registerBean.setUsername(username);
        registerBean.setPassword(password);
        

        try {
        	registerDao.registerUser(registerBean);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
    }
}