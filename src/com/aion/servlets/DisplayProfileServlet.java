package com.aion.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.services.ProfileService;
import com.aion.javabean.ProfileBean;;

/**
 * Servlet implementation class DisplayProfileServlet
 */
@WebServlet("/DisplayProfileServlet")
public class DisplayProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayProfileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		ProfileService profserv = new ProfileService();
		ArrayList<ProfileBean> profiles = profserv.getSelectedUser(uname);
		System.out.println("wtf");
		request.setAttribute("profile", profiles);
		request.getRequestDispatcher("userprof.jsp").forward(request, response);
	}

}
