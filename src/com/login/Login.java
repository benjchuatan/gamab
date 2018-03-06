package com.login;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		LoginDao dao = new LoginDao();
		
		
		
		
		try {
			if(dao.check(uname, pass)) {
				
				HttpSession session = request.getSession();
				session.setAttribute("username", uname);
				response.sendRedirect("userprof.jsp");
			}
			else {
				response.sendRedirect("Home.jsp");
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
