package com.aion.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aion.javabean.ProfileBean;
import com.aion.javabean.TransBean;
import com.aion.services.ProfileService;

/**
 * Servlet implementation class DisplayTransactionServlet
 */
@WebServlet("/DisplayTransactionServlet")
public class DisplayTransactionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DisplayTransactionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id =(Integer)request.getSession().getAttribute("iduser");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = (String) request.getSession().getAttribute("username");
		System.out.println("benj" + uname);
		int f = (int) request.getSession().getAttribute("iduser");
		System.out.println("wakaka: "+ f);
		ProfileService profserv = new ProfileService();
		ArrayList<ProfileBean> profiles = profserv.getSelectedUser(uname);
		ArrayList<TransBean> trans = profserv.getUserTrans(uname);
		
		//System.out.println(profiles);
		request.setAttribute("profile", profiles);
		request.setAttribute("transaction",trans);
		request.getRequestDispatcher("userprof.jsp").forward(request, response);

	}

}
