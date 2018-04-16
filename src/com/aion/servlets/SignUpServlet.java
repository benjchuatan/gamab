package com.aion.servlets;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.ProfileBean;
import com.aion.javabean.UserBean;
import com.aion.services.ProfileService;

/**
 * Servlet implementation class addUsers
 */
@WebServlet("/addUsers")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProfileService profserv = new ProfileService();
		UserBean u = new UserBean();
		ProfileBean p = new ProfileBean();
		
		
		u.setPassword(request.getParameter(UserBean.PASSWORD));
		//u.setPrevilege(4);
		u.setUsername(request.getParameter(UserBean.USERNAME));
		p.setBilling_add(request.getParameter(ProfileBean.BIL_AD));
		p.setEmail(request.getParameter(ProfileBean.EMAIL));
		p.setShipping_add(request.getParameter(ProfileBean.SHI_AD));
		p.setFirst_name(request.getParameter(ProfileBean.FIRSTNAME));
		p.setLast_name(request.getParameter(ProfileBean.LASTNAME));
		profserv.addUsers(p, u);
		
		
		
		
		request.getRequestDispatcher("Home.jsp").forward(request,response);
		
	}	

}
