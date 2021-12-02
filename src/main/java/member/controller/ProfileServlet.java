package member.controller;

import member.bean.*;
import member.dao.*;

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

@WebServlet(urlPatterns = { "/profile" })
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1;
	public memberDAO profileDao;

	public void init() {
		profileDao = new memberDAO();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		String des = request.getParameter("des");
		switch (profileDao.checkfname(fname) * profileDao.checklname(lname) * profileDao.checkphone(phone)) {
		case 1:
			memberBean profileBean = new memberBean();
			profileBean.setFname(fname);
			profileBean.setLname(lname);
			profileBean.setPhone(phone);
			profileBean.setDes(des);
			try {
				if (profileDao.editUser(profileBean) == 1) {
					memberBean u = profileDao.getUser();	
					session.setAttribute("fname", u.getFname());
					session.setAttribute("lname", u.getLname());
					session.setAttribute("phone", u.getPhone());
					session.setAttribute("des", u.getDes());
					session.setAttribute("email", u.getEmail());
					request.setAttribute("update", "Update profile successfully");
					RequestDispatcher rd = request.getRequestDispatcher("editprogile.jsp");
					rd.forward(request, response);
				} else {
					request.setAttribute("error", "Update profile failed");
					RequestDispatcher rd = request.getRequestDispatcher("editprogile.jsp");
					rd.forward(request, response);
				}
				profileDao.editUser(profileBean);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				System.out.println("Error: " + e.toString());
			}
			break;
		case 0:
			if (profileDao.checkfname(fname) == 0) {
				request.setAttribute("error", "FirstName must be between 3 and 30 characters.");
			} else if (profileDao.checklname(lname) == 0)
				request.setAttribute("error", "Lastname must be between 3 and 30 characters.");
			else
				request.setAttribute("error", "Phone must be between 9 and 13 characters.");
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doGet(request, response);
	}
}