package com.aion.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.UserBean;
import com.aion.services.AdminService;

/**
 * Servlet implementation class UserAdminServlet
 */
@WebServlet("/UserAdminServlet")
public class UserAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserAdminServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		AdminService adminser = new AdminService();
		UserBean u = new UserBean();
		u.setPassword(request.getParameter(UserBean.PASSWORD));
		u.setUsername(request.getParameter(UserBean.USERNAME));
		u.setPrevilege(Integer.parseInt(request.getParameter(UserBean.PRIVILEGE)));
		adminser.addUsers(u);
		
		request.getRequestDispatcher("userManager.jsp").forward(request,response);
		
	}

}
