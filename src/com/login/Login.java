package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aion.javabean.UserBean;
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
		String fulln = request.getParameter("fullname");
		UserBean u = new UserBean();
		LoginDao dao = new LoginDao();
		
		
		
		PrintWriter out = response.getWriter();
		
		
		try {
			if(dao.check(uname, pass)) {
				HttpSession session = request.getSession();
				
				if(dao.checkadmin(uname)==1) {
					session.setAttribute("isadmin", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("userManager.jsp");
				}else if(dao.checkadmin(uname)==2) {
					session.setAttribute("isproductmanager", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("AdminServlet");

				}else if(dao.checkadmin(uname)==3) {
					session.setAttribute("isaccountingmanager", uname);
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					response.sendRedirect("acctingmanager.jsp");
					
				}else {
					session.setAttribute("username", uname);
					session.setAttribute("iduser", dao.getiduser(uname));
					System.out.println("futa: "+dao.getiduser(uname));
					System.out.println("username: "+uname);
					response.sendRedirect("Home.jsp");
				}
				
				
			}
			else {
				 out.println("<script type=\"text/javascript\">");
				 out.println("alert('User or password incorrect');");
				 out.println("location='Home.jsp';");
				 out.println("</script>");
				//response.sendRedirect("Home.jsp");
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}

}
