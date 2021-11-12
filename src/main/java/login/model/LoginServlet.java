package login.model;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import login.bean.LoginBean;
import login.database.LoginDao;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1 ;
    private LoginDao loginDao;

    public void init() {
        loginDao = new LoginDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        LoginBean loginBean = new LoginBean();
        loginBean.setEmail(email);
        loginBean.setPassword(password);

        try {
            if (loginDao.loginUser(loginBean)) {
                HttpSession session = request.getSession();
                session.setAttribute("email",email);
                response.sendRedirect("view.jsp");
            } else {
                HttpSession session = request.getSession();
<<<<<<< HEAD
                session.setAttribute("email",email);
                response.sendRedirect("login.jsp");
=======
                //session.setAttribute("user", username);
                //response.sendRedirect("login.jsp");
>>>>>>> 388536d6c35f50c465fae03d50075404b6539f35
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }
}