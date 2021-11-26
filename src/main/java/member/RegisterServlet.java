package member;

import java.io.IOException;

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
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1;
	public memberDAO registerDao;
	public void init() {
		registerDao = new memberDAO();
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String username = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass");
		String repassword = request.getParameter("repass");
		switch (registerDao.checkemail(email) * registerDao.checkpass(password) * registerDao.checkuser(username)) {
		case 1:
			if (registerDao.checkrepass(password, repassword) == 1) {
				memberBean registerBean = new memberBean();
				registerBean.register(username, email, password);
				try {
					registerDao.addUser(registerBean);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					System.out.println("Error: " + e.toString());
				}
				HttpSession session = request.getSession();
				session.setAttribute("email", email);
				session.setAttribute("password", password);
				response.sendRedirect("login.jsp");
			} else {
				request.setAttribute("error", "Password and RePassword must same.");
			}
			break;
		case 0:
			if (registerDao.checkemail(email) == 0) {
				request.setAttribute("error", "Email must between 5 and 50 characters.");
			} else if (registerDao.checkpass(password) == 0)
				request.setAttribute("error", "Password must between 8 and 30 characters.");
			else
				request.setAttribute("error", "Username must between 3 and 30 characters.");
		}
	}
}