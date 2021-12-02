package member.controller;

import member.bean.*;
import member.dao.*;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import javax.servlet.RequestDispatcher;

/**
 * @email Ramesh Fadatare
 */
@WebServlet(urlPatterns = { "/login" })
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1;
	public memberDAO loginDao;

	@Override
	public void init() {
		loginDao = new memberDAO();
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		String Email = request.getParameter("email");
		String Password = request.getParameter("pass");
		switch (loginDao.checkemail(Email) * loginDao.checkpass(Password)) {
		case 1:
			try {
				if (loginDao.loginUser(Email, Password)) {
					memberBean u = loginDao.getUser();
					// session.setAttribute("user", u);
					session.setAttribute("email", u.getEmail());
					if (request.getParameter("remember") != null) {
						String remember = request.getParameter("remember");
						System.out.println("remember : " + remember);
						Cookie cUserName = new Cookie("cookuser", Email);
						Cookie cPassword = new Cookie("cookpass", Password);
						Cookie cRemember = new Cookie("cookrem", remember.trim());
						cUserName.setMaxAge(60 * 60 * 24 * 15);// 15 days
						cPassword.setMaxAge(60 * 60 * 24 * 15);
						cRemember.setMaxAge(60 * 60 * 24 * 15);
						response.addCookie(cUserName);
						response.addCookie(cPassword);
						response.addCookie(cRemember);
						if (u.getPhone() == null) {
							response.sendRedirect("editprofile.jsp");
							RequestDispatcher rd = request.getRequestDispatcher("editProfile.jsp");
							rd.forward(request, response);
						} else {
							RequestDispatcher rd = request.getRequestDispatcher("addContent.jsp");
							rd.forward(request, response);
						}
					} else {
						request.setAttribute("error", "Unknown user. Please try again.");
						RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
						rd.forward(request, response);
					}
				}
			} catch (Exception e) {
				System.out.println("Error: " + e.toString());
			}
			break;
		case 0:
			if (loginDao.checkemail(Email) == 0) {
				request.setAttribute("error", "Email must be between 5 and 50 characters.");
			} else
				request.setAttribute("error", "Password must be between 8 and 30 characters.");
		}
	}
}
