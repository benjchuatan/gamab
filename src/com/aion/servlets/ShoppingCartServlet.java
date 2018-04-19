package com.aion.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.aion.javabean.CartBean;
import com.aion.services.CartService;

/**
 * Servlet implementation class ShoppingCartServlet
 */
@WebServlet("/ShoppingCartServlet")
public class ShoppingCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartBean u = new CartBean();
		CartService carserv = new CartService();
		HttpSession session = request.getSession();
		
      
        	u.setIdproducts(Integer.parseInt(request.getParameter("idproduct")));
    		
    		u.setIduser((Integer)request.getSession().getAttribute("iduser"));
    		carserv.addcart(u);
    		session.setAttribute("cartnum",carserv.getNum((Integer)request.getSession().getAttribute("iduser")));
    		//request.getRequestDispatcher("Home.jsp").forward(request, response);
    		response.sendRedirect("Home.jsp");
                //go ahead and process ... do business logic here



                //DO NOT PROCESS ... this is to be considered a CSRF attack - handle appropriately
        
		//session.setAttribute("iduser", dao.getiduser(uname));
		
		
	}

}
